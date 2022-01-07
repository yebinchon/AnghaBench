
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stu300_dev {TYPE_1__* pdev; int cmd_err; scalar_t__ virtbase; } ;
typedef enum stu300_event { ____Placeholder_stu300_event } stu300_event ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ I2C_SR1 ;
 int I2C_SR1_ADD10_IND ;
 int I2C_SR1_ADSL_IND ;
 int I2C_SR1_BTF_IND ;
 int I2C_SR1_EVF_IND ;
 int I2C_SR1_SB_IND ;
 scalar_t__ I2C_SR2 ;
 int I2C_SR2_AF_IND ;
 int I2C_SR2_ARLO_IND ;
 int I2C_SR2_BERR_IND ;
 int I2C_SR2_ENDAD_IND ;
 int I2C_SR2_STOPF_IND ;
 int STU300_ERROR_ACKNOWLEDGE_FAILURE ;
 int STU300_ERROR_ARBITRATION_LOST ;
 int STU300_ERROR_BUS_ERROR ;
 int STU300_ERROR_UNKNOWN ;
 int dev_err (int *,char*,int,int,int) ;
 int stu300_irq_disable (struct stu300_dev*) ;
 int stu300_r8 (scalar_t__) ;

__attribute__((used)) static int stu300_event_occurred(struct stu300_dev *dev,
       enum stu300_event mr_event) {
 u32 status1;
 u32 status2;


 status1 = stu300_r8(dev->virtbase + I2C_SR1);

 if (!(status1 & I2C_SR1_EVF_IND))

  return 0;

 status2 = stu300_r8(dev->virtbase + I2C_SR2);


 stu300_irq_disable(dev);


 if (status2 & I2C_SR2_AF_IND) {
  dev->cmd_err = STU300_ERROR_ACKNOWLEDGE_FAILURE;
  return 1;
 } else if (status2 & I2C_SR2_BERR_IND) {
  dev->cmd_err = STU300_ERROR_BUS_ERROR;
  return 1;
 } else if (status2 & I2C_SR2_ARLO_IND) {
  dev->cmd_err = STU300_ERROR_ARBITRATION_LOST;
  return 1;
 }

 switch (mr_event) {
 case 136:
  if (status1 & I2C_SR1_ADSL_IND)
   return 1;
  break;
 case 135:
 case 134:
 case 130:
 case 129:
  if (status1 & I2C_SR1_BTF_IND) {
   return 1;
  }
  break;
 case 133:
  if (status2 & I2C_SR2_STOPF_IND)
   return 1;
  break;
 case 132:
  if (status1 & I2C_SR1_SB_IND)

   return 1;
  break;
 case 131:
  if (status2 & I2C_SR2_ENDAD_IND) {

   return 1;
  }
  break;
 case 128:
  if (status1 & I2C_SR1_ADD10_IND)
   return 1;
  break;
 default:
  break;
 }





 dev->cmd_err = STU300_ERROR_UNKNOWN;
 dev_err(&dev->pdev->dev,
  "Unhandled interrupt! %d sr1: 0x%x sr2: 0x%x\n",
  mr_event, status1, status2);
 return 0;
}
