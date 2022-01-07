
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c4iw_ep_common {TYPE_1__* cm_id; int history; } ;
struct TYPE_2__ {int (* add_ref ) (TYPE_1__*) ;} ;


 int CM_ID_REFED ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void ref_cm_id(struct c4iw_ep_common *epc)
{
 set_bit(CM_ID_REFED, &epc->history);
 epc->cm_id->add_ref(epc->cm_id);
}
