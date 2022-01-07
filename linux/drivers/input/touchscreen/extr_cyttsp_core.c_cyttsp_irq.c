
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cyttsp_xydata {int dummy; } ;
struct TYPE_2__ {int tt_mode; } ;
struct cyttsp {scalar_t__ state; int dev; TYPE_1__ xy_data; int bl_ready; } ;
typedef int irqreturn_t ;


 scalar_t__ CY_BL_STATE ;
 scalar_t__ CY_IDLE_STATE ;
 int CY_REG_BASE ;
 scalar_t__ GET_BOOTLOADERMODE (int ) ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int cyttsp_exit_bl_mode (struct cyttsp*) ;
 int cyttsp_handshake (struct cyttsp*) ;
 int cyttsp_report_tchdata (struct cyttsp*) ;
 int dev_err (int ,char*,int) ;
 int ttsp_read_block_data (struct cyttsp*,int ,int,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t cyttsp_irq(int irq, void *handle)
{
 struct cyttsp *ts = handle;
 int error;

 if (unlikely(ts->state == CY_BL_STATE)) {
  complete(&ts->bl_ready);
  goto out;
 }


 error = ttsp_read_block_data(ts, CY_REG_BASE,
     sizeof(struct cyttsp_xydata), &ts->xy_data);
 if (error)
  goto out;


 error = cyttsp_handshake(ts);
 if (error)
  goto out;

 if (unlikely(ts->state == CY_IDLE_STATE))
  goto out;

 if (GET_BOOTLOADERMODE(ts->xy_data.tt_mode)) {




  error = cyttsp_exit_bl_mode(ts);
  if (error) {
   dev_err(ts->dev,
    "Could not return to operational mode, err: %d\n",
    error);
   ts->state = CY_IDLE_STATE;
  }
 } else {
  cyttsp_report_tchdata(ts);
 }

out:
 return IRQ_HANDLED;
}
