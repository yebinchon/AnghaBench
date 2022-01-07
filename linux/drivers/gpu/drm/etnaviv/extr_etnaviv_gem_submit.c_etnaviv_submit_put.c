
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gem_submit {int refcount; } ;


 int kref_put (int *,int ) ;
 int submit_cleanup ;

void etnaviv_submit_put(struct etnaviv_gem_submit *submit)
{
 kref_put(&submit->refcount, submit_cleanup);
}
