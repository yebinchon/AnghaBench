
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int dummy; } ;
struct r5conf {int dummy; } ;
typedef int sector_t ;


 int r5l_recovery_reset_stripe (struct stripe_head*) ;
 struct stripe_head* raid5_get_active_stripe (struct r5conf*,int ,int ,int,int ) ;

__attribute__((used)) static struct stripe_head *
r5c_recovery_alloc_stripe(
  struct r5conf *conf,
  sector_t stripe_sect,
  int noblock)
{
 struct stripe_head *sh;

 sh = raid5_get_active_stripe(conf, stripe_sect, 0, noblock, 0);
 if (!sh)
  return ((void*)0);

 r5l_recovery_reset_stripe(sh);

 return sh;
}
