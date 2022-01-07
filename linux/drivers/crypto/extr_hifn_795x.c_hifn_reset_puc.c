
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_device {int dummy; } ;


 int HIFN_0_PUCTRL ;
 int HIFN_PUCTRL_DMAENA ;
 int hifn_wait_puc (struct hifn_device*) ;
 int hifn_write_0 (struct hifn_device*,int ,int ) ;

__attribute__((used)) static void hifn_reset_puc(struct hifn_device *dev)
{
 hifn_write_0(dev, HIFN_0_PUCTRL, HIFN_PUCTRL_DMAENA);
 hifn_wait_puc(dev);
}
