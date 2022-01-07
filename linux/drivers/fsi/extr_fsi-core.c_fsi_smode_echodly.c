
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FSI_SMODE_ED_MASK ;
 int FSI_SMODE_ED_SHIFT ;

__attribute__((used)) static inline uint32_t fsi_smode_echodly(int x)
{
 return (x & FSI_SMODE_ED_MASK) << FSI_SMODE_ED_SHIFT;
}
