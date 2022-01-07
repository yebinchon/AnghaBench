
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {int fifo_threshold; int max_x; int max_y; scalar_t__ invert_y; scalar_t__ invert_x; } ;
struct iproc_ts_priv {int pen_status; int idev; TYPE_2__* pdev; TYPE_1__ cfg_params; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int CONTROLLER_STATUS ;
 int FIFO_DATA ;
 int FIFO_DATA_X_Y_MASK ;
 int INTERRUPT_STATUS ;
 int INVALID_COORD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PEN_DOWN_STATUS ;
 int PEN_UP_STATUS ;
 int TS_FIFO_INTR_MASK ;
 int TS_PEN_DOWN ;
 int TS_PEN_INTR_MASK ;
 int X_COORD_SHIFT ;
 int Y_COORD_SHIFT ;
 int dev_dbg (int *,char*,int,...) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 struct iproc_ts_priv* platform_get_drvdata (struct platform_device*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t iproc_touchscreen_interrupt(int irq, void *data)
{
 struct platform_device *pdev = data;
 struct iproc_ts_priv *priv = platform_get_drvdata(pdev);
 u32 intr_status;
 u32 raw_coordinate;
 u16 x;
 u16 y;
 int i;
 bool needs_sync = 0;

 regmap_read(priv->regmap, INTERRUPT_STATUS, &intr_status);
 intr_status &= TS_PEN_INTR_MASK | TS_FIFO_INTR_MASK;
 if (intr_status == 0)
  return IRQ_NONE;


 regmap_write(priv->regmap, INTERRUPT_STATUS, intr_status);

 if (intr_status & TS_PEN_INTR_MASK) {
  regmap_read(priv->regmap, CONTROLLER_STATUS, &priv->pen_status);
  if (priv->pen_status & TS_PEN_DOWN)
   priv->pen_status = PEN_DOWN_STATUS;
  else
   priv->pen_status = PEN_UP_STATUS;

  input_report_key(priv->idev, BTN_TOUCH, priv->pen_status);
  needs_sync = 1;

  dev_dbg(&priv->pdev->dev,
   "pen up-down (%d)\n", priv->pen_status);
 }


 if (intr_status & TS_FIFO_INTR_MASK) {
  for (i = 0; i < priv->cfg_params.fifo_threshold; i++) {
   regmap_read(priv->regmap, FIFO_DATA, &raw_coordinate);
   if (raw_coordinate == INVALID_COORD)
    continue;






   x = (raw_coordinate >> X_COORD_SHIFT) &
    FIFO_DATA_X_Y_MASK;
   y = (raw_coordinate >> Y_COORD_SHIFT) &
    FIFO_DATA_X_Y_MASK;


   x = (x >> 4) & 0x0FFF;
   y = (y >> 4) & 0x0FFF;


   if (priv->cfg_params.invert_x)
    x = priv->cfg_params.max_x - x;

   if (priv->cfg_params.invert_y)
    y = priv->cfg_params.max_y - y;

   input_report_abs(priv->idev, ABS_X, x);
   input_report_abs(priv->idev, ABS_Y, y);
   needs_sync = 1;

   dev_dbg(&priv->pdev->dev, "xy (0x%x 0x%x)\n", x, y);
  }
 }

 if (needs_sync)
  input_sync(priv->idev);

 return IRQ_HANDLED;
}
