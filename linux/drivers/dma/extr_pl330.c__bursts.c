
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {TYPE_1__* desc; int ccr; } ;
typedef enum pl330_cond { ____Placeholder_pl330_cond } pl330_cond ;
struct TYPE_2__ {int rqtype; } ;


 int BRST_LEN (int ) ;
 int BURST ;



 int SINGLE ;
 int WARN_ON (int) ;
 int _ldst_memtomem (unsigned int,int *,struct _xfer_spec const*,int) ;
 int _ldst_peripheral (struct pl330_dmac*,unsigned int,int *,struct _xfer_spec const*,int,int) ;

__attribute__((used)) static int _bursts(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
  const struct _xfer_spec *pxs, int cyc)
{
 int off = 0;
 enum pl330_cond cond = BRST_LEN(pxs->ccr) > 1 ? BURST : SINGLE;

 switch (pxs->desc->rqtype) {
 case 129:

 case 130:
  off += _ldst_peripheral(pl330, dry_run, &buf[off], pxs, cyc,
   cond);
  break;

 case 128:
  off += _ldst_memtomem(dry_run, &buf[off], pxs, cyc);
  break;

 default:

  WARN_ON(1);
  break;
 }

 return off;
}
