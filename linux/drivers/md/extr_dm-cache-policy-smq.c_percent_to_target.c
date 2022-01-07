
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int cache_size; } ;


 unsigned int from_cblock (int ) ;

__attribute__((used)) static unsigned percent_to_target(struct smq_policy *mq, unsigned p)
{
 return from_cblock(mq->cache_size) * p / 100u;
}
