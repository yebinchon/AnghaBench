
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {scalar_t__ byte; scalar_t__ word; int* block; } ;
typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct stub_chip {size_t pointer; size_t bank_reg; int bank_sel; int bank_shift; int bank_mask; int* words; int bank_words; } ;
struct smbus_block_data {int len; int* block; } ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;

 int I2C_SMBUS_BLOCK_MAX ;





 char I2C_SMBUS_WRITE ;
 scalar_t__* chip_addr ;
 int dev_dbg (int *,char*,...) ;
 struct stub_chip* stub_chips ;
 int stub_chips_nr ;
 struct smbus_block_data* stub_find_block (int *,struct stub_chip*,size_t,int) ;
 scalar_t__* stub_get_wordp (struct stub_chip*,size_t) ;

__attribute__((used)) static s32 stub_xfer(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 char read_write, u8 command, int size, union i2c_smbus_data *data)
{
 s32 ret;
 int i, len;
 struct stub_chip *chip = ((void*)0);
 struct smbus_block_data *b;
 u16 *wordp;


 for (i = 0; i < stub_chips_nr; i++) {
  if (addr == chip_addr[i]) {
   chip = stub_chips + i;
   break;
  }
 }
 if (!chip)
  return -ENODEV;

 switch (size) {

 case 129:
  dev_dbg(&adap->dev, "smbus quick - addr 0x%02x\n", addr);
  ret = 0;
  break;

 case 132:
  if (read_write == I2C_SMBUS_WRITE) {
   chip->pointer = command;
   dev_dbg(&adap->dev,
    "smbus byte - addr 0x%02x, wrote 0x%02x.\n",
    addr, command);
  } else {
   wordp = stub_get_wordp(chip, chip->pointer++);
   data->byte = *wordp & 0xff;
   dev_dbg(&adap->dev,
    "smbus byte - addr 0x%02x, read  0x%02x.\n",
    addr, data->byte);
  }

  ret = 0;
  break;

 case 131:
  wordp = stub_get_wordp(chip, command);
  if (read_write == I2C_SMBUS_WRITE) {
   *wordp &= 0xff00;
   *wordp |= data->byte;
   dev_dbg(&adap->dev,
    "smbus byte data - addr 0x%02x, wrote 0x%02x at 0x%02x.\n",
    addr, data->byte, command);


   if (chip->bank_words && command == chip->bank_reg) {
    chip->bank_sel =
     (data->byte >> chip->bank_shift)
     & chip->bank_mask;
    dev_dbg(&adap->dev,
     "switching to bank %u.\n",
     chip->bank_sel);
   }
  } else {
   data->byte = *wordp & 0xff;
   dev_dbg(&adap->dev,
    "smbus byte data - addr 0x%02x, read  0x%02x at 0x%02x.\n",
    addr, data->byte, command);
  }
  chip->pointer = command + 1;

  ret = 0;
  break;

 case 128:
  wordp = stub_get_wordp(chip, command);
  if (read_write == I2C_SMBUS_WRITE) {
   *wordp = data->word;
   dev_dbg(&adap->dev,
    "smbus word data - addr 0x%02x, wrote 0x%04x at 0x%02x.\n",
    addr, data->word, command);
  } else {
   data->word = *wordp;
   dev_dbg(&adap->dev,
    "smbus word data - addr 0x%02x, read  0x%04x at 0x%02x.\n",
    addr, data->word, command);
  }

  ret = 0;
  break;

 case 130:




  if (data->block[0] > 256 - command)
   data->block[0] = 256 - command;
  len = data->block[0];
  if (read_write == I2C_SMBUS_WRITE) {
   for (i = 0; i < len; i++) {
    chip->words[command + i] &= 0xff00;
    chip->words[command + i] |= data->block[1 + i];
   }
   dev_dbg(&adap->dev,
    "i2c block data - addr 0x%02x, wrote %d bytes at 0x%02x.\n",
    addr, len, command);
  } else {
   for (i = 0; i < len; i++) {
    data->block[1 + i] =
     chip->words[command + i] & 0xff;
   }
   dev_dbg(&adap->dev,
    "i2c block data - addr 0x%02x, read  %d bytes at 0x%02x.\n",
    addr, len, command);
  }

  ret = 0;
  break;

 case 133:




  b = stub_find_block(&adap->dev, chip, command, 0);
  if (read_write == I2C_SMBUS_WRITE) {
   len = data->block[0];
   if (len == 0 || len > I2C_SMBUS_BLOCK_MAX) {
    ret = -EINVAL;
    break;
   }
   if (b == ((void*)0)) {
    b = stub_find_block(&adap->dev, chip, command,
          1);
    if (b == ((void*)0)) {
     ret = -ENOMEM;
     break;
    }
   }

   if (len > b->len)
    b->len = len;
   for (i = 0; i < len; i++)
    b->block[i] = data->block[i + 1];

   chip->words[command] = (b->block[0] << 8) | b->len;
   dev_dbg(&adap->dev,
    "smbus block data - addr 0x%02x, wrote %d bytes at 0x%02x.\n",
    addr, len, command);
  } else {
   if (b == ((void*)0)) {
    dev_dbg(&adap->dev,
     "SMBus block read command without prior block write not supported\n");
    ret = -EOPNOTSUPP;
    break;
   }
   len = b->len;
   data->block[0] = len;
   for (i = 0; i < len; i++)
    data->block[i + 1] = b->block[i];
   dev_dbg(&adap->dev,
    "smbus block data - addr 0x%02x, read  %d bytes at 0x%02x.\n",
    addr, len, command);
  }

  ret = 0;
  break;

 default:
  dev_dbg(&adap->dev, "Unsupported I2C/SMBus command\n");
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
