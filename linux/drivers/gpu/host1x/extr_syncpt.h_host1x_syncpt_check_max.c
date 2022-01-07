
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct host1x_syncpt {scalar_t__ client_managed; } ;
typedef scalar_t__ s32 ;


 scalar_t__ host1x_syncpt_read_max (struct host1x_syncpt*) ;

__attribute__((used)) static inline bool host1x_syncpt_check_max(struct host1x_syncpt *sp, u32 real)
{
 u32 max;
 if (sp->client_managed)
  return 1;
 max = host1x_syncpt_read_max(sp);
 return (s32)(max - real) >= 0;
}
