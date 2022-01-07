
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iproc_ts_priv {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ANALOG_CONTROL ;
 int AUX_DATA ;
 int CONTROLLER_STATUS ;
 int DEBOUNCE_CNTR_STAT ;
 int FIFO_DATA ;
 int INTERRUPT_MASK ;
 int INTERRUPT_STATUS ;
 int INTERRUPT_THRES ;
 int REGCTL1 ;
 int REGCTL2 ;
 int REM_CNTR_STAT ;
 int SCAN_CNTR_STAT ;
 int SETTLING_TIMER_STAT ;
 int SOFT_BYPASS_CONTROL ;
 int SOFT_BYPASS_DATA ;
 int SPARE_REG ;
 int dbg_reg (struct device*,struct iproc_ts_priv*,int ) ;

__attribute__((used)) static void ts_reg_dump(struct iproc_ts_priv *priv)
{
 struct device *dev = &priv->pdev->dev;

 dbg_reg(dev, priv, REGCTL1);
 dbg_reg(dev, priv, REGCTL2);
 dbg_reg(dev, priv, INTERRUPT_THRES);
 dbg_reg(dev, priv, INTERRUPT_MASK);
 dbg_reg(dev, priv, INTERRUPT_STATUS);
 dbg_reg(dev, priv, CONTROLLER_STATUS);
 dbg_reg(dev, priv, FIFO_DATA);
 dbg_reg(dev, priv, ANALOG_CONTROL);
 dbg_reg(dev, priv, AUX_DATA);
 dbg_reg(dev, priv, DEBOUNCE_CNTR_STAT);
 dbg_reg(dev, priv, SCAN_CNTR_STAT);
 dbg_reg(dev, priv, REM_CNTR_STAT);
 dbg_reg(dev, priv, SETTLING_TIMER_STAT);
 dbg_reg(dev, priv, SPARE_REG);
 dbg_reg(dev, priv, SOFT_BYPASS_CONTROL);
 dbg_reg(dev, priv, SOFT_BYPASS_DATA);
}
