
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FSI_SMODE_SID_MASK ;
 int FSI_SMODE_SID_SHIFT ;

__attribute__((used)) static inline uint32_t fsi_smode_sid(int x)
{
 return (x & FSI_SMODE_SID_MASK) << FSI_SMODE_SID_SHIFT;
}
