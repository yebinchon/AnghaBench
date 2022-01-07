
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_v2_priv {int tsq; int tpq; } ;
struct hns_roce_dev {TYPE_1__* pci_dev; struct hns_roce_v2_priv* priv; } ;
struct TYPE_2__ {int revision; } ;


 int hns_roce_free_link_table (struct hns_roce_dev*,int *) ;
 int hns_roce_function_clear (struct hns_roce_dev*) ;

__attribute__((used)) static void hns_roce_v2_exit(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_v2_priv *priv = hr_dev->priv;

 if (hr_dev->pci_dev->revision == 0x21)
  hns_roce_function_clear(hr_dev);

 hns_roce_free_link_table(hr_dev, &priv->tpq);
 hns_roce_free_link_table(hr_dev, &priv->tsq);
}
