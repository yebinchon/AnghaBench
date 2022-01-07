
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe_touch {int work; int stmpe; int idev; } ;
typedef int irqreturn_t ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int STMPE_REG_TSC_CTRL ;
 int STMPE_REG_TSC_DATA_XYZ ;
 int STMPE_TSC_CTRL_TSC_EN ;
 int __stmpe_reset_fifo (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int stmpe_block_read (int ,int ,int,int*) ;
 int stmpe_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t stmpe_ts_handler(int irq, void *data)
{
 u8 data_set[4];
 int x, y, z;
 struct stmpe_touch *ts = data;





 cancel_delayed_work_sync(&ts->work);







 stmpe_set_bits(ts->stmpe, STMPE_REG_TSC_CTRL,
    STMPE_TSC_CTRL_TSC_EN, 0);

 stmpe_block_read(ts->stmpe, STMPE_REG_TSC_DATA_XYZ, 4, data_set);

 x = (data_set[0] << 4) | (data_set[1] >> 4);
 y = ((data_set[1] & 0xf) << 8) | data_set[2];
 z = data_set[3];

 input_report_abs(ts->idev, ABS_X, x);
 input_report_abs(ts->idev, ABS_Y, y);
 input_report_abs(ts->idev, ABS_PRESSURE, z);
 input_report_key(ts->idev, BTN_TOUCH, 1);
 input_sync(ts->idev);


 __stmpe_reset_fifo(ts->stmpe);


 stmpe_set_bits(ts->stmpe, STMPE_REG_TSC_CTRL,
   STMPE_TSC_CTRL_TSC_EN, STMPE_TSC_CTRL_TSC_EN);


 schedule_delayed_work(&ts->work, msecs_to_jiffies(50));

 return IRQ_HANDLED;
}
