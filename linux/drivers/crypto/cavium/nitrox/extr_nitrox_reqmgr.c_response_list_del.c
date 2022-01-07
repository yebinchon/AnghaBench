
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_softreq {int response; } ;
struct nitrox_cmdq {int resp_qlock; } ;


 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void response_list_del(struct nitrox_softreq *sr,
         struct nitrox_cmdq *cmdq)
{
 spin_lock_bh(&cmdq->resp_qlock);
 list_del(&sr->response);
 spin_unlock_bh(&cmdq->resp_qlock);
}
