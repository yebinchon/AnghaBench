
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int retries; int * lock_ops; struct drm_dp_aux* algo_data; int * algo; } ;
struct TYPE_3__ {int lock; } ;
struct drm_dp_aux {TYPE_2__ ddc; int crc_work; TYPE_1__ cec; int hw_mutex; } ;


 int INIT_WORK (int *,int ) ;
 int drm_dp_aux_crc_work ;
 int drm_dp_i2c_algo ;
 int drm_dp_i2c_lock_ops ;
 int mutex_init (int *) ;

void drm_dp_aux_init(struct drm_dp_aux *aux)
{
 mutex_init(&aux->hw_mutex);
 mutex_init(&aux->cec.lock);
 INIT_WORK(&aux->crc_work, drm_dp_aux_crc_work);

 aux->ddc.algo = &drm_dp_i2c_algo;
 aux->ddc.algo_data = aux;
 aux->ddc.retries = 3;

 aux->ddc.lock_ops = &drm_dp_i2c_lock_ops;
}
