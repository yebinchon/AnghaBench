
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyttsp {int irq; } ;


 int CY_LOW_POWER_MODE ;
 int disable_irq (int ) ;
 int ttsp_send_command (struct cyttsp*,int ) ;

__attribute__((used)) static int cyttsp_disable(struct cyttsp *ts)
{
 int error;

 error = ttsp_send_command(ts, CY_LOW_POWER_MODE);
 if (error)
  return error;

 disable_irq(ts->irq);

 return 0;
}
