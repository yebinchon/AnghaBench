
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct idma64_chan {int dummy; } ;


 int idma64_desc_free (struct idma64_chan*,int ) ;
 struct idma64_chan* to_idma64_chan (int ) ;
 int to_idma64_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void idma64_vdesc_free(struct virt_dma_desc *vdesc)
{
 struct idma64_chan *idma64c = to_idma64_chan(vdesc->tx.chan);

 idma64_desc_free(idma64c, to_idma64_desc(vdesc));
}
