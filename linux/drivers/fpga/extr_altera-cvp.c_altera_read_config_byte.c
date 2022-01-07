
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct altera_cvp_conf {scalar_t__ vsec_offset; int pci_dev; } ;


 int pci_read_config_byte (int ,scalar_t__,int *) ;

__attribute__((used)) static int altera_read_config_byte(struct altera_cvp_conf *conf,
       int where, u8 *val)
{
 return pci_read_config_byte(conf->pci_dev, conf->vsec_offset + where,
        val);
}
