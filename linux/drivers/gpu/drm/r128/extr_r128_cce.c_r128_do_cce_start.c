
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size_l2qw; } ;
struct TYPE_6__ {int cce_mode; int cce_running; TYPE_1__ ring; } ;
typedef TYPE_2__ drm_r128_private_t ;


 int R128_PM4_BUFFER_ADDR ;
 int R128_PM4_BUFFER_CNTL ;
 int R128_PM4_BUFFER_CNTL_NOUPDATE ;
 int R128_PM4_MICRO_CNTL ;
 int R128_PM4_MICRO_FREERUN ;
 int R128_READ (int ) ;
 int R128_WRITE (int ,int) ;
 int r128_do_wait_for_idle (TYPE_2__*) ;

__attribute__((used)) static void r128_do_cce_start(drm_r128_private_t *dev_priv)
{
 r128_do_wait_for_idle(dev_priv);

 R128_WRITE(R128_PM4_BUFFER_CNTL,
     dev_priv->cce_mode | dev_priv->ring.size_l2qw
     | R128_PM4_BUFFER_CNTL_NOUPDATE);
 R128_READ(R128_PM4_BUFFER_ADDR);
 R128_WRITE(R128_PM4_MICRO_CNTL, R128_PM4_MICRO_FREERUN);

 dev_priv->cce_running = 1;
}
