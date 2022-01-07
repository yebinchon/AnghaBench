
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm8941_pwrkey {int input; TYPE_1__* data; int code; scalar_t__ baseaddr; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {unsigned int status_bit; } ;


 int IRQ_HANDLED ;
 scalar_t__ PON_RT_STS ;
 int input_report_key (int ,int ,unsigned int) ;
 int input_sync (int ) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static irqreturn_t pm8941_pwrkey_irq(int irq, void *_data)
{
 struct pm8941_pwrkey *pwrkey = _data;
 unsigned int sts;
 int error;

 error = regmap_read(pwrkey->regmap,
       pwrkey->baseaddr + PON_RT_STS, &sts);
 if (error)
  return IRQ_HANDLED;

 input_report_key(pwrkey->input, pwrkey->code,
    sts & pwrkey->data->status_bit);
 input_sync(pwrkey->input);

 return IRQ_HANDLED;
}
