
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77843_muic_info {int edev; int dev; } ;


 int EXTCON_DISP_MHL ;
 int EXTCON_DOCK ;
 int EXTCON_USB_HOST ;
 int MAX77843_MUIC_CONTROL1_SW_USB ;
 int dev_dbg (int ,char*,char*) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max77843_muic_set_path (struct max77843_muic_info*,int ,int,int) ;

__attribute__((used)) static int max77843_muic_dock_handler(struct max77843_muic_info *info,
  bool attached)
{
 int ret;

 dev_dbg(info->dev, "external connector is %s (adc: 0x10)\n",
   attached ? "attached" : "detached");

 ret = max77843_muic_set_path(info, MAX77843_MUIC_CONTROL1_SW_USB,
         attached, attached);
 if (ret < 0)
  return ret;

 extcon_set_state_sync(info->edev, EXTCON_DISP_MHL, attached);
 extcon_set_state_sync(info->edev, EXTCON_USB_HOST, attached);
 extcon_set_state_sync(info->edev, EXTCON_DOCK, attached);

 return 0;
}
