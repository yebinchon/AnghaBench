
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmfts_data {int cmd_done; int client; } ;


 int ETIMEDOUT ;
 int i2c_smbus_write_byte (int ,int const) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int stmfts_command(struct stmfts_data *sdata, const u8 cmd)
{
 int err;

 reinit_completion(&sdata->cmd_done);

 err = i2c_smbus_write_byte(sdata->client, cmd);
 if (err)
  return err;

 if (!wait_for_completion_timeout(&sdata->cmd_done,
      msecs_to_jiffies(1000)))
  return -ETIMEDOUT;

 return 0;
}
