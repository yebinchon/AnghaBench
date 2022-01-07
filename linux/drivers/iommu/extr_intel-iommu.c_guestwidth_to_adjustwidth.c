
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int guestwidth_to_adjustwidth(int gaw)
{
 int agaw;
 int r = (gaw - 12) % 9;

 if (r == 0)
  agaw = gaw;
 else
  agaw = gaw + 9 - r;
 if (agaw > 64)
  agaw = 64;
 return agaw;
}
