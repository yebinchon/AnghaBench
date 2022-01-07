
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct adis {TYPE_1__* data; } ;
struct TYPE_2__ {int (* enable_irq ) (struct adis*,int) ;int msc_ctrl_reg; } ;


 int ADIS_MSC_CTRL_DATA_RDY_DIO2 ;
 int ADIS_MSC_CTRL_DATA_RDY_EN ;
 int ADIS_MSC_CTRL_DATA_RDY_POL_HIGH ;
 int adis_read_reg_16 (struct adis*,int ,int *) ;
 int adis_write_reg_16 (struct adis*,int ,int ) ;
 int stub1 (struct adis*,int) ;

int adis_enable_irq(struct adis *adis, bool enable)
{
 int ret = 0;
 uint16_t msc;

 if (adis->data->enable_irq)
  return adis->data->enable_irq(adis, enable);

 ret = adis_read_reg_16(adis, adis->data->msc_ctrl_reg, &msc);
 if (ret)
  goto error_ret;

 msc |= ADIS_MSC_CTRL_DATA_RDY_POL_HIGH;
 msc &= ~ADIS_MSC_CTRL_DATA_RDY_DIO2;
 if (enable)
  msc |= ADIS_MSC_CTRL_DATA_RDY_EN;
 else
  msc &= ~ADIS_MSC_CTRL_DATA_RDY_EN;

 ret = adis_write_reg_16(adis, adis->data->msc_ctrl_reg, msc);

error_ret:
 return ret;
}
