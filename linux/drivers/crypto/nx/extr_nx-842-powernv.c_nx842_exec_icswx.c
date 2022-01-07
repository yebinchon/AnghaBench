
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct coprocessor_status_block {int count; } ;
struct coprocessor_request_block {int ccw; struct coprocessor_status_block csb; } ;
struct nx842_workmem {int start; struct coprocessor_request_block crb; } ;


 int CCW_CI_842 ;
 int CCW_CT ;
 int CCW_FC_842 ;
 int EBUSY ;
 int ENODEV ;
 int EPROTO ;



 int ICSWX_XERS0 ;
 struct nx842_workmem* PTR_ALIGN (void*,int ) ;
 scalar_t__ SET_FIELD (int ,scalar_t__,int) ;
 int WORKMEM_ALIGN ;
 unsigned int be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int icswx (int ,struct coprocessor_request_block*) ;
 int ktime_get () ;
 int nx842_config_crb (unsigned char const*,unsigned int,unsigned char*,unsigned int,struct nx842_workmem*) ;
 int nx842_ct ;
 int pr_debug_ratelimited (char*,...) ;
 int pr_err_ratelimited (char*) ;
 int wait_for_csb (struct nx842_workmem*,struct coprocessor_status_block*) ;

__attribute__((used)) static int nx842_exec_icswx(const unsigned char *in, unsigned int inlen,
      unsigned char *out, unsigned int *outlenp,
      void *workmem, int fc)
{
 struct coprocessor_request_block *crb;
 struct coprocessor_status_block *csb;
 struct nx842_workmem *wmem;
 int ret;
 u32 ccw;
 unsigned int outlen = *outlenp;

 wmem = PTR_ALIGN(workmem, WORKMEM_ALIGN);

 *outlenp = 0;


 if (!nx842_ct) {
  pr_err_ratelimited("coprocessor CT is 0");
  return -ENODEV;
 }

 ret = nx842_config_crb(in, inlen, out, outlen, wmem);
 if (ret)
  return ret;

 crb = &wmem->crb;
 csb = &crb->csb;


 ccw = 0;
 ccw = SET_FIELD(CCW_CT, ccw, nx842_ct);
 ccw = SET_FIELD(CCW_CI_842, ccw, 0);
 ccw = SET_FIELD(CCW_FC_842, ccw, fc);

 wmem->start = ktime_get();


 ret = icswx(cpu_to_be32(ccw), crb);

 pr_debug_ratelimited("icswx CR %x ccw %x crb->ccw %x\n", ret,
        (unsigned int)ccw,
        (unsigned int)be32_to_cpu(crb->ccw));







 ret &= ~ICSWX_XERS0;

 switch (ret) {
 case 129:
  ret = wait_for_csb(wmem, csb);
  break;
 case 130:
  pr_debug_ratelimited("842 Coprocessor busy\n");
  ret = -EBUSY;
  break;
 case 128:
  pr_err_ratelimited("ICSWX rejected\n");
  ret = -EPROTO;
  break;
 }

 if (!ret)
  *outlenp = be32_to_cpu(csb->count);

 return ret;
}
