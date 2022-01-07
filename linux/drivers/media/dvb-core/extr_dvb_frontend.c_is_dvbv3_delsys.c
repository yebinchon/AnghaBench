
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ SYS_ATSC ;
 scalar_t__ SYS_DVBC_ANNEX_A ;
 scalar_t__ SYS_DVBS ;
 scalar_t__ SYS_DVBT ;

__attribute__((used)) static bool is_dvbv3_delsys(u32 delsys)
{
 return (delsys == SYS_DVBT) || (delsys == SYS_DVBC_ANNEX_A) ||
        (delsys == SYS_DVBS) || (delsys == SYS_ATSC);
}
