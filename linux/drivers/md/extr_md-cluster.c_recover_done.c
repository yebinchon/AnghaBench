
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int slot_number; int state; int completion; } ;
struct dlm_slot {int dummy; } ;


 int MD_CLUSTER_BEGIN_JOIN_CLUSTER ;
 int MD_CLUSTER_SUSPEND_READ_BALANCING ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void recover_done(void *arg, struct dlm_slot *slots,
  int num_slots, int our_slot,
  uint32_t generation)
{
 struct mddev *mddev = arg;
 struct md_cluster_info *cinfo = mddev->cluster_info;

 cinfo->slot_number = our_slot;


 if (test_bit(MD_CLUSTER_BEGIN_JOIN_CLUSTER, &cinfo->state)) {
  complete(&cinfo->completion);
  clear_bit(MD_CLUSTER_BEGIN_JOIN_CLUSTER, &cinfo->state);
 }
 clear_bit(MD_CLUSTER_SUSPEND_READ_BALANCING, &cinfo->state);
}
