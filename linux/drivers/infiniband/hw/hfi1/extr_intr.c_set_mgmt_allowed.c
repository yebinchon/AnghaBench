
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_pportdata {scalar_t__ neighbor_type; int mgmt_allowed; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int GENERAL_CONFIG ;
 int MGMT_ALLOWED_MASK ;
 int MGMT_ALLOWED_SHIFT ;
 scalar_t__ NEIGHBOR_TYPE_HFI ;
 int REMOTE_LNI_INFO ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

__attribute__((used)) static void set_mgmt_allowed(struct hfi1_pportdata *ppd)
{
 u32 frame;
 struct hfi1_devdata *dd = ppd->dd;

 if (ppd->neighbor_type == NEIGHBOR_TYPE_HFI) {
  ppd->mgmt_allowed = 1;
 } else {
  read_8051_config(dd, REMOTE_LNI_INFO, GENERAL_CONFIG, &frame);
  ppd->mgmt_allowed = (frame >> MGMT_ALLOWED_SHIFT)
  & MGMT_ALLOWED_MASK;
 }
}
