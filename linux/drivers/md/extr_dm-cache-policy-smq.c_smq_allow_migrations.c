
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int migrations_allowed; } ;
struct dm_cache_policy {int dummy; } ;


 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static void smq_allow_migrations(struct dm_cache_policy *p, bool allow)
{
 struct smq_policy *mq = to_smq_policy(p);
 mq->migrations_allowed = allow;
}
