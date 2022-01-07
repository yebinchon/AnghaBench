
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_hw_mixer {int dummy; } ;


 int kfree (struct mdp5_hw_mixer*) ;

void mdp5_mixer_destroy(struct mdp5_hw_mixer *mixer)
{
 kfree(mixer);
}
