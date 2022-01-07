
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int ETIMEDOUT ;
 int KERNCZ_IMC_IDX ;
 int MAX_TIMEOUT ;
 int piix4_imc_read (int) ;
 int piix4_imc_write (int,int) ;
 int release_region (int ,int) ;
 int request_muxed_region (int ,int,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int piix4_imc_sleep(void)
{
 int timeout = MAX_TIMEOUT;

 if (!request_muxed_region(KERNCZ_IMC_IDX, 2, "smbus_kerncz_imc"))
  return -EBUSY;


 piix4_imc_write(0x82, 0x00);

 piix4_imc_write(0x83, 0xB4);

 piix4_imc_write(0x80, 0x96);

 while (timeout--) {
  if (piix4_imc_read(0x82) == 0xfa) {
   release_region(KERNCZ_IMC_IDX, 2);
   return 0;
  }
  usleep_range(1000, 2000);
 }

 release_region(KERNCZ_IMC_IDX, 2);
 return -ETIMEDOUT;
}
