
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CALIB_BASE_SYSFS ;
 int CALIB_FRAC_BITS ;
 int CALIB_FRAC_HALF ;

__attribute__((used)) static inline int tsl2563_calib_to_sysfs(u32 calib)
{
 return (int) (((calib * CALIB_BASE_SYSFS) +
         CALIB_FRAC_HALF) >> CALIB_FRAC_BITS);
}
