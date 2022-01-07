
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5592r_state {int * channel_modes; } ;


 int ARRAY_SIZE (int *) ;
 int CH_MODE_UNUSED ;
 int ad5592r_set_channel_modes (struct ad5592r_state*) ;

__attribute__((used)) static int ad5592r_reset_channel_modes(struct ad5592r_state *st)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(st->channel_modes); i++)
  st->channel_modes[i] = CH_MODE_UNUSED;

 return ad5592r_set_channel_modes(st);
}
