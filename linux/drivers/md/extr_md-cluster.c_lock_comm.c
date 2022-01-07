
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_cluster_info {int state; int wait; } ;


 int MD_CLUSTER_SEND_LOCK ;
 int lock_token (struct md_cluster_info*,int) ;
 int test_and_set_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int lock_comm(struct md_cluster_info *cinfo, bool mddev_locked)
{
 wait_event(cinfo->wait,
     !test_and_set_bit(MD_CLUSTER_SEND_LOCK, &cinfo->state));

 return lock_token(cinfo, mddev_locked);
}
