
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scom_device {int fsi_dev; } ;


 int EBUSY ;
 int EIO ;
 int EPERM ;
 int SCOM_FSI2PIB_RESET_REG ;
 int SCOM_STATUS_PARITY ;
 int SCOM_STATUS_PIB_ABORT ;
 int SCOM_STATUS_PROTECTION ;
 int fsi_device_write (int ,int ,int*,int) ;

__attribute__((used)) static int handle_fsi2pib_status(struct scom_device *scom, uint32_t status)
{
 uint32_t dummy = -1;

 if (status & SCOM_STATUS_PROTECTION)
  return -EPERM;
 if (status & SCOM_STATUS_PARITY) {
  fsi_device_write(scom->fsi_dev, SCOM_FSI2PIB_RESET_REG, &dummy,
     sizeof(uint32_t));
  return -EIO;
 }

 if (status & SCOM_STATUS_PIB_ABORT)
  return -EBUSY;
 return 0;
}
