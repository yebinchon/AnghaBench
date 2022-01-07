
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_cvp_conf {int (* write_data ) (struct altera_cvp_conf*,int ) ;} ;


 unsigned int CVP_DUMMY_WR ;
 int VSE_CVP_MODE_CTRL ;
 int VSE_CVP_MODE_CTRL_NUMCLKS_MASK ;
 int VSE_CVP_MODE_CTRL_NUMCLKS_OFF ;
 int altera_read_config_dword (struct altera_cvp_conf*,int ,int*) ;
 int altera_write_config_dword (struct altera_cvp_conf*,int ,int) ;
 int stub1 (struct altera_cvp_conf*,int ) ;

__attribute__((used)) static void altera_cvp_dummy_write(struct altera_cvp_conf *conf)
{
 unsigned int i;
 u32 val;


 altera_read_config_dword(conf, VSE_CVP_MODE_CTRL, &val);
 val &= ~VSE_CVP_MODE_CTRL_NUMCLKS_MASK;
 val |= 1 << VSE_CVP_MODE_CTRL_NUMCLKS_OFF;
 altera_write_config_dword(conf, VSE_CVP_MODE_CTRL, val);

 for (i = 0; i < CVP_DUMMY_WR; i++)
  conf->write_data(conf, 0);
}
