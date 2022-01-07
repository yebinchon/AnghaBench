
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {scalar_t__ cvic; scalar_t__ sram; } ;


 scalar_t__ ARB_REG ;
 scalar_t__ CVIC_TRIG_REG ;
 int iowrite32 (int,scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static int fsi_master_acf_gpio_release(void *data)
{
 struct fsi_master_acf *master = data;


 iowrite8(0, master->sram + ARB_REG);


 if (master->cvic)
  iowrite32(0x2, master->cvic + CVIC_TRIG_REG);

 return 0;
}
