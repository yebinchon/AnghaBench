
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_wr_wait {int completion; scalar_t__ ret; } ;


 int init_completion (int *) ;

__attribute__((used)) static inline void c4iw_init_wr_wait(struct c4iw_wr_wait *wr_waitp)
{
 wr_waitp->ret = 0;
 init_completion(&wr_waitp->completion);
}
