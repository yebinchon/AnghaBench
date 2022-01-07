
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int ibf_lock; scalar_t__ ibf; int status_io; } ;


 int HP_SDC_STATUS_IBF ;
 TYPE_1__ hp_sdc ;
 int sdc_readb (int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline uint8_t hp_sdc_status_in8(void)
{
 uint8_t status;
 unsigned long flags;

 write_lock_irqsave(&hp_sdc.ibf_lock, flags);
 status = sdc_readb(hp_sdc.status_io);
 if (!(status & HP_SDC_STATUS_IBF))
  hp_sdc.ibf = 0;
 write_unlock_irqrestore(&hp_sdc.ibf_lock, flags);

 return status;
}
