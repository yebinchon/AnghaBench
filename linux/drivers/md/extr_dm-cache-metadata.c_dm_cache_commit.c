
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {scalar_t__ fail_io; } ;
typedef int flags_mutator ;


 int EINVAL ;
 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int __begin_transaction (struct dm_cache_metadata*) ;
 int __commit_transaction (struct dm_cache_metadata*,int ) ;
 int clear_clean_shutdown ;
 int set_clean_shutdown ;

int dm_cache_commit(struct dm_cache_metadata *cmd, bool clean_shutdown)
{
 int r = -EINVAL;
 flags_mutator mutator = (clean_shutdown ? set_clean_shutdown :
     clear_clean_shutdown);

 WRITE_LOCK(cmd);
 if (cmd->fail_io)
  goto out;

 r = __commit_transaction(cmd, mutator);
 if (r)
  goto out;

 r = __begin_transaction(cmd);
out:
 WRITE_UNLOCK(cmd);
 return r;
}
