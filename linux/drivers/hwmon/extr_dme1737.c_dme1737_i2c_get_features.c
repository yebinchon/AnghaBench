
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dme1737_data {int has_features; } ;


 int DME1737_ID_1 ;
 int DME1737_ID_2 ;
 int ENODEV ;
 int HAS_FAN (int) ;
 int HAS_PWM (int) ;
 int SCH5027_ID ;
 int dme1737_sio_enter (int) ;
 int dme1737_sio_exit (int) ;
 int dme1737_sio_inb (int,int) ;
 int dme1737_sio_outb (int,int,int) ;
 int force_id ;
 int inb (int) ;

__attribute__((used)) static int dme1737_i2c_get_features(int sio_cip, struct dme1737_data *data)
{
 int err = 0, reg;
 u16 addr;

 dme1737_sio_enter(sio_cip);





 reg = force_id ? force_id : dme1737_sio_inb(sio_cip, 0x20);
 if (!(reg == DME1737_ID_1 || reg == DME1737_ID_2 ||
       reg == SCH5027_ID)) {
  err = -ENODEV;
  goto exit;
 }


 dme1737_sio_outb(sio_cip, 0x07, 0x0a);


 addr = (dme1737_sio_inb(sio_cip, 0x60) << 8) |
  dme1737_sio_inb(sio_cip, 0x61);
 if (!addr) {
  err = -ENODEV;
  goto exit;
 }






 if ((inb(addr + 0x43) & 0x0c) == 0x08)
  data->has_features |= HAS_FAN(5);
 if ((inb(addr + 0x44) & 0x0c) == 0x08)
  data->has_features |= HAS_PWM(5);
 if ((inb(addr + 0x45) & 0x0c) == 0x08)
  data->has_features |= HAS_FAN(4);
 if ((inb(addr + 0x46) & 0x0c) == 0x08)
  data->has_features |= HAS_PWM(4);

exit:
 dme1737_sio_exit(sio_cip);

 return err;
}
