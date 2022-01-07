
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PSN_MASK ;

__attribute__((used)) static inline u32 mask_psn(u32 a)
{
 return a & PSN_MASK;
}
