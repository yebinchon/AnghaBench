
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_wr_wait {int ret; int completion; } ;


 int c4iw_put_wr_wait (struct c4iw_wr_wait*) ;
 int complete (int *) ;

__attribute__((used)) static inline void _c4iw_wake_up(struct c4iw_wr_wait *wr_waitp, int ret,
     bool deref)
{
 wr_waitp->ret = ret;
 complete(&wr_waitp->completion);
 if (deref)
  c4iw_put_wr_wait(wr_waitp);
}
