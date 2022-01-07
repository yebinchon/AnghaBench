
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_prime_file_private {int dmabufs; } ;


 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int) ;

void drm_prime_destroy_file_private(struct drm_prime_file_private *prime_fpriv)
{

 WARN_ON(!RB_EMPTY_ROOT(&prime_fpriv->dmabufs));
}
