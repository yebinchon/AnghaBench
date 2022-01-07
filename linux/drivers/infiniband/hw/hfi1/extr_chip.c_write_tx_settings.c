
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int ENABLE_LANE_TX_SHIFT ;
 int GENERAL_CONFIG ;
 int MAX_RATE_SHIFT ;
 int RX_POLARITY_INVERSION_SHIFT ;
 int TX_POLARITY_INVERSION_SHIFT ;
 int TX_SETTINGS ;
 int load_8051_config (struct hfi1_devdata*,int ,int ,int) ;

__attribute__((used)) static int write_tx_settings(struct hfi1_devdata *dd,
        u8 enable_lane_tx,
        u8 tx_polarity_inversion,
        u8 rx_polarity_inversion,
        u8 max_rate)
{
 u32 frame;


 frame = enable_lane_tx << ENABLE_LANE_TX_SHIFT
  | tx_polarity_inversion << TX_POLARITY_INVERSION_SHIFT
  | rx_polarity_inversion << RX_POLARITY_INVERSION_SHIFT
  | max_rate << MAX_RATE_SHIFT;
 return load_8051_config(dd, TX_SETTINGS, GENERAL_CONFIG, frame);
}
