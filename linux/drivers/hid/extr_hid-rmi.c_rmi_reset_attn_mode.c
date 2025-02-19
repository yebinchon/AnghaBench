
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rmi_device {TYPE_2__* driver; } ;
struct TYPE_3__ {struct rmi_device* rmi_dev; } ;
struct rmi_data {int flags; TYPE_1__ xport; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int (* reset_handler ) (struct rmi_device*) ;} ;


 int RMI_MODE_ATTN_REPORTS ;
 int RMI_STARTED ;
 struct rmi_data* hid_get_drvdata (struct hid_device*) ;
 int rmi_set_mode (struct hid_device*,int ) ;
 int stub1 (struct rmi_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rmi_reset_attn_mode(struct hid_device *hdev)
{
 struct rmi_data *data = hid_get_drvdata(hdev);
 struct rmi_device *rmi_dev = data->xport.rmi_dev;
 int ret;

 ret = rmi_set_mode(hdev, RMI_MODE_ATTN_REPORTS);
 if (ret)
  return ret;

 if (test_bit(RMI_STARTED, &data->flags))
  ret = rmi_dev->driver->reset_handler(rmi_dev);

 return ret;
}
