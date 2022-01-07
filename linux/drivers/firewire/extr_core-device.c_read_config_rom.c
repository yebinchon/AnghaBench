
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fw_device {int max_speed; int* config_rom; int config_rom_length; int max_rec; int cmc; int irmc; TYPE_1__* node; struct fw_card* card; } ;
struct fw_card {int link_speed; scalar_t__ beta_repeaters_present; } ;
struct TYPE_2__ {int max_speed; } ;


 int CSR_CONFIG_ROM ;
 int CSR_REGISTER_BASE ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int MAX_CONFIG_ROM_SIZE ;
 int RCODE_BUSY ;
 int RCODE_COMPLETE ;
 int SCODE_100 ;
 int SCODE_BETA ;
 scalar_t__ WARN_ON (int) ;
 int down_write (int *) ;
 int fw_device_rwsem ;
 int fw_err (struct fw_card*,char*,int,int) ;
 int kfree (int const*) ;
 int* kmalloc (int,int ) ;
 int* kmemdup (int*,int,int ) ;
 int memset (int*,int ,int) ;
 int read_rom (struct fw_device*,int,int,int*) ;
 int up_write (int *) ;

__attribute__((used)) static int read_config_rom(struct fw_device *device, int generation)
{
 struct fw_card *card = device->card;
 const u32 *old_rom, *new_rom;
 u32 *rom, *stack;
 u32 sp, key;
 int i, end, length, ret;

 rom = kmalloc(sizeof(*rom) * MAX_CONFIG_ROM_SIZE +
        sizeof(*stack) * MAX_CONFIG_ROM_SIZE, GFP_KERNEL);
 if (rom == ((void*)0))
  return -ENOMEM;

 stack = &rom[MAX_CONFIG_ROM_SIZE];
 memset(rom, 0, sizeof(*rom) * MAX_CONFIG_ROM_SIZE);

 device->max_speed = SCODE_100;


 for (i = 0; i < 5; i++) {
  ret = read_rom(device, generation, i, &rom[i]);
  if (ret != RCODE_COMPLETE)
   goto out;
  if (i == 0 && rom[i] == 0) {
   ret = RCODE_BUSY;
   goto out;
  }
 }

 device->max_speed = device->node->max_speed;
 if ((rom[2] & 0x7) < device->max_speed ||
     device->max_speed == SCODE_BETA ||
     card->beta_repeaters_present) {
  u32 dummy;


  if (device->max_speed == SCODE_BETA)
   device->max_speed = card->link_speed;

  while (device->max_speed > SCODE_100) {
   if (read_rom(device, generation, 0, &dummy) ==
       RCODE_COMPLETE)
    break;
   device->max_speed--;
  }
 }
 length = i;
 sp = 0;
 stack[sp++] = 0xc0000005;
 while (sp > 0) {






  key = stack[--sp];
  i = key & 0xffffff;
  if (WARN_ON(i >= MAX_CONFIG_ROM_SIZE)) {
   ret = -ENXIO;
   goto out;
  }


  ret = read_rom(device, generation, i, &rom[i]);
  if (ret != RCODE_COMPLETE)
   goto out;
  end = i + (rom[i] >> 16) + 1;
  if (end > MAX_CONFIG_ROM_SIZE) {





   fw_err(card, "skipped invalid ROM block %x at %llx\n",
          rom[i],
          i * 4 | CSR_REGISTER_BASE | CSR_CONFIG_ROM);
   rom[i] = 0;
   end = i;
  }
  i++;






  for (; i < end; i++) {
   ret = read_rom(device, generation, i, &rom[i]);
   if (ret != RCODE_COMPLETE)
    goto out;

   if ((key >> 30) != 3 || (rom[i] >> 30) < 2)
    continue;







   if (i + (rom[i] & 0xffffff) >= MAX_CONFIG_ROM_SIZE) {
    fw_err(card,
           "skipped unsupported ROM entry %x at %llx\n",
           rom[i],
           i * 4 | CSR_REGISTER_BASE | CSR_CONFIG_ROM);
    rom[i] = 0;
    continue;
   }
   stack[sp++] = i + rom[i];
  }
  if (length < i)
   length = i;
 }

 old_rom = device->config_rom;
 new_rom = kmemdup(rom, length * 4, GFP_KERNEL);
 if (new_rom == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }

 down_write(&fw_device_rwsem);
 device->config_rom = new_rom;
 device->config_rom_length = length;
 up_write(&fw_device_rwsem);

 kfree(old_rom);
 ret = RCODE_COMPLETE;
 device->max_rec = rom[2] >> 12 & 0xf;
 device->cmc = rom[2] >> 30 & 1;
 device->irmc = rom[2] >> 31 & 1;
 out:
 kfree(rom);

 return ret;
}
