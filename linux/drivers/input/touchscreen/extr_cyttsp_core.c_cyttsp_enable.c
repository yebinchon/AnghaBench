
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hst_mode; } ;
struct cyttsp {int irq; TYPE_1__ xy_data; } ;


 int CY_REG_BASE ;
 int EIO ;
 scalar_t__ GET_HSTMODE (int ) ;
 int enable_irq (int ) ;
 int ttsp_read_block_data (struct cyttsp*,int ,int,TYPE_1__*) ;

__attribute__((used)) static int cyttsp_enable(struct cyttsp *ts)
{
 int error;







 error = ttsp_read_block_data(ts, CY_REG_BASE,
         sizeof(ts->xy_data), &ts->xy_data);
 if (error)
  return error;

 if (GET_HSTMODE(ts->xy_data.hst_mode))
  return -EIO;

 enable_irq(ts->irq);

 return 0;
}
