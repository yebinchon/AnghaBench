
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {unsigned int ranksperchan; } ;



__attribute__((used)) static unsigned int i5100_csrow_to_chan(const struct mem_ctl_info *mci,
     unsigned int csrow)
{
 const struct i5100_priv *priv = mci->pvt_info;

 return csrow / priv->ranksperchan;
}
