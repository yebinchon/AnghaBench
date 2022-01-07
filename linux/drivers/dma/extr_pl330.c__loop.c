
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {int dummy; } ;
struct _arg_LPEND {int forever; int loop; int bjump; void* cond; } ;


 void* ALWAYS ;
 int _bursts (struct pl330_dmac*,unsigned int,int *,struct _xfer_spec const*,int) ;
 int _emit_LP (unsigned int,int *,int,unsigned int) ;
 int _emit_LPEND (unsigned int,int *,struct _arg_LPEND*) ;

__attribute__((used)) static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
  unsigned long *bursts, const struct _xfer_spec *pxs)
{
 int cyc, cycmax, szlp, szlpend, szbrst, off;
 unsigned lcnt0, lcnt1, ljmp0, ljmp1;
 struct _arg_LPEND lpend;

 if (*bursts == 1)
  return _bursts(pl330, dry_run, buf, pxs, 1);


 if (*bursts >= 256*256) {
  lcnt1 = 256;
  lcnt0 = 256;
  cyc = *bursts / lcnt1 / lcnt0;
 } else if (*bursts > 256) {
  lcnt1 = 256;
  lcnt0 = *bursts / lcnt1;
  cyc = 1;
 } else {
  lcnt1 = *bursts;
  lcnt0 = 0;
  cyc = 1;
 }

 szlp = _emit_LP(1, buf, 0, 0);
 szbrst = _bursts(pl330, 1, buf, pxs, 1);

 lpend.cond = ALWAYS;
 lpend.forever = 0;
 lpend.loop = 0;
 lpend.bjump = 0;
 szlpend = _emit_LPEND(1, buf, &lpend);

 if (lcnt0) {
  szlp *= 2;
  szlpend *= 2;
 }






 cycmax = (255 - (szlp + szlpend)) / szbrst;

 cyc = (cycmax < cyc) ? cycmax : cyc;

 off = 0;

 if (lcnt0) {
  off += _emit_LP(dry_run, &buf[off], 0, lcnt0);
  ljmp0 = off;
 }

 off += _emit_LP(dry_run, &buf[off], 1, lcnt1);
 ljmp1 = off;

 off += _bursts(pl330, dry_run, &buf[off], pxs, cyc);

 lpend.cond = ALWAYS;
 lpend.forever = 0;
 lpend.loop = 1;
 lpend.bjump = off - ljmp1;
 off += _emit_LPEND(dry_run, &buf[off], &lpend);

 if (lcnt0) {
  lpend.cond = ALWAYS;
  lpend.forever = 0;
  lpend.loop = 0;
  lpend.bjump = off - ljmp0;
  off += _emit_LPEND(dry_run, &buf[off], &lpend);
 }

 *bursts = lcnt1 * cyc;
 if (lcnt0)
  *bursts *= lcnt0;

 return off;
}
