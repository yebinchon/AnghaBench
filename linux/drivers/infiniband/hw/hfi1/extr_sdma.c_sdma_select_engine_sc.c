
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int dummy; } ;


 int sc_to_vlt (struct hfi1_devdata*,int ) ;
 struct sdma_engine* sdma_select_engine_vl (struct hfi1_devdata*,int ,int ) ;

struct sdma_engine *sdma_select_engine_sc(
 struct hfi1_devdata *dd,
 u32 selector,
 u8 sc5)
{
 u8 vl = sc_to_vlt(dd, sc5);

 return sdma_select_engine_vl(dd, selector, vl);
}
