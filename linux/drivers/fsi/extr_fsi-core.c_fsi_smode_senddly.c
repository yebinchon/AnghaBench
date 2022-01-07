
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FSI_SMODE_SD_MASK ;
 int FSI_SMODE_SD_SHIFT ;

__attribute__((used)) static inline uint32_t fsi_smode_senddly(int x)
{
 return (x & FSI_SMODE_SD_MASK) << FSI_SMODE_SD_SHIFT;
}
