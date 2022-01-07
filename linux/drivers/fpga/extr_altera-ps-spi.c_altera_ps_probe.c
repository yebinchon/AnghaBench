
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;
struct fpga_manager {int dummy; } ;
struct altera_ps_conf {int mgr_name; void* confd; void* status; void* config; struct spi_device* spi; int data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int altera_ps_ops ;
 char* dev_driver_string (TYPE_1__*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 char* dev_name (TYPE_1__*) ;
 int dev_warn (TYPE_1__*,char*) ;
 struct fpga_manager* devm_fpga_mgr_create (TYPE_1__*,int ,int *,struct altera_ps_conf*) ;
 void* devm_gpiod_get (TYPE_1__*,char*,int ) ;
 void* devm_gpiod_get_optional (TYPE_1__*,char*,int ) ;
 struct altera_ps_conf* devm_kzalloc (TYPE_1__*,int,int ) ;
 int fpga_mgr_register (struct fpga_manager*) ;
 int id_to_data (int ) ;
 int of_ef_match ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct fpga_manager*) ;

__attribute__((used)) static int altera_ps_probe(struct spi_device *spi)
{
 struct altera_ps_conf *conf;
 const struct of_device_id *of_id;
 struct fpga_manager *mgr;

 conf = devm_kzalloc(&spi->dev, sizeof(*conf), GFP_KERNEL);
 if (!conf)
  return -ENOMEM;

 if (spi->dev.of_node) {
  of_id = of_match_device(of_ef_match, &spi->dev);
  if (!of_id)
   return -ENODEV;
  conf->data = of_id->data;
 } else {
  conf->data = id_to_data(spi_get_device_id(spi));
  if (!conf->data)
   return -ENODEV;
 }

 conf->spi = spi;
 conf->config = devm_gpiod_get(&spi->dev, "nconfig", GPIOD_OUT_LOW);
 if (IS_ERR(conf->config)) {
  dev_err(&spi->dev, "Failed to get config gpio: %ld\n",
   PTR_ERR(conf->config));
  return PTR_ERR(conf->config);
 }

 conf->status = devm_gpiod_get(&spi->dev, "nstat", GPIOD_IN);
 if (IS_ERR(conf->status)) {
  dev_err(&spi->dev, "Failed to get status gpio: %ld\n",
   PTR_ERR(conf->status));
  return PTR_ERR(conf->status);
 }

 conf->confd = devm_gpiod_get_optional(&spi->dev, "confd", GPIOD_IN);
 if (IS_ERR(conf->confd)) {
  dev_err(&spi->dev, "Failed to get confd gpio: %ld\n",
   PTR_ERR(conf->confd));
  return PTR_ERR(conf->confd);
 } else if (!conf->confd) {
  dev_warn(&spi->dev, "Not using confd gpio");
 }


 snprintf(conf->mgr_name, sizeof(conf->mgr_name), "%s %s",
   dev_driver_string(&spi->dev), dev_name(&spi->dev));

 mgr = devm_fpga_mgr_create(&spi->dev, conf->mgr_name,
       &altera_ps_ops, conf);
 if (!mgr)
  return -ENOMEM;

 spi_set_drvdata(spi, mgr);

 return fpga_mgr_register(mgr);
}
