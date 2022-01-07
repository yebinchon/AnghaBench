
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int ro; int sb_flags; } ;
struct raid_set {struct mddev md; } ;


 int MD_SB_CHANGE_DEVS ;
 int md_update_sb (struct mddev*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void rs_update_sbs(struct raid_set *rs)
{
 struct mddev *mddev = &rs->md;
 int ro = mddev->ro;

 set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
 mddev->ro = 0;
 md_update_sb(mddev, 1);
 mddev->ro = ro;
}
