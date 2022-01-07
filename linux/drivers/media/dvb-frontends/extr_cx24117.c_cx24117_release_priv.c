
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx24117_priv {int dummy; } ;


 int cx24117_list_mutex ;
 int hybrid_tuner_release_state (struct cx24117_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cx24117_release_priv(struct cx24117_priv *priv)
{
 mutex_lock(&cx24117_list_mutex);
 if (priv != ((void*)0))
  hybrid_tuner_release_state(priv);
 mutex_unlock(&cx24117_list_mutex);
}
