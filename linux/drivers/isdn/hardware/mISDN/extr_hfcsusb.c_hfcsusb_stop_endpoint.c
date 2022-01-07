
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hfcsusb {scalar_t__ cfg_used; TYPE_1__* fifos; } ;
struct TYPE_3__ {int active; } ;


 scalar_t__ CNF_3INT3ISO ;
 scalar_t__ CNF_3ISO3ISO ;
 scalar_t__ CNF_4INT3ISO ;
 scalar_t__ CNF_4ISO3ISO ;
 size_t HFCUSB_B1_RX ;
 size_t HFCUSB_B2_RX ;
 size_t HFCUSB_D_RX ;
 size_t HFCUSB_PCM_RX ;
 int HFC_CHAN_B1 ;
 int HFC_CHAN_B2 ;
 int HFC_CHAN_D ;
 int HFC_CHAN_E ;
 int stop_int_gracefull (TYPE_1__*) ;
 int stop_iso_gracefull (TYPE_1__*) ;

__attribute__((used)) static void
hfcsusb_stop_endpoint(struct hfcsusb *hw, int channel)
{

 if ((channel == HFC_CHAN_D) && (!hw->fifos[HFCUSB_D_RX].active))
  return;
 if ((channel == HFC_CHAN_B1) && (!hw->fifos[HFCUSB_B1_RX].active))
  return;
 if ((channel == HFC_CHAN_B2) && (!hw->fifos[HFCUSB_B2_RX].active))
  return;
 if ((channel == HFC_CHAN_E) && (!hw->fifos[HFCUSB_PCM_RX].active))
  return;


 if (hw->cfg_used == CNF_3INT3ISO || hw->cfg_used == CNF_4INT3ISO)
  stop_int_gracefull(hw->fifos + channel * 2 + 1);


 if (hw->cfg_used == CNF_3ISO3ISO || hw->cfg_used == CNF_4ISO3ISO)
  stop_iso_gracefull(hw->fifos + channel * 2 + 1);


 if (channel != HFC_CHAN_E)
  stop_iso_gracefull(hw->fifos + channel * 2);
}
