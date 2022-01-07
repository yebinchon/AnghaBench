
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_desc {int lli_len; int lli_current; } ;
struct d40_chan {int dummy; } ;


 scalar_t__ chan_is_physical (struct d40_chan*) ;
 int d40_log_lli_to_lcxa (struct d40_chan*,struct d40_desc*) ;
 int d40_phy_lli_load (struct d40_chan*,struct d40_desc*) ;

__attribute__((used)) static void d40_desc_load(struct d40_chan *d40c, struct d40_desc *d40d)
{
 if (chan_is_physical(d40c)) {
  d40_phy_lli_load(d40c, d40d);
  d40d->lli_current = d40d->lli_len;
 } else
  d40_log_lli_to_lcxa(d40c, d40d);
}
