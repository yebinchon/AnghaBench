
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * bus; int * type; struct TYPE_10__* parent; } ;
struct TYPE_9__ {int function_number; } ;
struct rmi_function {TYPE_2__ dev; TYPE_1__ fd; struct rmi_device* rmi_dev; } ;
struct rmi_device {TYPE_2__ dev; } ;


 int RMI_DEBUG_CORE ;
 int dev_err (TYPE_2__*,char*,int ) ;
 int dev_name (TYPE_2__*) ;
 int dev_set_name (TYPE_2__*,char*,int ,int ) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 int put_device (TYPE_2__*) ;
 int rmi_bus_type ;
 int rmi_dbg (int ,TYPE_2__*,char*,int ) ;
 int rmi_function_type ;

int rmi_register_function(struct rmi_function *fn)
{
 struct rmi_device *rmi_dev = fn->rmi_dev;
 int error;

 device_initialize(&fn->dev);

 dev_set_name(&fn->dev, "%s.fn%02x",
       dev_name(&rmi_dev->dev), fn->fd.function_number);

 fn->dev.parent = &rmi_dev->dev;
 fn->dev.type = &rmi_function_type;
 fn->dev.bus = &rmi_bus_type;

 error = device_add(&fn->dev);
 if (error) {
  dev_err(&rmi_dev->dev,
   "Failed device_register function device %s\n",
   dev_name(&fn->dev));
  goto err_put_device;
 }

 rmi_dbg(RMI_DEBUG_CORE, &rmi_dev->dev, "Registered F%02X.\n",
   fn->fd.function_number);

 return 0;

err_put_device:
 put_device(&fn->dev);
 return error;
}
