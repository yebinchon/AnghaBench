
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hideep_ts {TYPE_1__* client; } ;
typedef int __be32 ;
struct TYPE_2__ {int dev; } ;


 int SW_RESET_IN_PGM (int) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int hideep_enter_pgm (struct hideep_ts*) ;
 int hideep_flash_firmware (struct hideep_ts*,int const*,size_t) ;
 int hideep_load_dwz (struct hideep_ts*) ;

__attribute__((used)) static int hideep_update_firmware(struct hideep_ts *ts,
      const __be32 *ucode, size_t ucode_len)
{
 int error, error2;

 dev_dbg(&ts->client->dev, "starting firmware update");


 error = hideep_enter_pgm(ts);
 if (error)
  return error;

 error = hideep_flash_firmware(ts, ucode, ucode_len);
 if (error)
  dev_err(&ts->client->dev,
   "firmware update failed: %d\n", error);
 else
  dev_dbg(&ts->client->dev, "firmware updated successfully\n");

 SW_RESET_IN_PGM(1000);

 error2 = hideep_load_dwz(ts);
 if (error2)
  dev_err(&ts->client->dev,
   "failed to load dwz after firmware update: %d\n",
   error2);

 return error ?: error2;
}
