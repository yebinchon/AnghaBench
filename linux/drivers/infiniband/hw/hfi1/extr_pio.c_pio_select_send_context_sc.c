
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct send_context {int dummy; } ;
struct hfi1_devdata {int dummy; } ;


 struct send_context* pio_select_send_context_vl (struct hfi1_devdata*,int ,int ) ;
 int sc_to_vlt (struct hfi1_devdata*,int ) ;

struct send_context *pio_select_send_context_sc(struct hfi1_devdata *dd,
      u32 selector, u8 sc5)
{
 u8 vl = sc_to_vlt(dd, sc5);

 return pio_select_send_context_vl(dd, selector, vl);
}
