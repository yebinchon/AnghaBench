
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dmadev {int ddev; int reg_map; } ;
struct TYPE_2__ {int desc_free; } ;
struct omap_chan {TYPE_1__ vc; int reg_map; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct omap_chan* kzalloc (int,int ) ;
 int omap_dma_desc_free ;
 int vchan_init (TYPE_1__*,int *) ;

__attribute__((used)) static int omap_dma_chan_init(struct omap_dmadev *od)
{
 struct omap_chan *c;

 c = kzalloc(sizeof(*c), GFP_KERNEL);
 if (!c)
  return -ENOMEM;

 c->reg_map = od->reg_map;
 c->vc.desc_free = omap_dma_desc_free;
 vchan_init(&c->vc, &od->ddev);

 return 0;
}
