
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_wr_wait {int dummy; } ;


 int _c4iw_wake_up (struct c4iw_wr_wait*,int,int) ;

__attribute__((used)) static inline void c4iw_wake_up_deref(struct c4iw_wr_wait *wr_waitp, int ret)
{
 _c4iw_wake_up(wr_waitp, ret, 1);
}
