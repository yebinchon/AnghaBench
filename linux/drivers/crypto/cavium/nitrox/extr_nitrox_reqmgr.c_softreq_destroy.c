
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_softreq {int dummy; } ;


 int kfree (struct nitrox_softreq*) ;
 int softreq_unmap_sgbufs (struct nitrox_softreq*) ;

__attribute__((used)) static void softreq_destroy(struct nitrox_softreq *sr)
{
 softreq_unmap_sgbufs(sr);
 kfree(sr);
}
