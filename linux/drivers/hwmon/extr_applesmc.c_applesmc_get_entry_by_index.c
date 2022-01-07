
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef struct applesmc_entry {int valid; void* flags; int type; void* len; int key; } const applesmc_entry ;
typedef int __be32 ;
struct TYPE_2__ {int mutex; struct applesmc_entry const* cache; } ;


 int APPLESMC_GET_KEY_BY_INDEX_CMD ;
 int APPLESMC_GET_KEY_TYPE_CMD ;
 struct applesmc_entry const* ERR_PTR (int) ;
 int cpu_to_be32 (int) ;
 int memcpy (int ,void**,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_smc (int ,void**,void**,int) ;
 TYPE_1__ smcreg ;

__attribute__((used)) static const struct applesmc_entry *applesmc_get_entry_by_index(int index)
{
 struct applesmc_entry *cache = &smcreg.cache[index];
 u8 key[4], info[6];
 __be32 be;
 int ret = 0;

 if (cache->valid)
  return cache;

 mutex_lock(&smcreg.mutex);

 if (cache->valid)
  goto out;
 be = cpu_to_be32(index);
 ret = read_smc(APPLESMC_GET_KEY_BY_INDEX_CMD, (u8 *)&be, key, 4);
 if (ret)
  goto out;
 ret = read_smc(APPLESMC_GET_KEY_TYPE_CMD, key, info, 6);
 if (ret)
  goto out;

 memcpy(cache->key, key, 4);
 cache->len = info[0];
 memcpy(cache->type, &info[1], 4);
 cache->flags = info[5];
 cache->valid = 1;

out:
 mutex_unlock(&smcreg.mutex);
 if (ret)
  return ERR_PTR(ret);
 return cache;
}
