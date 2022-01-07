
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pl330_thread {int ev; struct _pl330_req* req; } ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {int ccr; } ;
struct _pl330_req {int mc_bus; int * mc_cpu; } ;


 int CCR ;
 int PL330_DBGMC_START (int ) ;
 scalar_t__ _emit_END (unsigned int,int *) ;
 scalar_t__ _emit_MOV (unsigned int,int *,int ,int ) ;
 scalar_t__ _emit_SEV (unsigned int,int *,int ) ;
 scalar_t__ _setup_xfer (struct pl330_dmac*,unsigned int,int *,struct _xfer_spec*) ;

__attribute__((used)) static int _setup_req(struct pl330_dmac *pl330, unsigned dry_run,
        struct pl330_thread *thrd, unsigned index,
        struct _xfer_spec *pxs)
{
 struct _pl330_req *req = &thrd->req[index];
 u8 *buf = req->mc_cpu;
 int off = 0;

 PL330_DBGMC_START(req->mc_bus);


 off += _emit_MOV(dry_run, &buf[off], CCR, pxs->ccr);

 off += _setup_xfer(pl330, dry_run, &buf[off], pxs);


 off += _emit_SEV(dry_run, &buf[off], thrd->ev);

 off += _emit_END(dry_run, &buf[off]);

 return off;
}
