
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pl330_xfer {int dst_addr; int src_addr; } ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {TYPE_1__* desc; } ;
struct TYPE_2__ {struct pl330_xfer px; } ;


 int DAR ;
 int SAR ;
 scalar_t__ _emit_MOV (unsigned int,int *,int ,int ) ;
 scalar_t__ _setup_loops (struct pl330_dmac*,unsigned int,int *,struct _xfer_spec const*) ;

__attribute__((used)) static inline int _setup_xfer(struct pl330_dmac *pl330,
         unsigned dry_run, u8 buf[],
         const struct _xfer_spec *pxs)
{
 struct pl330_xfer *x = &pxs->desc->px;
 int off = 0;


 off += _emit_MOV(dry_run, &buf[off], SAR, x->src_addr);

 off += _emit_MOV(dry_run, &buf[off], DAR, x->dst_addr);


 off += _setup_loops(pl330, dry_run, &buf[off], pxs);

 return off;
}
