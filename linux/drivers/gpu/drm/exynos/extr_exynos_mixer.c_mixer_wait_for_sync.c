
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int dummy; } ;
typedef int ktime_t ;


 int ETIMEDOUT ;
 int ktime_add_us (int ,int) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int mixer_is_synced (struct mixer_context*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mixer_wait_for_sync(struct mixer_context *ctx)
{
 ktime_t timeout = ktime_add_us(ktime_get(), 100000);

 while (!mixer_is_synced(ctx)) {
  usleep_range(1000, 2000);
  if (ktime_compare(ktime_get(), timeout) > 0)
   return -ETIMEDOUT;
 }
 return 0;
}
