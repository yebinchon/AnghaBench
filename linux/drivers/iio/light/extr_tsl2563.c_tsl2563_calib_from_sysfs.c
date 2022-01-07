
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CALIB_BASE_SYSFS ;
 int CALIB_FRAC_BITS ;

__attribute__((used)) static inline u32 tsl2563_calib_from_sysfs(int value)
{
 return (((u32) value) << CALIB_FRAC_BITS) / CALIB_BASE_SYSFS;
}
