
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;
typedef int gfp_t ;


 int pagevec_init (struct pagevec*) ;
 int pool_fini (struct pagevec*) ;
 int pool_refill (struct pagevec*,int ) ;

__attribute__((used)) static int pool_init(struct pagevec *pv, gfp_t gfp)
{
 int err;

 pagevec_init(pv);

 err = pool_refill(pv, gfp);
 if (err)
  pool_fini(pv);

 return err;
}
