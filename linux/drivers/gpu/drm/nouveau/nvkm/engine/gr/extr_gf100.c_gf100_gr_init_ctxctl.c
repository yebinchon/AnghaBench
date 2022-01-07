
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf100_gr {scalar_t__ firmware; } ;


 int gf100_gr_init_ctxctl_ext (struct gf100_gr*) ;
 int gf100_gr_init_ctxctl_int (struct gf100_gr*) ;

int
gf100_gr_init_ctxctl(struct gf100_gr *gr)
{
 int ret;

 if (gr->firmware)
  ret = gf100_gr_init_ctxctl_ext(gr);
 else
  ret = gf100_gr_init_ctxctl_int(gr);

 return ret;
}
