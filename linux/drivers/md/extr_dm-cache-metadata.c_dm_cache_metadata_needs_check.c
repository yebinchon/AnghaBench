
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int flags; } ;


 int NEEDS_CHECK ;
 int READ_LOCK (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;
 int test_bit (int ,int *) ;

int dm_cache_metadata_needs_check(struct dm_cache_metadata *cmd, bool *result)
{
 READ_LOCK(cmd);
 *result = !!test_bit(NEEDS_CHECK, &cmd->flags);
 READ_UNLOCK(cmd);

 return 0;
}
