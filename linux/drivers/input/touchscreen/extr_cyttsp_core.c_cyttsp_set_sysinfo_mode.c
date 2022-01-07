
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tts_verl; int tts_verh; } ;
struct cyttsp {TYPE_1__ sysinfo_data; } ;


 int CY_DELAY_DFLT ;
 int CY_REG_BASE ;
 int CY_SYSINFO_MODE ;
 int EIO ;
 int cyttsp_handshake (struct cyttsp*) ;
 int memset (TYPE_1__*,int ,int) ;
 int msleep (int ) ;
 int ttsp_read_block_data (struct cyttsp*,int ,int,TYPE_1__*) ;
 int ttsp_send_command (struct cyttsp*,int ) ;

__attribute__((used)) static int cyttsp_set_sysinfo_mode(struct cyttsp *ts)
{
 int error;

 memset(&ts->sysinfo_data, 0, sizeof(ts->sysinfo_data));


 error = ttsp_send_command(ts, CY_SYSINFO_MODE);
 if (error)
  return error;


 msleep(CY_DELAY_DFLT);
 error = ttsp_read_block_data(ts, CY_REG_BASE, sizeof(ts->sysinfo_data),
          &ts->sysinfo_data);
 if (error)
  return error;

 error = cyttsp_handshake(ts);
 if (error)
  return error;

 if (!ts->sysinfo_data.tts_verh && !ts->sysinfo_data.tts_verl)
  return -EIO;

 return 0;
}
