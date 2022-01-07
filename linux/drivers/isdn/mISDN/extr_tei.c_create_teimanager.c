
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int st; int ctrl; int send; } ;
struct TYPE_7__ {int debug; int state; int * fsm; int printdebug; struct manager* userdata; } ;
struct manager {int nextid; TYPE_2__ ch; int datimer; TYPE_3__ deact; TYPE_2__ bcast; int lastid; int sendq; int lock; int layer2; } ;
struct TYPE_5__ {int st; } ;
struct mISDNdevice {TYPE_2__* teimgr; TYPE_1__ D; } ;


 int DEBUG_MANAGER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GROUP_TEI ;
 int INIT_LIST_HEAD (int *) ;
 int MISDN_ID_NONE ;
 int ST_L1_DEACT ;
 int TEI_SAPI ;
 int add_layer2 (TYPE_2__*,int ) ;
 int da_debug ;
 int deactfsm ;
 int* debug ;
 struct manager* kzalloc (int,int ) ;
 int mISDN_FsmInitTimer (TYPE_3__*,int *) ;
 int mgr_bcast ;
 int mgr_bcast_ctrl ;
 int mgr_ctrl ;
 int mgr_send ;
 int rwlock_init (int *) ;
 int set_channel_address (TYPE_2__*,int ,int ) ;
 int skb_queue_head_init (int *) ;

int
create_teimanager(struct mISDNdevice *dev)
{
 struct manager *mgr;

 mgr = kzalloc(sizeof(struct manager), GFP_KERNEL);
 if (!mgr)
  return -ENOMEM;
 INIT_LIST_HEAD(&mgr->layer2);
 rwlock_init(&mgr->lock);
 skb_queue_head_init(&mgr->sendq);
 mgr->nextid = 1;
 mgr->lastid = MISDN_ID_NONE;
 mgr->ch.send = mgr_send;
 mgr->ch.ctrl = mgr_ctrl;
 mgr->ch.st = dev->D.st;
 set_channel_address(&mgr->ch, TEI_SAPI, GROUP_TEI);
 add_layer2(&mgr->ch, dev->D.st);
 mgr->bcast.send = mgr_bcast;
 mgr->bcast.ctrl = mgr_bcast_ctrl;
 mgr->bcast.st = dev->D.st;
 set_channel_address(&mgr->bcast, 0, GROUP_TEI);
 add_layer2(&mgr->bcast, dev->D.st);
 mgr->deact.debug = *debug & DEBUG_MANAGER;
 mgr->deact.userdata = mgr;
 mgr->deact.printdebug = da_debug;
 mgr->deact.fsm = &deactfsm;
 mgr->deact.state = ST_L1_DEACT;
 mISDN_FsmInitTimer(&mgr->deact, &mgr->datimer);
 dev->teimgr = &mgr->ch;
 return 0;
}
