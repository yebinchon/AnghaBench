
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rmi_driver_data {scalar_t__ num_tx_electrodes; scalar_t__ num_rx_electrodes; } ;
struct rmi_device {int dev; } ;
struct f54_data {int num_rx_electrodes; int num_tx_electrodes; int input; TYPE_1__* fn; } ;
struct TYPE_2__ {struct rmi_device* rmi_dev; } ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int rmi_f54_get_reptype (struct f54_data*,int ) ;

__attribute__((used)) static size_t rmi_f54_get_report_size(struct f54_data *f54)
{
 struct rmi_device *rmi_dev = f54->fn->rmi_dev;
 struct rmi_driver_data *drv_data = dev_get_drvdata(&rmi_dev->dev);
 u8 rx = drv_data->num_rx_electrodes ? : f54->num_rx_electrodes;
 u8 tx = drv_data->num_tx_electrodes ? : f54->num_tx_electrodes;
 size_t size;

 switch (rmi_f54_get_reptype(f54, f54->input)) {
 case 132:
  size = rx * tx;
  break;
 case 133:
 case 129:
 case 128:
 case 131:
 case 130:
  size = sizeof(u16) * rx * tx;
  break;
 default:
  size = 0;
 }

 return size;
}
