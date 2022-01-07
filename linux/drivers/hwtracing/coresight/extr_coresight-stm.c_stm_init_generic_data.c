
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int sw_start; int sw_end; int hw_override; int set_options; int unlink; int link; int mmio_addr; int packet; int sw_mmiosz; int sw_nchannels; } ;
struct stm_drvdata {TYPE_1__ stm; int numsp; } ;


 int BYTES_PER_CHANNEL ;
 int stm_generic_link ;
 int stm_generic_packet ;
 int stm_generic_set_options ;
 int stm_generic_unlink ;
 int stm_mmio_addr ;

__attribute__((used)) static void stm_init_generic_data(struct stm_drvdata *drvdata,
      const char *name)
{
 drvdata->stm.name = name;





 drvdata->stm.sw_start = 1;
 drvdata->stm.sw_end = 1;
 drvdata->stm.hw_override = 1;
 drvdata->stm.sw_nchannels = drvdata->numsp;
 drvdata->stm.sw_mmiosz = BYTES_PER_CHANNEL;
 drvdata->stm.packet = stm_generic_packet;
 drvdata->stm.mmio_addr = stm_mmio_addr;
 drvdata->stm.link = stm_generic_link;
 drvdata->stm.unlink = stm_generic_unlink;
 drvdata->stm.set_options = stm_generic_set_options;
}
