
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c4iw_ep_common {int history; TYPE_1__* cm_id; } ;
struct TYPE_2__ {int (* rem_ref ) (TYPE_1__*) ;} ;


 int CM_ID_DEREFED ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void deref_cm_id(struct c4iw_ep_common *epc)
{
 epc->cm_id->rem_ref(epc->cm_id);
 epc->cm_id = ((void*)0);
 set_bit(CM_ID_DEREFED, &epc->history);
}
