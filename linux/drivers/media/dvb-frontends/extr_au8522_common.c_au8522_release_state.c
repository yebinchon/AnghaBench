
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au8522_state {int dummy; } ;


 int au8522_list_mutex ;
 int hybrid_tuner_release_state (struct au8522_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void au8522_release_state(struct au8522_state *state)
{
 mutex_lock(&au8522_list_mutex);
 if (state != ((void*)0))
  hybrid_tuner_release_state(state);
 mutex_unlock(&au8522_list_mutex);
}
