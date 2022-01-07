
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_pportdata {int dummy; } ;


 int HFI1_IB_CFG_LWID_ENB ;
 int hfi1_set_ib_cfg (struct hfi1_pportdata*,int ,int ) ;

__attribute__((used)) static void set_link_width_enabled(struct hfi1_pportdata *ppd, u32 w)
{
 (void)hfi1_set_ib_cfg(ppd, HFI1_IB_CFG_LWID_ENB, w);
}
