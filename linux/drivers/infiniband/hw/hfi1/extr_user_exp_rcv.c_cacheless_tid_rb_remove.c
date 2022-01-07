
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct tid_rb_node {size_t rcventry; } ;
struct hfi1_filedata {int ** entry_to_rb; TYPE_1__* uctxt; } ;
struct TYPE_2__ {size_t expected_base; } ;


 int clear_tid_node (struct hfi1_filedata*,struct tid_rb_node*) ;

__attribute__((used)) static void cacheless_tid_rb_remove(struct hfi1_filedata *fdata,
        struct tid_rb_node *tnode)
{
 u32 base = fdata->uctxt->expected_base;

 fdata->entry_to_rb[tnode->rcventry - base] = ((void*)0);
 clear_tid_node(fdata, tnode);
}
