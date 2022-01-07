
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max1363_state {int configbyte; TYPE_1__* current_mode; } ;
struct TYPE_2__ {int conf; } ;


 int MAX1363_CHANNEL_SEL_MASK ;
 int MAX1363_SCAN_MASK ;
 int MAX1363_SE_DE_MASK ;
 int max1363_write_basic_config (struct max1363_state*) ;

__attribute__((used)) static int max1363_set_scan_mode(struct max1363_state *st)
{
 st->configbyte &= ~(MAX1363_CHANNEL_SEL_MASK
       | MAX1363_SCAN_MASK
       | MAX1363_SE_DE_MASK);
 st->configbyte |= st->current_mode->conf;

 return max1363_write_basic_config(st);
}
