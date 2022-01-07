
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int data_io; } ;


 TYPE_1__ hp_sdc ;
 int sdc_readb (int ) ;

__attribute__((used)) static inline uint8_t hp_sdc_data_in8(void)
{
 return sdc_readb(hp_sdc.data_io);
}
