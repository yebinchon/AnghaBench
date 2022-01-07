
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt {scalar_t__ id; int host; } ;


 scalar_t__ host1x_syncpt_nb_pts (int ) ;

__attribute__((used)) static inline int host1x_syncpt_is_valid(struct host1x_syncpt *sp)
{
 return sp->id < host1x_syncpt_nb_pts(sp->host);
}
