
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct etmv4_config {int vissctlr; int vinst_ctrl; } ;


 int BIT (int) ;
 int ETM_DEFAULT_ADDR_COMP ;
 int etm4_set_comparator_filter (struct etmv4_config*,int,int,int ) ;

__attribute__((used)) static void etm4_set_default_filter(struct etmv4_config *config)
{
 u64 start, stop;





 start = 0x0;
 stop = ~0x0;

 etm4_set_comparator_filter(config, start, stop,
       ETM_DEFAULT_ADDR_COMP);





 config->vinst_ctrl |= BIT(9);


 config->vissctlr = 0x0;
}
