
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ak8974 {char const* name; unsigned int variant; TYPE_1__* i2c; int map; } ;
typedef int sn ;
typedef int fab_data2 ;
typedef int fab_data1 ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int AK8974_WHOAMI ;



 int AMI305_SN ;
 int AMI305_VER ;
 int AMI306_FINEOUTPUT_X ;
 int AMI306_OFFZERO_X ;
 int ENODEV ;
 int add_device_randomness (int *,int) ;
 int ak8974_get_u16_val (struct ak8974*,int ,int *) ;
 int ak8974_read_calib_data (struct ak8974*,int ,int *,int) ;
 int dev_err (int *,char*,unsigned int) ;
 int dev_info (int *,char*,...) ;
 int le16_to_cpu (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ak8974_detect(struct ak8974 *ak8974)
{
 unsigned int whoami;
 const char *name;
 int ret;
 unsigned int fw;
 u16 sn;

 ret = regmap_read(ak8974->map, AK8974_WHOAMI, &whoami);
 if (ret)
  return ret;

 name = "ami305";

 switch (whoami) {
 case 128:
  name = "ami306";

 case 129:
  ret = regmap_read(ak8974->map, AMI305_VER, &fw);
  if (ret)
   return ret;
  fw &= 0x7f;
  ret = ak8974_get_u16_val(ak8974, AMI305_SN, &sn);
  if (ret)
   return ret;
  add_device_randomness(&sn, sizeof(sn));
  dev_info(&ak8974->i2c->dev,
    "detected %s, FW ver %02x, S/N: %04x\n",
    name, fw, sn);
  break;
 case 130:
  name = "ak8974";
  dev_info(&ak8974->i2c->dev, "detected AK8974\n");
  break;
 default:
  dev_err(&ak8974->i2c->dev, "unsupported device (%02x) ",
   whoami);
  return -ENODEV;
 }

 ak8974->name = name;
 ak8974->variant = whoami;

 if (whoami == 128) {
  __le16 fab_data1[9], fab_data2[3];
  int i;

  ak8974_read_calib_data(ak8974, AMI306_FINEOUTPUT_X,
           fab_data1, sizeof(fab_data1));
  ak8974_read_calib_data(ak8974, AMI306_OFFZERO_X,
           fab_data2, sizeof(fab_data2));

  for (i = 0; i < 3; ++i) {
   static const char axis[3] = "XYZ";
   static const char pgaxis[6] = "ZYZXYX";
   unsigned offz = le16_to_cpu(fab_data2[i]) & 0x7F;
   unsigned fine = le16_to_cpu(fab_data1[i]);
   unsigned sens = le16_to_cpu(fab_data1[i + 3]);
   unsigned pgain1 = le16_to_cpu(fab_data1[i + 6]);
   unsigned pgain2 = pgain1 >> 8;

   pgain1 &= 0xFF;

   dev_info(&ak8974->i2c->dev,
     "factory calibration for axis %c: offz=%u sens=%u fine=%u pga%c=%u pga%c=%u\n",
     axis[i], offz, sens, fine, pgaxis[i * 2],
     pgain1, pgaxis[i * 2 + 1], pgain2);
  }
 }

 return 0;
}
