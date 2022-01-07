
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int dummy; } ;
typedef int ssize_t ;


 int DMEMIT (char*) ;

__attribute__((used)) static int mq_emit_config_values(struct dm_cache_policy *p, char *result,
     unsigned maxlen, ssize_t *sz_ptr)
{
 ssize_t sz = *sz_ptr;

 DMEMIT("10 random_threshold 0 "
        "sequential_threshold 0 "
        "discard_promote_adjustment 0 "
        "read_promote_adjustment 0 "
        "write_promote_adjustment 0 ");

 *sz_ptr = sz;
 return 0;
}
