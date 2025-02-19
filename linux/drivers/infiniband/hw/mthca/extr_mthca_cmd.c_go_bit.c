
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {scalar_t__ hcr; } ;


 int HCR_GO_BIT ;
 scalar_t__ HCR_STATUS_OFFSET ;
 int readl (scalar_t__) ;
 int swab32 (int) ;

__attribute__((used)) static inline int go_bit(struct mthca_dev *dev)
{
 return readl(dev->hcr + HCR_STATUS_OFFSET) &
  swab32(1 << HCR_GO_BIT);
}
