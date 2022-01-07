
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct stmfts_data {TYPE_1__* client; void* config_ver; void* config_id; void* fw_ver; void* chip_ver; void* chip_id; int regulators; } ;
typedef int reg ;
typedef int __be16 ;
struct TYPE_3__ {int dev; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int EIO ;
 int STMFTS_FULL_FORCE_CALIBRATION ;
 int STMFTS_MS_CX_TUNING ;
 int STMFTS_READ_INFO ;
 int STMFTS_SLEEP_IN ;
 int STMFTS_SLEEP_OUT ;
 int STMFTS_SS_CX_TUNING ;
 int STMFTS_SYSTEM_RESET ;
 void* be16_to_cpup (int *) ;
 int dev_warn (int *,char*,int) ;
 int enable_irq (int ) ;
 int i2c_smbus_read_i2c_block_data (TYPE_1__*,int ,int,void**) ;
 int i2c_smbus_write_byte (TYPE_1__*,int ) ;
 int msleep (int) ;
 int regulator_bulk_enable (int ,int ) ;
 int stmfts_command (struct stmfts_data*,int ) ;

__attribute__((used)) static int stmfts_power_on(struct stmfts_data *sdata)
{
 int err;
 u8 reg[8];

 err = regulator_bulk_enable(ARRAY_SIZE(sdata->regulators),
        sdata->regulators);
 if (err)
  return err;





 msleep(20);

 err = i2c_smbus_read_i2c_block_data(sdata->client, STMFTS_READ_INFO,
         sizeof(reg), reg);
 if (err < 0)
  return err;
 if (err != sizeof(reg))
  return -EIO;

 sdata->chip_id = be16_to_cpup((__be16 *)&reg[6]);
 sdata->chip_ver = reg[0];
 sdata->fw_ver = be16_to_cpup((__be16 *)&reg[2]);
 sdata->config_id = reg[4];
 sdata->config_ver = reg[5];

 enable_irq(sdata->client->irq);

 msleep(50);

 err = stmfts_command(sdata, STMFTS_SYSTEM_RESET);
 if (err)
  return err;

 err = stmfts_command(sdata, STMFTS_SLEEP_OUT);
 if (err)
  return err;


 err = stmfts_command(sdata, STMFTS_MS_CX_TUNING);
 if (err)
  dev_warn(&sdata->client->dev,
    "failed to perform mutual auto tune: %d\n", err);


 err = stmfts_command(sdata, STMFTS_SS_CX_TUNING);
 if (err)
  dev_warn(&sdata->client->dev,
    "failed to perform self auto tune: %d\n", err);

 err = stmfts_command(sdata, STMFTS_FULL_FORCE_CALIBRATION);
 if (err)
  return err;





 (void) i2c_smbus_write_byte(sdata->client, STMFTS_SLEEP_IN);

 return 0;
}
