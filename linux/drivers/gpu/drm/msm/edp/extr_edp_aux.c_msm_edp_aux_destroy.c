
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_aux {int msg_mutex; int drm_aux; } ;
struct device {int dummy; } ;


 int drm_dp_aux_unregister (int *) ;
 int mutex_destroy (int *) ;

void msm_edp_aux_destroy(struct device *dev, struct edp_aux *aux)
{
 if (aux) {
  drm_dp_aux_unregister(&aux->drm_aux);
  mutex_destroy(&aux->msg_mutex);
 }
}
