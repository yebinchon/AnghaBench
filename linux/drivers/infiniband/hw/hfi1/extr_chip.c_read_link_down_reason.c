
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int GENERAL_CONFIG ;
 int LINK_DOWN_REASON ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

__attribute__((used)) static void read_link_down_reason(struct hfi1_devdata *dd, u8 *ldr)
{
 u32 frame;

 read_8051_config(dd, LINK_DOWN_REASON, GENERAL_CONFIG, &frame);
 *ldr = (frame & 0xff);
}
