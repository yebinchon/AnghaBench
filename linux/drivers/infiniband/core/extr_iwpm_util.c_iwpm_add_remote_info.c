
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwpm_remote_info {int hlist_node; int mapped_rem_sockaddr; int mapped_loc_sockaddr; } ;
struct hlist_head {int dummy; } ;


 struct hlist_head* get_reminfo_hash_bucket (int *,int *) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 scalar_t__ iwpm_reminfo_bucket ;
 int iwpm_reminfo_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void iwpm_add_remote_info(struct iwpm_remote_info *rem_info)
{
 struct hlist_head *hash_bucket_head;
 unsigned long flags;

 spin_lock_irqsave(&iwpm_reminfo_lock, flags);
 if (iwpm_reminfo_bucket) {
  hash_bucket_head = get_reminfo_hash_bucket(
     &rem_info->mapped_loc_sockaddr,
     &rem_info->mapped_rem_sockaddr);
  if (hash_bucket_head)
   hlist_add_head(&rem_info->hlist_node, hash_bucket_head);
 }
 spin_unlock_irqrestore(&iwpm_reminfo_lock, flags);
}
