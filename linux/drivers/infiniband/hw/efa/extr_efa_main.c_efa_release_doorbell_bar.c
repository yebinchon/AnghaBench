
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db_bar; } ;
struct efa_dev {TYPE_1__ dev_attr; } ;


 int BIT (int ) ;
 int EFA_BASE_BAR_MASK ;
 int efa_release_bars (struct efa_dev*,int) ;

__attribute__((used)) static void efa_release_doorbell_bar(struct efa_dev *dev)
{
 if (!(BIT(dev->dev_attr.db_bar) & EFA_BASE_BAR_MASK))
  efa_release_bars(dev, BIT(dev->dev_attr.db_bar));
}
