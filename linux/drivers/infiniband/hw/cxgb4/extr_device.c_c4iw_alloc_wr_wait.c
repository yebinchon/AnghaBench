
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_wr_wait {int kref; } ;
typedef int gfp_t ;


 int kref_init (int *) ;
 struct c4iw_wr_wait* kzalloc (int,int ) ;
 int pr_debug (char*,struct c4iw_wr_wait*) ;

struct c4iw_wr_wait *c4iw_alloc_wr_wait(gfp_t gfp)
{
 struct c4iw_wr_wait *wr_waitp;

 wr_waitp = kzalloc(sizeof(*wr_waitp), gfp);
 if (wr_waitp) {
  kref_init(&wr_waitp->kref);
  pr_debug("wr_wait %p\n", wr_waitp);
 }
 return wr_waitp;
}
