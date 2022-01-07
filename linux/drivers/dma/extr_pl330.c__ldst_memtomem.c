
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pl330_config {int periph_id; } ;
struct _xfer_spec {TYPE_2__* desc; } ;
struct TYPE_3__ {struct pl330_config* pcfg; } ;
struct TYPE_4__ {TYPE_1__ rqcfg; } ;


 int ALWAYS ;
 scalar_t__ PERIPH_REV_R1P0 ;
 scalar_t__ _emit_LD (unsigned int,int *,int ) ;
 scalar_t__ _emit_RMB (unsigned int,int *) ;
 scalar_t__ _emit_ST (unsigned int,int *,int ) ;
 scalar_t__ _emit_WMB (unsigned int,int *) ;
 scalar_t__ get_revision (int ) ;

__attribute__((used)) static inline int _ldst_memtomem(unsigned dry_run, u8 buf[],
  const struct _xfer_spec *pxs, int cyc)
{
 int off = 0;
 struct pl330_config *pcfg = pxs->desc->rqcfg.pcfg;


 if (get_revision(pcfg->periph_id) >= PERIPH_REV_R1P0) {
  while (cyc--) {
   off += _emit_LD(dry_run, &buf[off], ALWAYS);
   off += _emit_ST(dry_run, &buf[off], ALWAYS);
  }
 } else {
  while (cyc--) {
   off += _emit_LD(dry_run, &buf[off], ALWAYS);
   off += _emit_RMB(dry_run, &buf[off]);
   off += _emit_ST(dry_run, &buf[off], ALWAYS);
   off += _emit_WMB(dry_run, &buf[off]);
  }
 }

 return off;
}
