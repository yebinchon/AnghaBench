
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct hns_roce_dev {struct pci_dev* pci_dev; struct device* dev; } ;
struct hnae3_ae_ops {int (* reset_event ) (struct pci_dev*,int *) ;int (* set_default_reset_request ) (struct hnae3_ae_dev*,int ) ;} ;
struct hnae3_ae_dev {struct hnae3_ae_ops* ops; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int BIT (int) ;
 int HNAE3_FUNC_RESET ;
 int HNS_ROCE_V2_VF_ABN_INT_EN_S ;
 int HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S ;
 int HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S ;
 int HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S ;
 int IRQ_RETVAL (int) ;
 int ROCEE_VF_ABN_INT_EN_REG ;
 int ROCEE_VF_ABN_INT_ST_REG ;
 int dev_err (struct device*,char*) ;
 struct hnae3_ae_dev* pci_get_drvdata (struct pci_dev*) ;
 int roce_read (struct hns_roce_dev*,int ) ;
 int roce_write (struct hns_roce_dev*,int ,int) ;
 int stub1 (struct hnae3_ae_dev*,int ) ;
 int stub2 (struct pci_dev*,int *) ;

__attribute__((used)) static irqreturn_t hns_roce_v2_msix_interrupt_abn(int irq, void *dev_id)
{
 struct hns_roce_dev *hr_dev = dev_id;
 struct device *dev = hr_dev->dev;
 int int_work = 0;
 u32 int_st;
 u32 int_en;


 int_st = roce_read(hr_dev, ROCEE_VF_ABN_INT_ST_REG);
 int_en = roce_read(hr_dev, ROCEE_VF_ABN_INT_EN_REG);

 if (int_st & BIT(HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S)) {
  struct pci_dev *pdev = hr_dev->pci_dev;
  struct hnae3_ae_dev *ae_dev = pci_get_drvdata(pdev);
  const struct hnae3_ae_ops *ops = ae_dev->ops;

  dev_err(dev, "AEQ overflow!\n");

  int_st |= 1 << HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S;
  roce_write(hr_dev, ROCEE_VF_ABN_INT_ST_REG, int_st);


  if (ops->set_default_reset_request)
   ops->set_default_reset_request(ae_dev,
             HNAE3_FUNC_RESET);
  if (ops->reset_event)
   ops->reset_event(pdev, ((void*)0));

  int_en |= 1 << HNS_ROCE_V2_VF_ABN_INT_EN_S;
  roce_write(hr_dev, ROCEE_VF_ABN_INT_EN_REG, int_en);

  int_work = 1;
 } else if (int_st & BIT(HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S)) {
  dev_err(dev, "BUS ERR!\n");

  int_st |= 1 << HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S;
  roce_write(hr_dev, ROCEE_VF_ABN_INT_ST_REG, int_st);

  int_en |= 1 << HNS_ROCE_V2_VF_ABN_INT_EN_S;
  roce_write(hr_dev, ROCEE_VF_ABN_INT_EN_REG, int_en);

  int_work = 1;
 } else if (int_st & BIT(HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S)) {
  dev_err(dev, "OTHER ERR!\n");

  int_st |= 1 << HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S;
  roce_write(hr_dev, ROCEE_VF_ABN_INT_ST_REG, int_st);

  int_en |= 1 << HNS_ROCE_V2_VF_ABN_INT_EN_S;
  roce_write(hr_dev, ROCEE_VF_ABN_INT_EN_REG, int_en);

  int_work = 1;
 } else
  dev_err(dev, "There is no abnormal irq found!\n");

 return IRQ_RETVAL(int_work);
}
