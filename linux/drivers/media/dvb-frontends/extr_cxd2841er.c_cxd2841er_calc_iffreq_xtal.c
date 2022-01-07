
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef enum cxd2841er_xtal { ____Placeholder_cxd2841er_xtal } cxd2841er_xtal ;


 int SONY_XTAL_24000 ;
 int do_div (int,int) ;

__attribute__((used)) static u32 cxd2841er_calc_iffreq_xtal(enum cxd2841er_xtal xtal, u32 ifhz)
{
 u64 tmp;

 tmp = (u64) ifhz * 16777216;
 do_div(tmp, ((xtal == SONY_XTAL_24000) ? 48000000 : 41000000));

 return (u32) tmp;
}
