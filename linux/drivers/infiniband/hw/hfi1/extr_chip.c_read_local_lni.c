
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int ENABLE_LANE_RX_MASK ;
 int ENABLE_LANE_RX_SHIFT ;
 int GENERAL_CONFIG ;
 int LOCAL_LNI_INFO ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

__attribute__((used)) static void read_local_lni(struct hfi1_devdata *dd, u8 *enable_lane_rx)
{
 u32 frame;

 read_8051_config(dd, LOCAL_LNI_INFO, GENERAL_CONFIG, &frame);
 *enable_lane_rx = (frame >> ENABLE_LANE_RX_SHIFT) & ENABLE_LANE_RX_MASK;
}
