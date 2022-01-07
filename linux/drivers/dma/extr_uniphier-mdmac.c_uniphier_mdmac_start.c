
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_mdmac_desc {int dummy; } ;
struct uniphier_mdmac_chan {int dummy; } ;


 int uniphier_mdmac_handle (struct uniphier_mdmac_chan*,struct uniphier_mdmac_desc*) ;
 struct uniphier_mdmac_desc* uniphier_mdmac_next_desc (struct uniphier_mdmac_chan*) ;

__attribute__((used)) static void uniphier_mdmac_start(struct uniphier_mdmac_chan *mc)
{
 struct uniphier_mdmac_desc *md;

 md = uniphier_mdmac_next_desc(mc);
 if (md)
  uniphier_mdmac_handle(mc, md);
}
