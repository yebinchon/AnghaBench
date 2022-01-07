
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh901318_desc {int node; } ;


 int list_del (int *) ;

__attribute__((used)) static void
coh901318_desc_remove(struct coh901318_desc *cohd)
{
 list_del(&cohd->node);
}
