
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_3__ {int release; int of_node; int * parent; } ;
struct TYPE_4__ {int n_links; TYPE_1__ dev; int link_config; int link_enable; int send_break; int term; int write; int read; int flags; } ;
struct fsi_master_gpio {TYPE_2__ master; int cmd_lock; int t_echo_delay; int t_send_delay; int no_delays; struct gpio_desc* gpio_mux; struct gpio_desc* gpio_enable; struct gpio_desc* gpio_trans; struct gpio_desc* gpio_data; struct gpio_desc* gpio_clk; int last_addr; int * dev; } ;


 int ENOMEM ;
 int FSI_ECHO_DELAY_CLOCKS ;
 int FSI_MASTER_FLAG_SWCLOCK ;
 int FSI_SEND_DELAY_CLOCKS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int LAST_ADDR_INVALID ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_attr_external_mode ;
 int dev_err (int *,char*) ;
 int dev_of_node (int *) ;
 int device_create_file (int *,int *) ;
 int device_property_present (int *,char*) ;
 int device_remove_file (int *,int *) ;
 struct gpio_desc* devm_gpiod_get (int *,char*,int ) ;
 struct gpio_desc* devm_gpiod_get_optional (int *,char*,int ) ;
 int fsi_master_gpio_break ;
 int fsi_master_gpio_init (struct fsi_master_gpio*) ;
 int fsi_master_gpio_link_config ;
 int fsi_master_gpio_link_enable ;
 int fsi_master_gpio_read ;
 int fsi_master_gpio_release ;
 int fsi_master_gpio_term ;
 int fsi_master_gpio_write ;
 int fsi_master_register (TYPE_2__*) ;
 int kfree (struct fsi_master_gpio*) ;
 struct fsi_master_gpio* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int of_node_get (int ) ;
 int platform_set_drvdata (struct platform_device*,struct fsi_master_gpio*) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int fsi_master_gpio_probe(struct platform_device *pdev)
{
 struct fsi_master_gpio *master;
 struct gpio_desc *gpio;
 int rc;

 master = kzalloc(sizeof(*master), GFP_KERNEL);
 if (!master)
  return -ENOMEM;

 master->dev = &pdev->dev;
 master->master.dev.parent = master->dev;
 master->master.dev.of_node = of_node_get(dev_of_node(master->dev));
 master->master.dev.release = fsi_master_gpio_release;
 master->last_addr = LAST_ADDR_INVALID;

 gpio = devm_gpiod_get(&pdev->dev, "clock", 0);
 if (IS_ERR(gpio)) {
  dev_err(&pdev->dev, "failed to get clock gpio\n");
  rc = PTR_ERR(gpio);
  goto err_free;
 }
 master->gpio_clk = gpio;

 gpio = devm_gpiod_get(&pdev->dev, "data", 0);
 if (IS_ERR(gpio)) {
  dev_err(&pdev->dev, "failed to get data gpio\n");
  rc = PTR_ERR(gpio);
  goto err_free;
 }
 master->gpio_data = gpio;


 gpio = devm_gpiod_get_optional(&pdev->dev, "trans", 0);
 if (IS_ERR(gpio)) {
  dev_err(&pdev->dev, "failed to get trans gpio\n");
  rc = PTR_ERR(gpio);
  goto err_free;
 }
 master->gpio_trans = gpio;

 gpio = devm_gpiod_get_optional(&pdev->dev, "enable", 0);
 if (IS_ERR(gpio)) {
  dev_err(&pdev->dev, "failed to get enable gpio\n");
  rc = PTR_ERR(gpio);
  goto err_free;
 }
 master->gpio_enable = gpio;

 gpio = devm_gpiod_get_optional(&pdev->dev, "mux", 0);
 if (IS_ERR(gpio)) {
  dev_err(&pdev->dev, "failed to get mux gpio\n");
  rc = PTR_ERR(gpio);
  goto err_free;
 }
 master->gpio_mux = gpio;






 master->no_delays = device_property_present(&pdev->dev, "no-gpio-delays");


 master->t_send_delay = FSI_SEND_DELAY_CLOCKS;
 master->t_echo_delay = FSI_ECHO_DELAY_CLOCKS;

 master->master.n_links = 1;
 master->master.flags = FSI_MASTER_FLAG_SWCLOCK;
 master->master.read = fsi_master_gpio_read;
 master->master.write = fsi_master_gpio_write;
 master->master.term = fsi_master_gpio_term;
 master->master.send_break = fsi_master_gpio_break;
 master->master.link_enable = fsi_master_gpio_link_enable;
 master->master.link_config = fsi_master_gpio_link_config;
 platform_set_drvdata(pdev, master);
 mutex_init(&master->cmd_lock);

 fsi_master_gpio_init(master);

 rc = device_create_file(&pdev->dev, &dev_attr_external_mode);
 if (rc)
  goto err_free;

 rc = fsi_master_register(&master->master);
 if (rc) {
  device_remove_file(&pdev->dev, &dev_attr_external_mode);
  put_device(&master->master.dev);
  return rc;
 }
 return 0;
 err_free:
 kfree(master);
 return rc;
}
