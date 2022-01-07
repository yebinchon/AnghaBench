
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {int ccr; TYPE_1__* desc; } ;
struct TYPE_2__ {int rqtype; } ;


 int CCR ;
 int CC_DSTBRSTLEN_SHFT ;
 int CC_SRCBRSTLEN_SHFT ;



 int SINGLE ;
 int WARN_ON (int) ;
 int _emit_MOV (unsigned int,int *,int ,int) ;
 int _ldst_memtomem (unsigned int,int *,struct _xfer_spec const*,int) ;
 int _ldst_peripheral (struct pl330_dmac*,unsigned int,int *,struct _xfer_spec const*,int,int ) ;

__attribute__((used)) static int _dregs(struct pl330_dmac *pl330, unsigned int dry_run, u8 buf[],
  const struct _xfer_spec *pxs, int transfer_length)
{
 int off = 0;
 int dregs_ccr;

 if (transfer_length == 0)
  return off;

 switch (pxs->desc->rqtype) {
 case 129:

 case 130:
  off += _ldst_peripheral(pl330, dry_run, &buf[off], pxs,
   transfer_length, SINGLE);
  break;

 case 128:
  dregs_ccr = pxs->ccr;
  dregs_ccr &= ~((0xf << CC_SRCBRSTLEN_SHFT) |
   (0xf << CC_DSTBRSTLEN_SHFT));
  dregs_ccr |= (((transfer_length - 1) & 0xf) <<
   CC_SRCBRSTLEN_SHFT);
  dregs_ccr |= (((transfer_length - 1) & 0xf) <<
   CC_DSTBRSTLEN_SHFT);
  off += _emit_MOV(dry_run, &buf[off], CCR, dregs_ccr);
  off += _ldst_memtomem(dry_run, &buf[off], pxs, 1);
  break;

 default:

  WARN_ON(1);
  break;
 }

 return off;
}
