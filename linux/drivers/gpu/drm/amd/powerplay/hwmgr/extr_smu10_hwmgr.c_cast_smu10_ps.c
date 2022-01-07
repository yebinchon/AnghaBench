
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu10_power_state {int dummy; } ;
struct pp_hw_power_state {scalar_t__ magic; } ;


 scalar_t__ SMU10_Magic ;

__attribute__((used)) static struct smu10_power_state *cast_smu10_ps(struct pp_hw_power_state *hw_ps)
{
 if (SMU10_Magic != hw_ps->magic)
  return ((void*)0);

 return (struct smu10_power_state *)hw_ps;
}
