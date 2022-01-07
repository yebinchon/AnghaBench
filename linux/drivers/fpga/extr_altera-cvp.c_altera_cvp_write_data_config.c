
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_cvp_conf {scalar_t__ vsec_offset; int pci_dev; } ;


 scalar_t__ VSE_CVP_DATA ;
 int pci_write_config_dword (int ,scalar_t__,int ) ;

__attribute__((used)) static void altera_cvp_write_data_config(struct altera_cvp_conf *conf, u32 val)
{
 pci_write_config_dword(conf->pci_dev, conf->vsec_offset + VSE_CVP_DATA,
          val);
}
