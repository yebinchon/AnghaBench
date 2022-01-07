
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;
struct uuid_entry {int sectors; int last_reg; int first_reg; int label; int uuid; } ;
struct cache_set {int flags; } ;


 int CACHE_SET_RUNNING ;
 int CACHE_SET_STOPPING ;
 int EINTR ;
 int EINVAL ;
 int EPERM ;
 int SET_UUID_FLASH_ONLY (struct uuid_entry*,int) ;
 int bch_uuid_write (struct cache_set*) ;
 int cpu_to_le32 (int ) ;
 int flash_dev_run (struct cache_set*,struct uuid_entry*) ;
 int get_random_bytes (int ,int) ;
 scalar_t__ ktime_get_real_seconds () ;
 int memset (int ,int ,int) ;
 int pr_err (char*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct uuid_entry* uuid_find_empty (struct cache_set*) ;

int bch_flash_dev_create(struct cache_set *c, uint64_t size)
{
 struct uuid_entry *u;

 if (test_bit(CACHE_SET_STOPPING, &c->flags))
  return -EINTR;

 if (!test_bit(CACHE_SET_RUNNING, &c->flags))
  return -EPERM;

 u = uuid_find_empty(c);
 if (!u) {
  pr_err("Can't create volume, no room for UUID");
  return -EINVAL;
 }

 get_random_bytes(u->uuid, 16);
 memset(u->label, 0, 32);
 u->first_reg = u->last_reg = cpu_to_le32((u32)ktime_get_real_seconds());

 SET_UUID_FLASH_ONLY(u, 1);
 u->sectors = size >> 9;

 bch_uuid_write(c);

 return flash_dev_run(c, u);
}
