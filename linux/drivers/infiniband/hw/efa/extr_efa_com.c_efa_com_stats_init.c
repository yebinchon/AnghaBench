
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stats; } ;
struct efa_com_dev {TYPE_1__ aq; } ;
typedef int atomic64_t ;


 int atomic64_set (int *,int ) ;

__attribute__((used)) static void efa_com_stats_init(struct efa_com_dev *edev)
{
 atomic64_t *s = (atomic64_t *)&edev->aq.stats;
 int i;

 for (i = 0; i < sizeof(edev->aq.stats) / sizeof(*s); i++, s++)
  atomic64_set(s, 0);
}
