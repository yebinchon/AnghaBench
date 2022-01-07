
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_softreq {int status; int backlog; } ;
struct nitrox_cmdq {int backlog_qlock; int backlog_count; int backlog_head; } ;


 int INIT_LIST_HEAD (int *) ;
 int REQ_BACKLOG ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void backlog_list_add(struct nitrox_softreq *sr,
        struct nitrox_cmdq *cmdq)
{
 INIT_LIST_HEAD(&sr->backlog);

 spin_lock_bh(&cmdq->backlog_qlock);
 list_add_tail(&sr->backlog, &cmdq->backlog_head);
 atomic_inc(&cmdq->backlog_count);
 atomic_set(&sr->status, REQ_BACKLOG);
 spin_unlock_bh(&cmdq->backlog_qlock);
}
