
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_cluster_info {int wait; int state; TYPE_1__* token_lockres; int recv_mutex; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ DLM_LOCK_EX ;
 int MD_CLUSTER_SEND_LOCK ;
 int WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 int dlm_unlock_sync (TYPE_1__*) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void unlock_comm(struct md_cluster_info *cinfo)
{
 WARN_ON(cinfo->token_lockres->mode != DLM_LOCK_EX);
 mutex_unlock(&cinfo->recv_mutex);
 dlm_unlock_sync(cinfo->token_lockres);
 clear_bit(MD_CLUSTER_SEND_LOCK, &cinfo->state);
 wake_up(&cinfo->wait);
}
