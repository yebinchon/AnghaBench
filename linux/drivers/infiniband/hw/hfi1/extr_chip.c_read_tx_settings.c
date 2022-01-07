
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int ENABLE_LANE_TX_MASK ;
 int ENABLE_LANE_TX_SHIFT ;
 int GENERAL_CONFIG ;
 int MAX_RATE_MASK ;
 int MAX_RATE_SHIFT ;
 int RX_POLARITY_INVERSION_MASK ;
 int RX_POLARITY_INVERSION_SHIFT ;
 int TX_POLARITY_INVERSION_MASK ;
 int TX_POLARITY_INVERSION_SHIFT ;
 int TX_SETTINGS ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

__attribute__((used)) static int read_tx_settings(struct hfi1_devdata *dd,
       u8 *enable_lane_tx,
       u8 *tx_polarity_inversion,
       u8 *rx_polarity_inversion,
       u8 *max_rate)
{
 u32 frame;
 int ret;

 ret = read_8051_config(dd, TX_SETTINGS, GENERAL_CONFIG, &frame);
 *enable_lane_tx = (frame >> ENABLE_LANE_TX_SHIFT)
    & ENABLE_LANE_TX_MASK;
 *tx_polarity_inversion = (frame >> TX_POLARITY_INVERSION_SHIFT)
    & TX_POLARITY_INVERSION_MASK;
 *rx_polarity_inversion = (frame >> RX_POLARITY_INVERSION_SHIFT)
    & RX_POLARITY_INVERSION_MASK;
 *max_rate = (frame >> MAX_RATE_SHIFT) & MAX_RATE_MASK;
 return ret;
}
