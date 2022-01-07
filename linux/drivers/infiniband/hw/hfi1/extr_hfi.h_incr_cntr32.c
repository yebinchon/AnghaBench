
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline void incr_cntr32(u32 *cntr)
{
 if (*cntr < (u32)-1LL)
  (*cntr)++;
}
