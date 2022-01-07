
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vas_window {int dummy; } ;
struct coprocessor_status_block {int count; } ;
struct coprocessor_request_block {int ccw; struct coprocessor_status_block csb; } ;
struct nx842_workmem {int start; struct coprocessor_request_block crb; } ;


 int CCW_FC_842 ;
 struct nx842_workmem* PTR_ALIGN (void*,int ) ;
 scalar_t__ SET_FIELD (int ,scalar_t__,int) ;
 int VAS_RETRIES ;
 int WORKMEM_ALIGN ;
 unsigned int be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int cpu_txwin ;
 int ktime_get () ;
 int nx842_config_crb (unsigned char const*,unsigned int,unsigned char*,unsigned int,struct nx842_workmem*) ;
 int pr_err_ratelimited (char*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct vas_window* this_cpu_read (int ) ;
 int vas_copy_crb (struct coprocessor_request_block*,int ) ;
 int vas_paste_crb (struct vas_window*,int ,int) ;
 int wait_for_csb (struct nx842_workmem*,struct coprocessor_status_block*) ;

__attribute__((used)) static int nx842_exec_vas(const unsigned char *in, unsigned int inlen,
      unsigned char *out, unsigned int *outlenp,
      void *workmem, int fc)
{
 struct coprocessor_request_block *crb;
 struct coprocessor_status_block *csb;
 struct nx842_workmem *wmem;
 struct vas_window *txwin;
 int ret, i = 0;
 u32 ccw;
 unsigned int outlen = *outlenp;

 wmem = PTR_ALIGN(workmem, WORKMEM_ALIGN);

 *outlenp = 0;

 crb = &wmem->crb;
 csb = &crb->csb;

 ret = nx842_config_crb(in, inlen, out, outlen, wmem);
 if (ret)
  return ret;

 ccw = 0;
 ccw = SET_FIELD(CCW_FC_842, ccw, fc);
 crb->ccw = cpu_to_be32(ccw);

 do {
  wmem->start = ktime_get();
  preempt_disable();
  txwin = this_cpu_read(cpu_txwin);





  vas_copy_crb(crb, 0);





  ret = vas_paste_crb(txwin, 0, 1);
  preempt_enable();



 } while (ret && (i++ < VAS_RETRIES));

 if (ret) {
  pr_err_ratelimited("VAS copy/paste failed\n");
  return ret;
 }

 ret = wait_for_csb(wmem, csb);
 if (!ret)
  *outlenp = be32_to_cpu(csb->count);

 return ret;
}
