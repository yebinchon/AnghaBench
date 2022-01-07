
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static inline void incr_cntr64(u64 *cntr)
{
 if (*cntr < (u64)-1LL)
  (*cntr)++;
}
