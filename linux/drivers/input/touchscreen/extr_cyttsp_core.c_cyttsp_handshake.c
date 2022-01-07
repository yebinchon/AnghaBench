
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hst_mode; } ;
struct cyttsp {TYPE_1__ xy_data; scalar_t__ use_hndshk; } ;


 int CY_HNDSHK_BIT ;
 int ttsp_send_command (struct cyttsp*,int) ;

__attribute__((used)) static int cyttsp_handshake(struct cyttsp *ts)
{
 if (ts->use_hndshk)
  return ttsp_send_command(ts,
    ts->xy_data.hst_mode ^ CY_HNDSHK_BIT);

 return 0;
}
