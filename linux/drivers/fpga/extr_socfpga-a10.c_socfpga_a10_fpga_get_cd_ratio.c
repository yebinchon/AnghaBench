
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CDRATIO_x1 ;
 unsigned int CDRATIO_x2 ;
 unsigned int CDRATIO_x4 ;
 unsigned int CFGWDTH_32 ;

__attribute__((used)) static unsigned int socfpga_a10_fpga_get_cd_ratio(unsigned int cfg_width,
        bool encrypt, bool compress)
{
 unsigned int cd_ratio;
 if (!compress && !encrypt)
  return CDRATIO_x1;

 if (compress)
  cd_ratio = CDRATIO_x4;
 else
  cd_ratio = CDRATIO_x2;


 if (cfg_width == CFGWDTH_32)
  cd_ratio += 1;

 return cd_ratio;
}
