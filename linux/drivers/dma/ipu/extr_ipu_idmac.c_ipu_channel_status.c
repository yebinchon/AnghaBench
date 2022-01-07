
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipu {int dummy; } ;
typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;






 int IPU_TASKS_STAT ;
 int TASK_STAT_IDLE ;
 int TSTAT_CSI2MEM_MASK ;
 int TSTAT_CSI2MEM_OFFSET ;
 int idmac_read_ipureg (struct ipu*,int ) ;

__attribute__((used)) static uint32_t ipu_channel_status(struct ipu *ipu, enum ipu_channel channel)
{
 uint32_t stat = TASK_STAT_IDLE;
 uint32_t task_stat_reg = idmac_read_ipureg(ipu, IPU_TASKS_STAT);

 switch (channel) {
 case 130:
  stat = (task_stat_reg & TSTAT_CSI2MEM_MASK) >>
   TSTAT_CSI2MEM_OFFSET;
  break;
 case 131:
 case 129:
 case 128:
 default:
  break;
 }
 return stat;
}
