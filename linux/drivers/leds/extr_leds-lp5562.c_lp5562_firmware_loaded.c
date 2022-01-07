
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp55xx_chip {TYPE_1__* cl; struct firmware* fw; } ;
struct firmware {int size; int data; } ;
struct TYPE_2__ {int dev; } ;


 int LP5562_PROGRAM_LENGTH ;
 int dev_err (int *,char*,int) ;
 int lp5562_load_engine (struct lp55xx_chip*) ;
 int lp5562_update_firmware (struct lp55xx_chip*,int ,int) ;

__attribute__((used)) static void lp5562_firmware_loaded(struct lp55xx_chip *chip)
{
 const struct firmware *fw = chip->fw;





 if (fw->size > (LP5562_PROGRAM_LENGTH * 2)) {
  dev_err(&chip->cl->dev, "firmware data size overflow: %zu\n",
   fw->size);
  return;
 }







 lp5562_load_engine(chip);
 lp5562_update_firmware(chip, fw->data, fw->size);
}
