
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;



__attribute__((used)) static unsigned char vco_dev_get(struct mb86a16_state *state, int smrt)
{
 unsigned char R;

 if (smrt > 9375)
  R = 0;
 else
  R = 1;

 return R;
}
