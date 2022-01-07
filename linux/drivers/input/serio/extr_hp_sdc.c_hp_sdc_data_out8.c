
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int ibf; int ibf_lock; int data_io; } ;


 TYPE_1__ hp_sdc ;
 int sdc_writeb (int ,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void hp_sdc_data_out8(uint8_t val)
{
 unsigned long flags;

 write_lock_irqsave(&hp_sdc.ibf_lock, flags);
 hp_sdc.ibf = 1;
 sdc_writeb(val, hp_sdc.data_io);
 write_unlock_irqrestore(&hp_sdc.ibf_lock, flags);
}
