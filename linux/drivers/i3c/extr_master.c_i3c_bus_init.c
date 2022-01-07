
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i3c; int i2c; } ;
struct i3c_bus {int id; int mode; TYPE_1__ devs; int lock; } ;


 int GFP_KERNEL ;
 int I3C_BUS_MODE_PURE ;
 int INIT_LIST_HEAD (int *) ;
 int i3c_bus_idr ;
 int i3c_bus_init_addrslots (struct i3c_bus*) ;
 int i3c_core_lock ;
 int idr_alloc (int *,struct i3c_bus*,int ,int ,int ) ;
 int init_rwsem (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i3c_bus_init(struct i3c_bus *i3cbus)
{
 int ret;

 init_rwsem(&i3cbus->lock);
 INIT_LIST_HEAD(&i3cbus->devs.i2c);
 INIT_LIST_HEAD(&i3cbus->devs.i3c);
 i3c_bus_init_addrslots(i3cbus);
 i3cbus->mode = I3C_BUS_MODE_PURE;

 mutex_lock(&i3c_core_lock);
 ret = idr_alloc(&i3c_bus_idr, i3cbus, 0, 0, GFP_KERNEL);
 mutex_unlock(&i3c_core_lock);

 if (ret < 0)
  return ret;

 i3cbus->id = ret;

 return 0;
}
