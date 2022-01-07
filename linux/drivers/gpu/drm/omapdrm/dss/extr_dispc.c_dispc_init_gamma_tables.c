
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct dispc_gamma_desc {int len; } ;
struct dispc_device {int ** gamma_table; TYPE_1__* pdev; TYPE_2__* feat; } ;
struct TYPE_6__ {struct dispc_gamma_desc gamma; } ;
struct TYPE_5__ {int has_gamma_table; } ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (int **) ;
 int ENOMEM ;
 int FEAT_MGR_LCD2 ;
 int FEAT_MGR_LCD3 ;
 int GFP_KERNEL ;
 int OMAP_DSS_CHANNEL_LCD2 ;
 int OMAP_DSS_CHANNEL_LCD3 ;
 int * devm_kmalloc_array (int *,int ,int,int ) ;
 int dispc_has_feature (struct dispc_device*,int ) ;
 int dispc_mgr_set_gamma (struct dispc_device*,int,int *,int ) ;
 TYPE_3__* mgr_desc ;

__attribute__((used)) static int dispc_init_gamma_tables(struct dispc_device *dispc)
{
 int channel;

 if (!dispc->feat->has_gamma_table)
  return 0;

 for (channel = 0; channel < ARRAY_SIZE(dispc->gamma_table); channel++) {
  const struct dispc_gamma_desc *gdesc = &mgr_desc[channel].gamma;
  u32 *gt;

  if (channel == OMAP_DSS_CHANNEL_LCD2 &&
      !dispc_has_feature(dispc, FEAT_MGR_LCD2))
   continue;

  if (channel == OMAP_DSS_CHANNEL_LCD3 &&
      !dispc_has_feature(dispc, FEAT_MGR_LCD3))
   continue;

  gt = devm_kmalloc_array(&dispc->pdev->dev, gdesc->len,
     sizeof(u32), GFP_KERNEL);
  if (!gt)
   return -ENOMEM;

  dispc->gamma_table[channel] = gt;

  dispc_mgr_set_gamma(dispc, channel, ((void*)0), 0);
 }
 return 0;
}
