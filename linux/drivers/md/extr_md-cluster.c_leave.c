
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ recovery_cp; scalar_t__ reshape_position; int flags; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {scalar_t__ slot_number; int lockspace; int bitmap_lockres; int resync_lockres; int no_new_dev_lockres; int ack_lockres; int token_lockres; int message_lockres; int recv_thread; int recovery_thread; int state; } ;


 int MD_CLOSING ;
 int MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD ;
 scalar_t__ MaxSector ;
 int dlm_release_lockspace (int ,int) ;
 int kfree (struct md_cluster_info*) ;
 int lockres_free (int ) ;
 int md_unregister_thread (int *) ;
 int resync_bitmap (struct mddev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int unlock_all_bitmaps (struct mddev*) ;

__attribute__((used)) static int leave(struct mddev *mddev)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;

 if (!cinfo)
  return 0;
 if ((cinfo->slot_number > 0 && mddev->recovery_cp != MaxSector) ||
     (mddev->reshape_position != MaxSector &&
      test_bit(MD_CLOSING, &mddev->flags)))
  resync_bitmap(mddev);

 set_bit(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state);
 md_unregister_thread(&cinfo->recovery_thread);
 md_unregister_thread(&cinfo->recv_thread);
 lockres_free(cinfo->message_lockres);
 lockres_free(cinfo->token_lockres);
 lockres_free(cinfo->ack_lockres);
 lockres_free(cinfo->no_new_dev_lockres);
 lockres_free(cinfo->resync_lockres);
 lockres_free(cinfo->bitmap_lockres);
 unlock_all_bitmaps(mddev);
 dlm_release_lockspace(cinfo->lockspace, 2);
 kfree(cinfo);
 return 0;
}
