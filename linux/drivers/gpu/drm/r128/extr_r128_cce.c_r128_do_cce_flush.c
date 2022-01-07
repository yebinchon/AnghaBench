
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int drm_r128_private_t ;


 int R128_PM4_BUFFER_DL_DONE ;
 int R128_PM4_BUFFER_DL_WPTR ;
 int R128_READ (int ) ;
 int R128_WRITE (int ,int) ;

__attribute__((used)) static void r128_do_cce_flush(drm_r128_private_t *dev_priv)
{
 u32 tmp;

 tmp = R128_READ(R128_PM4_BUFFER_DL_WPTR) | R128_PM4_BUFFER_DL_DONE;
 R128_WRITE(R128_PM4_BUFFER_DL_WPTR, tmp);
}
