
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SONY_XTAL_20500 ;
 int cxd2841er_calc_iffreq_xtal (int ,int ) ;

__attribute__((used)) static u32 cxd2841er_calc_iffreq(u32 ifhz)
{
 return cxd2841er_calc_iffreq_xtal(SONY_XTAL_20500, ifhz);
}
