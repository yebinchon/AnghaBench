
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct scom_device {int fsi_dev; } ;


 int EBUSY ;
 int ENODEV ;
 int SCOM_FSI2PIB_RESET_REG ;
 int SCOM_MAX_RETRIES ;
 int SCOM_STATUS_PIB_RESP_MASK ;
 int SCOM_STATUS_PIB_RESP_SHIFT ;
 int fsi_device_write (int ,int ,int*,int) ;
 int handle_fsi2pib_status (struct scom_device*,int) ;
 int handle_pib_status (struct scom_device*,int) ;
 int msleep (int) ;
 int raw_get_scom (struct scom_device*,int *,int ,int*) ;

__attribute__((used)) static int get_scom(struct scom_device *scom, uint64_t *value,
      uint64_t addr)
{
 uint32_t status, dummy = -1;
 int rc, retries;

 for (retries = 0; retries < SCOM_MAX_RETRIES; retries++) {
  rc = raw_get_scom(scom, value, addr, &status);
  if (rc) {

   if (rc != -ENODEV && retries == 0) {
    fsi_device_write(scom->fsi_dev, SCOM_FSI2PIB_RESET_REG,
       &dummy, sizeof(uint32_t));
    rc = -EBUSY;
   } else
    return rc;
  } else
   rc = handle_fsi2pib_status(scom, status);
  if (rc && rc != -EBUSY)
   break;
  if (rc == 0) {
   rc = handle_pib_status(scom,
            (status & SCOM_STATUS_PIB_RESP_MASK)
            >> SCOM_STATUS_PIB_RESP_SHIFT);
   if (rc && rc != -EBUSY)
    break;
  }
  if (rc == 0)
   break;
  msleep(1);
 }
 return rc;
}
