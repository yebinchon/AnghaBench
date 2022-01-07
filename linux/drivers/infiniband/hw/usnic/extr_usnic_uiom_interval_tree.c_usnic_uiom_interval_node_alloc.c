
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_uiom_interval_node {long start; long last; int flags; int ref_cnt; } ;


 int GFP_ATOMIC ;
 struct usnic_uiom_interval_node* kzalloc (int,int ) ;

__attribute__((used)) static struct usnic_uiom_interval_node*
usnic_uiom_interval_node_alloc(long int start, long int last, int ref_cnt,
    int flags)
{
 struct usnic_uiom_interval_node *interval = kzalloc(sizeof(*interval),
        GFP_ATOMIC);
 if (!interval)
  return ((void*)0);

 interval->start = start;
 interval->last = last;
 interval->flags = flags;
 interval->ref_cnt = ref_cnt;

 return interval;
}
