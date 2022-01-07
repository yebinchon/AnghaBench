
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;


 int pagevec_release (struct pagevec*) ;

__attribute__((used)) static void pool_fini(struct pagevec *pv)
{
 pagevec_release(pv);
}
