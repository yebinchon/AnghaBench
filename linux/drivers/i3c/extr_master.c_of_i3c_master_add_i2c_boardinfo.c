
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int i2c; } ;
struct device {int dummy; } ;
struct i3c_master_controller {TYPE_1__ boardinfo; struct device dev; } ;
struct TYPE_4__ {int flags; } ;
struct i2c_dev_boardinfo {int node; int lvr; TYPE_2__ base; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int I2C_CLIENT_TEN ;
 int dev_err (struct device*,char*) ;
 struct i2c_dev_boardinfo* devm_kzalloc (struct device*,int,int ) ;
 int list_add_tail (int *,int *) ;
 int of_i2c_get_board_info (struct device*,struct device_node*,TYPE_2__*) ;
 int of_node_get (struct device_node*) ;

__attribute__((used)) static int
of_i3c_master_add_i2c_boardinfo(struct i3c_master_controller *master,
    struct device_node *node, u32 *reg)
{
 struct i2c_dev_boardinfo *boardinfo;
 struct device *dev = &master->dev;
 int ret;

 boardinfo = devm_kzalloc(dev, sizeof(*boardinfo), GFP_KERNEL);
 if (!boardinfo)
  return -ENOMEM;

 ret = of_i2c_get_board_info(dev, node, &boardinfo->base);
 if (ret)
  return ret;






 if (boardinfo->base.flags & I2C_CLIENT_TEN) {
  dev_err(&master->dev, "I2C device with 10 bit address not supported.");
  return -ENOTSUPP;
 }


 boardinfo->lvr = reg[2];

 list_add_tail(&boardinfo->node, &master->boardinfo.i2c);
 of_node_get(node);

 return 0;
}
