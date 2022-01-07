
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ad_sigma_delta {int comm; } ;


 int AD_SD_COMM_CHAN_MASK ;

void ad_sd_set_comm(struct ad_sigma_delta *sigma_delta, uint8_t comm)
{


 sigma_delta->comm = comm & AD_SD_COMM_CHAN_MASK;
}
