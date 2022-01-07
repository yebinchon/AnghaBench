
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {unsigned int hotspot_level_jump; int hotspot_stats; } ;





 int stats_assess (int *) ;

__attribute__((used)) static void update_level_jump(struct smq_policy *mq)
{
 switch (stats_assess(&mq->hotspot_stats)) {
 case 129:
  mq->hotspot_level_jump = 4u;
  break;

 case 130:
  mq->hotspot_level_jump = 2u;
  break;

 case 128:
  mq->hotspot_level_jump = 1u;
  break;
 }
}
