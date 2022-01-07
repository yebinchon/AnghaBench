
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_di {int dummy; } ;


 int DI_DW_GEN (int) ;
 int DI_DW_SET (int,int) ;
 int ipu_di_read (struct ipu_di*,int ) ;
 int ipu_di_write (struct ipu_di*,int,int ) ;

__attribute__((used)) static void ipu_di_data_pin_config(struct ipu_di *di, int wave_gen, int di_pin,
  int set, int up, int down)
{
 u32 reg;

 reg = ipu_di_read(di, DI_DW_GEN(wave_gen));
 reg &= ~(0x3 << (di_pin * 2));
 reg |= set << (di_pin * 2);
 ipu_di_write(di, reg, DI_DW_GEN(wave_gen));

 ipu_di_write(di, (down << 16) | up, DI_DW_SET(wave_gen, set));
}
