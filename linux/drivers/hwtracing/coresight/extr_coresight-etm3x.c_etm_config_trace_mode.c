
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etm_config {int mode; int enable_ctrl2; int* addr_val; int* addr_acctype; void** addr_type; int enable_ctrl1; } ;


 int ETMTECR1_ADDR_COMP_1 ;
 void* ETM_ADDR_TYPE_RANGE ;
 int ETM_MODE_EXCL_KERN ;
 int ETM_MODE_EXCL_USER ;

void etm_config_trace_mode(struct etm_config *config)
{
 u32 flags, mode;

 mode = config->mode;

 mode &= (ETM_MODE_EXCL_KERN | ETM_MODE_EXCL_USER);


 if (mode == (ETM_MODE_EXCL_KERN | ETM_MODE_EXCL_USER))
  return;


 if (!(mode & ETM_MODE_EXCL_KERN) && !(mode & ETM_MODE_EXCL_USER))
  return;

 flags = (1 << 0 |
   3 << 3 |
   0 << 5 |
   0 << 7 |
   0 << 8);


 config->enable_ctrl2 = 0x0;


 config->enable_ctrl1 = ETMTECR1_ADDR_COMP_1;
 flags |= (0 << 12 | 1 << 10);

 if (mode & ETM_MODE_EXCL_USER) {

  flags |= (1 << 13 | 0 << 11);
 } else {

  flags |= (1 << 13 | 1 << 11);
 }






 config->addr_val[0] = (u32) 0x0;
 config->addr_val[1] = (u32) ~0x0;
 config->addr_acctype[0] = flags;
 config->addr_acctype[1] = flags;
 config->addr_type[0] = ETM_ADDR_TYPE_RANGE;
 config->addr_type[1] = ETM_ADDR_TYPE_RANGE;
}
