
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int chunk_sectors; int log; int r5c_cached_full_stripes; } ;


 int R5C_FULL_STRIPE_FLUSH_BATCH (struct r5conf*) ;
 int STRIPE_SHIFT ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ min (int ,int) ;
 int r5c_is_writeback (int ) ;
 int r5l_wake_reclaim (int ,int ) ;

void r5c_check_cached_full_stripe(struct r5conf *conf)
{
 if (!r5c_is_writeback(conf->log))
  return;





 if (atomic_read(&conf->r5c_cached_full_stripes) >=
     min(R5C_FULL_STRIPE_FLUSH_BATCH(conf),
  conf->chunk_sectors >> STRIPE_SHIFT))
  r5l_wake_reclaim(conf->log, 0);
}
