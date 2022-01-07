
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* ctrl ) (TYPE_2__*,int ,int *) ;int list; } ;
struct layer2 {TYPE_2__ ch; int tei; TYPE_1__* tm; } ;
struct TYPE_3__ {int mgr; } ;


 int CLOSE_CHANNEL ;
 int ID_REMOVE ;
 int MDL_REMOVE_REQ ;
 int list_del (int *) ;
 int put_tei_msg (int ,int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ,int *) ;
 int tei_l2 (struct layer2*,int ,int ) ;

__attribute__((used)) static void
tei_l2remove(struct layer2 *l2)
{
 put_tei_msg(l2->tm->mgr, ID_REMOVE, 0, l2->tei);
 tei_l2(l2, MDL_REMOVE_REQ, 0);
 list_del(&l2->ch.list);
 l2->ch.ctrl(&l2->ch, CLOSE_CHANNEL, ((void*)0));
}
