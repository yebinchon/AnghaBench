
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exercise_ggtt (void*,int ) ;
 int pot_hole ;

__attribute__((used)) static int igt_ggtt_pot(void *arg)
{
 return exercise_ggtt(arg, pot_hole);
}
