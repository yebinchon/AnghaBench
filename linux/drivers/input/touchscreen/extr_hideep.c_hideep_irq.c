
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hideep_ts {TYPE_1__* client; int xfer_buf; int reg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int BUILD_BUG_ON (int) ;
 int HIDEEP_EVENT_ADDR ;
 int HIDEEP_MAX_EVENT ;
 int HIDEEP_XFER_BUF_SIZE ;
 int IRQ_HANDLED ;
 int dev_err (int *,char*,int) ;
 int hideep_parse_and_report (struct hideep_ts*) ;
 int regmap_bulk_read (int ,int ,int ,int) ;

__attribute__((used)) static irqreturn_t hideep_irq(int irq, void *handle)
{
 struct hideep_ts *ts = handle;
 int error;

 BUILD_BUG_ON(HIDEEP_MAX_EVENT > HIDEEP_XFER_BUF_SIZE);

 error = regmap_bulk_read(ts->reg, HIDEEP_EVENT_ADDR,
     ts->xfer_buf, HIDEEP_MAX_EVENT / 2);
 if (error) {
  dev_err(&ts->client->dev, "failed to read events: %d\n", error);
  goto out;
 }

 hideep_parse_and_report(ts);

out:
 return IRQ_HANDLED;
}
