
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_valid_mask(int mask, int req, int opt)
{
 if ((mask & req) != req)
  return 0;

 if (mask & ~(req | opt))
  return 0;

 return 1;
}
