
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_ts_data {scalar_t__ base; scalar_t__ input; void* temp_data; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TEMP_DATA ;
 int TEMP_DATA_PENDING ;
 scalar_t__ TP_INT_FIFOS ;
 void* readl (scalar_t__) ;
 int sun4i_ts_irq_handle_input (struct sun4i_ts_data*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sun4i_ts_irq(int irq, void *dev_id)
{
 struct sun4i_ts_data *ts = dev_id;
 u32 reg_val;

 reg_val = readl(ts->base + TP_INT_FIFOS);

 if (reg_val & TEMP_DATA_PENDING)
  ts->temp_data = readl(ts->base + TEMP_DATA);

 if (ts->input)
  sun4i_ts_irq_handle_input(ts, reg_val);

 writel(reg_val, ts->base + TP_INT_FIFOS);

 return IRQ_HANDLED;
}
