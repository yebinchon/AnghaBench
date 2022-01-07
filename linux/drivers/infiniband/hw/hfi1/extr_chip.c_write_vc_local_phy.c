
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int CONTINIOUS_REMOTE_UPDATE_SUPPORT_SHIFT ;
 int GENERAL_CONFIG ;
 int POWER_MANAGEMENT_SHIFT ;
 int VERIFY_CAP_LOCAL_PHY ;
 int load_8051_config (struct hfi1_devdata*,int ,int ,int) ;

__attribute__((used)) static int write_vc_local_phy(struct hfi1_devdata *dd, u8 power_management,
         u8 continuous)
{
 u32 frame;

 frame = continuous << CONTINIOUS_REMOTE_UPDATE_SUPPORT_SHIFT
  | power_management << POWER_MANAGEMENT_SHIFT;
 return load_8051_config(dd, VERIFY_CAP_LOCAL_PHY,
    GENERAL_CONFIG, frame);
}
