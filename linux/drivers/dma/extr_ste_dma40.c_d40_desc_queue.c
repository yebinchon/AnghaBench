
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_desc {int is_in_client_list; int node; } ;
struct d40_chan {int pending_queue; } ;


 int d40_desc_remove (struct d40_desc*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void d40_desc_queue(struct d40_chan *d40c, struct d40_desc *desc)
{
 d40_desc_remove(desc);
 desc->is_in_client_list = 0;
 list_add_tail(&desc->node, &d40c->pending_queue);
}
