
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ipu_soc {struct device* dev; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct ipu_platform_reg {TYPE_2__ pdata; int name; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 unsigned int ARRAY_SIZE (struct ipu_platform_reg*) ;
 int ENOMEM ;
 struct ipu_platform_reg* client_reg ;
 int dev_info (struct device*,char*,unsigned int,int ,char*,unsigned int) ;
 unsigned int ipu_client_id ;
 int ipu_client_id_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct device_node* of_graph_get_port_by_id (int ,unsigned int) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,TYPE_2__*,int) ;
 struct platform_device* platform_device_alloc (int ,int ) ;
 int platform_device_put (struct platform_device*) ;
 int platform_device_unregister_children (int ) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int ipu_add_client_devices(struct ipu_soc *ipu, unsigned long ipu_base)
{
 struct device *dev = ipu->dev;
 unsigned i;
 int id, ret;

 mutex_lock(&ipu_client_id_mutex);
 id = ipu_client_id;
 ipu_client_id += ARRAY_SIZE(client_reg);
 mutex_unlock(&ipu_client_id_mutex);

 for (i = 0; i < ARRAY_SIZE(client_reg); i++) {
  struct ipu_platform_reg *reg = &client_reg[i];
  struct platform_device *pdev;
  struct device_node *of_node;


  of_node = of_graph_get_port_by_id(dev->of_node, i);
  if (!of_node) {
   dev_info(dev,
     "no port@%d node in %pOF, not using %s%d\n",
     i, dev->of_node,
     (i / 2) ? "DI" : "CSI", i % 2);
   continue;
  }

  pdev = platform_device_alloc(reg->name, id++);
  if (!pdev) {
   ret = -ENOMEM;
   goto err_register;
  }

  pdev->dev.parent = dev;

  reg->pdata.of_node = of_node;
  ret = platform_device_add_data(pdev, &reg->pdata,
            sizeof(reg->pdata));
  if (!ret)
   ret = platform_device_add(pdev);
  if (ret) {
   platform_device_put(pdev);
   goto err_register;
  }
 }

 return 0;

err_register:
 platform_device_unregister_children(to_platform_device(dev));

 return ret;
}
