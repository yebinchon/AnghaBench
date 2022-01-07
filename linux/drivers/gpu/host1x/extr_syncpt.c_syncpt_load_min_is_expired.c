
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_syncpt {int host; } ;


 int host1x_hw_syncpt_load (int ,struct host1x_syncpt*) ;
 int host1x_syncpt_is_expired (struct host1x_syncpt*,int ) ;

__attribute__((used)) static bool syncpt_load_min_is_expired(struct host1x_syncpt *sp, u32 thresh)
{
 host1x_hw_syncpt_load(sp->host, sp);

 return host1x_syncpt_is_expired(sp, thresh);
}
