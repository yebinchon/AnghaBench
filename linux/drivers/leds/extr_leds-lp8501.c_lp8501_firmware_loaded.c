
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp55xx_chip {TYPE_1__* cl; struct firmware* fw; } ;
struct firmware {scalar_t__ size; int data; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ LP8501_PROGRAM_LENGTH ;
 int dev_err (int *,char*,scalar_t__) ;
 int lp8501_load_engine (struct lp55xx_chip*) ;
 int lp8501_update_program_memory (struct lp55xx_chip*,int ,scalar_t__) ;

__attribute__((used)) static void lp8501_firmware_loaded(struct lp55xx_chip *chip)
{
 const struct firmware *fw = chip->fw;

 if (fw->size > LP8501_PROGRAM_LENGTH) {
  dev_err(&chip->cl->dev, "firmware data size overflow: %zu\n",
   fw->size);
  return;
 }







 lp8501_load_engine(chip);
 lp8501_update_program_memory(chip, fw->data, fw->size);
}
