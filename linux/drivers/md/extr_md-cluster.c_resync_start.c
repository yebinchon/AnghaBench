
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int resync_lockres; } ;


 int DLM_LOCK_EX ;
 int dlm_lock_sync_interruptible (int ,int ,struct mddev*) ;

__attribute__((used)) static int resync_start(struct mddev *mddev)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;
 return dlm_lock_sync_interruptible(cinfo->resync_lockres, DLM_LOCK_EX, mddev);
}
