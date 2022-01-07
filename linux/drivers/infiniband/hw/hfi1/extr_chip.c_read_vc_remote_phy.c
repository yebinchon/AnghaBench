
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int CONTINIOUS_REMOTE_UPDATE_SUPPORT_MASK ;
 int CONTINIOUS_REMOTE_UPDATE_SUPPORT_SHIFT ;
 int GENERAL_CONFIG ;
 int POWER_MANAGEMENT_MASK ;
 int POWER_MANAGEMENT_SHIFT ;
 int VERIFY_CAP_REMOTE_PHY ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

__attribute__((used)) static void read_vc_remote_phy(struct hfi1_devdata *dd, u8 *power_management,
          u8 *continuous)
{
 u32 frame;

 read_8051_config(dd, VERIFY_CAP_REMOTE_PHY, GENERAL_CONFIG, &frame);
 *power_management = (frame >> POWER_MANAGEMENT_SHIFT)
     & POWER_MANAGEMENT_MASK;
 *continuous = (frame >> CONTINIOUS_REMOTE_UPDATE_SUPPORT_SHIFT)
     & CONTINIOUS_REMOTE_UPDATE_SUPPORT_MASK;
}
