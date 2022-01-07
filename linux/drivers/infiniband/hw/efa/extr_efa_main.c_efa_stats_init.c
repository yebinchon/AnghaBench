
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_dev {int stats; } ;
typedef int atomic64_t ;


 int atomic64_set (int *,int ) ;

__attribute__((used)) static void efa_stats_init(struct efa_dev *dev)
{
 atomic64_t *s = (atomic64_t *)&dev->stats;
 int i;

 for (i = 0; i < sizeof(dev->stats) / sizeof(*s); i++, s++)
  atomic64_set(s, 0);
}
