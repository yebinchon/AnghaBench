
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_desc {int node; } ;


 int list_del (int *) ;

__attribute__((used)) static void d40_desc_remove(struct d40_desc *d40d)
{
 list_del(&d40d->node);
}
