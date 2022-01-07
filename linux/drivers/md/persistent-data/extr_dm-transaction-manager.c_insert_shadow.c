
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shadow_info {int hlist; int where; } ;
struct dm_transaction_manager {int lock; scalar_t__ buckets; } ;
typedef int dm_block_t ;


 int DM_HASH_MASK ;
 int GFP_NOIO ;
 unsigned int dm_hash_block (int ,int ) ;
 int hlist_add_head (int *,scalar_t__) ;
 struct shadow_info* kmalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void insert_shadow(struct dm_transaction_manager *tm, dm_block_t b)
{
 unsigned bucket;
 struct shadow_info *si;

 si = kmalloc(sizeof(*si), GFP_NOIO);
 if (si) {
  si->where = b;
  bucket = dm_hash_block(b, DM_HASH_MASK);
  spin_lock(&tm->lock);
  hlist_add_head(&si->hlist, tm->buckets + bucket);
  spin_unlock(&tm->lock);
 }
}
