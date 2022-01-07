
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {int dummy; } ;


 int dc_link_dp_disable_hpd (struct dc_link const*) ;

void dc_link_disable_hpd(const struct dc_link *link)
{
 dc_link_dp_disable_hpd(link);
}
