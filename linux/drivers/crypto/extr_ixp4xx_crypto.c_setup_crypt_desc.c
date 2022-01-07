
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct crypt_ctl {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NPE_QLEN ;
 int crypt_phys ;
 int crypt_virt ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 TYPE_1__* pdev ;

__attribute__((used)) static int setup_crypt_desc(void)
{
 struct device *dev = &pdev->dev;
 BUILD_BUG_ON(sizeof(struct crypt_ctl) != 64);
 crypt_virt = dma_alloc_coherent(dev,
     NPE_QLEN * sizeof(struct crypt_ctl),
     &crypt_phys, GFP_ATOMIC);
 if (!crypt_virt)
  return -ENOMEM;
 return 0;
}
