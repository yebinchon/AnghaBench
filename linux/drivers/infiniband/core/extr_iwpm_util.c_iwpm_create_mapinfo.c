
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sockaddr_storage {int dummy; } ;
struct iwpm_mapping_info {int hlist_node; int mapped_sockaddr; int local_sockaddr; int map_flags; int nl_client; } ;
struct hlist_head {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct hlist_head* get_mapinfo_hash_bucket (int *,int *) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 scalar_t__ iwpm_hash_bucket ;
 int iwpm_mapinfo_lock ;
 int iwpm_valid_client (int ) ;
 int kfree (struct iwpm_mapping_info*) ;
 struct iwpm_mapping_info* kzalloc (int,int ) ;
 int memcpy (int *,struct sockaddr_storage*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int iwpm_create_mapinfo(struct sockaddr_storage *local_sockaddr,
   struct sockaddr_storage *mapped_sockaddr,
   u8 nl_client, u32 map_flags)
{
 struct hlist_head *hash_bucket_head = ((void*)0);
 struct iwpm_mapping_info *map_info;
 unsigned long flags;
 int ret = -EINVAL;

 if (!iwpm_valid_client(nl_client))
  return ret;
 map_info = kzalloc(sizeof(struct iwpm_mapping_info), GFP_KERNEL);
 if (!map_info)
  return -ENOMEM;

 memcpy(&map_info->local_sockaddr, local_sockaddr,
        sizeof(struct sockaddr_storage));
 memcpy(&map_info->mapped_sockaddr, mapped_sockaddr,
        sizeof(struct sockaddr_storage));
 map_info->nl_client = nl_client;
 map_info->map_flags = map_flags;

 spin_lock_irqsave(&iwpm_mapinfo_lock, flags);
 if (iwpm_hash_bucket) {
  hash_bucket_head = get_mapinfo_hash_bucket(
     &map_info->local_sockaddr,
     &map_info->mapped_sockaddr);
  if (hash_bucket_head) {
   hlist_add_head(&map_info->hlist_node, hash_bucket_head);
   ret = 0;
  }
 }
 spin_unlock_irqrestore(&iwpm_mapinfo_lock, flags);

 if (!hash_bucket_head)
  kfree(map_info);
 return ret;
}
