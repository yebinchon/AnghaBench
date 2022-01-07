
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qce_device {int dummy; } ;


 int BIT (int ) ;
 int ENXIO ;
 int OPERATION_DONE_SHIFT ;
 int REG_STATUS ;
 int STATUS_ERRORS ;
 int qce_read (struct qce_device*,int ) ;

int qce_check_status(struct qce_device *qce, u32 *status)
{
 int ret = 0;

 *status = qce_read(qce, REG_STATUS);







 if (*status & STATUS_ERRORS || !(*status & BIT(OPERATION_DONE_SHIFT)))
  ret = -ENXIO;

 return ret;
}
