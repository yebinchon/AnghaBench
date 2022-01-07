
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int edev; } ;


 unsigned int EXTCON_CHG_USB_SDP ;
 unsigned int EXTCON_USB ;
 int extcon_set_state_sync (int ,unsigned int,int) ;

__attribute__((used)) static void cht_wc_extcon_set_state(struct cht_wc_extcon_data *ext,
        unsigned int cable, bool state)
{
 extcon_set_state_sync(ext->edev, cable, state);
 if (cable == EXTCON_CHG_USB_SDP)
  extcon_set_state_sync(ext->edev, EXTCON_USB, state);
}
