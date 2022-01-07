
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sockaddr_storage {int dummy; } ;
struct hlist_head {int dummy; } ;


 size_t IWPM_REMINFO_HASH_MASK ;
 int get_hash_bucket (struct sockaddr_storage*,struct sockaddr_storage*,size_t*) ;
 struct hlist_head* iwpm_reminfo_bucket ;

__attribute__((used)) static struct hlist_head *get_reminfo_hash_bucket(struct sockaddr_storage
    *mapped_loc_sockaddr, struct sockaddr_storage
    *mapped_rem_sockaddr)
{
 u32 hash;
 int ret;

 ret = get_hash_bucket(mapped_loc_sockaddr, mapped_rem_sockaddr, &hash);
 if (ret)
  return ((void*)0);
 return &iwpm_reminfo_bucket[hash & IWPM_REMINFO_HASH_MASK];
}
