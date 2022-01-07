
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_sigma_delta {int dummy; } ;


 int ad_sd_set_comm (struct ad_sigma_delta*,unsigned int) ;

__attribute__((used)) static int ad7791_set_channel(struct ad_sigma_delta *sd, unsigned int channel)
{
 ad_sd_set_comm(sd, channel);

 return 0;
}
