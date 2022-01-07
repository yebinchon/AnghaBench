
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wf_sensor {int name; } ;
struct wf_lm75_sensor {int inited; int * i2c; } ;
typedef int s32 ;


 int DBG (char*,int ,int) ;
 int ENODEV ;
 int i2c_smbus_read_byte_data (int *,int) ;
 int i2c_smbus_read_word_data (int *,int ) ;
 int i2c_smbus_write_byte_data (int *,int,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int msleep (int) ;
 struct wf_lm75_sensor* wf_to_lm75 (struct wf_sensor*) ;

__attribute__((used)) static int wf_lm75_get(struct wf_sensor *sr, s32 *value)
{
 struct wf_lm75_sensor *lm = wf_to_lm75(sr);
 s32 data;

 if (lm->i2c == ((void*)0))
  return -ENODEV;


 if (!lm->inited) {
  u8 cfg_new, cfg = (u8)i2c_smbus_read_byte_data(lm->i2c, 1);

  DBG("wf_lm75: Initializing %s, cfg was: %02x\n",
      sr->name, cfg);




  cfg_new = cfg & ~0x01;
  i2c_smbus_write_byte_data(lm->i2c, 1, cfg_new);
  lm->inited = 1;


  msleep(200);
 }


 data = (s32)le16_to_cpu(i2c_smbus_read_word_data(lm->i2c, 0));
 data <<= 8;
 *value = data;

 return 0;
}
