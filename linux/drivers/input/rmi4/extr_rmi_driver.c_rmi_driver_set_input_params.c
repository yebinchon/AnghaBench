
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_device {int dummy; } ;
struct TYPE_2__ {int bustype; int vendor; } ;
struct input_dev {TYPE_1__ id; int name; } ;


 int BUS_RMI ;
 int SYNAPTICS_INPUT_DEVICE_NAME ;
 int SYNAPTICS_VENDOR_ID ;

__attribute__((used)) static int rmi_driver_set_input_params(struct rmi_device *rmi_dev,
    struct input_dev *input)
{
 input->name = SYNAPTICS_INPUT_DEVICE_NAME;
 input->id.vendor = SYNAPTICS_VENDOR_ID;
 input->id.bustype = BUS_RMI;
 return 0;
}
