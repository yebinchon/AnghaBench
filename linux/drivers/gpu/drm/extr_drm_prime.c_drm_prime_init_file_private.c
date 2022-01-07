
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_prime_file_private {void* handles; void* dmabufs; int lock; } ;


 void* RB_ROOT ;
 int mutex_init (int *) ;

void drm_prime_init_file_private(struct drm_prime_file_private *prime_fpriv)
{
 mutex_init(&prime_fpriv->lock);
 prime_fpriv->dmabufs = RB_ROOT;
 prime_fpriv->handles = RB_ROOT;
}
