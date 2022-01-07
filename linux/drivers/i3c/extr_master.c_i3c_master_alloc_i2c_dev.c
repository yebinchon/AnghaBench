
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_master_controller {int dummy; } ;
struct TYPE_3__ {struct i3c_master_controller* master; } ;
struct i2c_dev_desc {int lvr; int addr; struct i2c_dev_boardinfo const* boardinfo; TYPE_1__ common; } ;
struct TYPE_4__ {int addr; } ;
struct i2c_dev_boardinfo {int lvr; TYPE_2__ base; } ;


 int ENOMEM ;
 struct i2c_dev_desc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct i2c_dev_desc* kzalloc (int,int ) ;

__attribute__((used)) static struct i2c_dev_desc *
i3c_master_alloc_i2c_dev(struct i3c_master_controller *master,
    const struct i2c_dev_boardinfo *boardinfo)
{
 struct i2c_dev_desc *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 dev->common.master = master;
 dev->boardinfo = boardinfo;
 dev->addr = boardinfo->base.addr;
 dev->lvr = boardinfo->lvr;

 return dev;
}
