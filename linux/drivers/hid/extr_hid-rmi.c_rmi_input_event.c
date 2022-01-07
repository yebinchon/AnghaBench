
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rmi_device {int dummy; } ;
struct TYPE_2__ {struct rmi_device* rmi_dev; } ;
struct rmi_data {int rmi_irq; int flags; TYPE_1__ xport; } ;
struct hid_device {int dummy; } ;


 int RMI_STARTED ;
 int generic_handle_irq (int ) ;
 struct rmi_data* hid_get_drvdata (struct hid_device*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rmi_set_attn_data (struct rmi_device*,int ,int *,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int rmi_input_event(struct hid_device *hdev, u8 *data, int size)
{
 struct rmi_data *hdata = hid_get_drvdata(hdev);
 struct rmi_device *rmi_dev = hdata->xport.rmi_dev;
 unsigned long flags;

 if (!(test_bit(RMI_STARTED, &hdata->flags)))
  return 0;

 local_irq_save(flags);

 rmi_set_attn_data(rmi_dev, data[1], &data[2], size - 2);

 generic_handle_irq(hdata->rmi_irq);

 local_irq_restore(flags);

 return 1;
}
