
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_desc {int node; } ;
struct d40_chan {int done; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void d40_desc_done(struct d40_chan *d40c, struct d40_desc *desc)
{
 list_add_tail(&desc->node, &d40c->done);
}
