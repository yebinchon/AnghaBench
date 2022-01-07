
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_power_state {int dummy; } ;
struct pp_hw_power_state {scalar_t__ magic; } ;


 scalar_t__ smu8_magic ;

__attribute__((used)) static struct smu8_power_state *cast_smu8_power_state(struct pp_hw_power_state *hw_ps)
{
 if (smu8_magic != hw_ps->magic)
  return ((void*)0);

 return (struct smu8_power_state *)hw_ps;
}
