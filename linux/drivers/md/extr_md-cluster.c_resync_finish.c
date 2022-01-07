
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int flags; int recovery; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int resync_lockres; } ;


 int MD_CLOSING ;
 int MD_RESYNCING_REMOTE ;
 int clear_bit (int ,int *) ;
 int dlm_unlock_sync (int ) ;
 int resync_info_update (struct mddev*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int resync_finish(struct mddev *mddev)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;
 int ret = 0;

 clear_bit(MD_RESYNCING_REMOTE, &mddev->recovery);





 if (!test_bit(MD_CLOSING, &mddev->flags))
  ret = resync_info_update(mddev, 0, 0);
 dlm_unlock_sync(cinfo->resync_lockres);
 return ret;
}
