
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler_context {int dummy; } ;


 int EIO ;
 int SCALER_CFG ;
 int SCALER_CFG_SOFT_RESET ;
 int SCALER_INT_EN ;
 int SCALER_RESET_WAIT_RETRIES ;
 int cpu_relax () ;
 int scaler_read (int ) ;
 int scaler_write (int,int ) ;

__attribute__((used)) static inline int scaler_reset(struct scaler_context *scaler)
{
 int retry = SCALER_RESET_WAIT_RETRIES;

 scaler_write(SCALER_CFG_SOFT_RESET, SCALER_CFG);
 do {
  cpu_relax();
 } while (--retry > 1 &&
   scaler_read(SCALER_CFG) & SCALER_CFG_SOFT_RESET);
 do {
  cpu_relax();
  scaler_write(1, SCALER_INT_EN);
 } while (--retry > 0 && scaler_read(SCALER_INT_EN) != 1);

 return retry ? 0 : -EIO;
}
