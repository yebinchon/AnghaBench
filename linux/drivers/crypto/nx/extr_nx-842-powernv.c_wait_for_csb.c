
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx842_workmem {int start; } ;
struct coprocessor_status_block {int flags; int cc; int ce; int count; scalar_t__ cs; } ;
typedef int ktime_t ;
 int CSB_CE_INCOMPLETE ;
 int CSB_CE_TERMINATION ;
 int CSB_CE_TPBC ;
 int CSB_CH ;
 int CSB_ERR (struct coprocessor_status_block*,char*,...) ;
 int CSB_ERR_ADDR (struct coprocessor_status_block*,char*) ;
 int CSB_F ;
 int CSB_V ;
 int CSB_WAIT_MAX ;
 int EINTR ;
 int EINVAL ;
 int ENOSPC ;
 int EPROTO ;
 int ETIMEDOUT ;
 int READ_ONCE (int) ;
 int barrier () ;
 int be32_to_cpu (int ) ;
 int cpu_relax () ;
 int ktime_add_ms (int ,int ) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int pr_debug_ratelimited (char*,int ,unsigned long) ;

__attribute__((used)) static int wait_for_csb(struct nx842_workmem *wmem,
   struct coprocessor_status_block *csb)
{
 ktime_t start = wmem->start, now = ktime_get();
 ktime_t timeout = ktime_add_ms(start, CSB_WAIT_MAX);

 while (!(READ_ONCE(csb->flags) & CSB_V)) {
  cpu_relax();
  now = ktime_get();
  if (ktime_after(now, timeout))
   break;
 }


 barrier();


 if (!(csb->flags & CSB_V)) {
  CSB_ERR(csb, "CSB still not valid after %ld us, giving up",
   (long)ktime_us_delta(now, start));
  return -ETIMEDOUT;
 }
 if (csb->flags & CSB_F) {
  CSB_ERR(csb, "Invalid CSB format");
  return -EPROTO;
 }
 if (csb->flags & CSB_CH) {
  CSB_ERR(csb, "Invalid CSB chaining state");
  return -EPROTO;
 }


 if (csb->cs) {
  CSB_ERR(csb, "Invalid CSB completion sequence");
  return -EPROTO;
 }


 switch (csb->cc) {

 case 143:
  break;
 case 140:



  break;


 case 160:

  CSB_ERR(csb, "Operand Overlap error");
  return -EINVAL;
 case 162:
  CSB_ERR(csb, "Invalid operand");
  return -EINVAL;
 case 161:

  return -ENOSPC;
 case 175:
  CSB_ERR(csb, "Function aborted");
  return -EINTR;
 case 173:
  CSB_ERR(csb, "CRC mismatch");
  return -EINVAL;
 case 142:
  CSB_ERR(csb, "Compressed data template invalid");
  return -EINVAL;
 case 141:
  CSB_ERR(csb, "Compressed data template shows data past end");
  return -EINVAL;
 case 170:




  CSB_ERR(csb, "DDE byte count exceeds the limit");
  return -EINVAL;


 case 165:

  CSB_ERR_ADDR(csb, "Invalid alignment");
  return -EINVAL;
 case 172:

  CSB_ERR(csb, "Invalid data length");
  return -EINVAL;
 case 128:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:

  CSB_ERR_ADDR(csb, "Translation error");
  return -EPROTO;
 case 129:
 case 158:
 case 157:
 case 156:
 case 155:
 case 154:
 case 153:
 case 152:

  CSB_ERR_ADDR(csb, "Protection error");
  return -EPROTO;
 case 159:

  CSB_ERR(csb, "Insufficient Privilege error");
  return -EPROTO;
 case 169:

  CSB_ERR(csb, "Too many DDEs in DDL");
  return -EINVAL;
 case 132:
 case 164:

  CSB_ERR(csb, "Invalid CRB");
  return -EINVAL;
 case 163:




  CSB_ERR(csb, "Invalid DDE");
  return -EINVAL;
 case 146:

  CSB_ERR(csb, "Segmented DDL error");
  return -EINVAL;
 case 171:

  CSB_ERR(csb, "DDE overflow error");
  return -EINVAL;
 case 144:

  CSB_ERR(csb, "Session violation error");
  return -EPROTO;
 case 174:

  CSB_ERR(csb, "Chained CRB error");
  return -EPROTO;
 case 145:

  CSB_ERR(csb, "CRB sequence number error");
  return -EPROTO;
 case 131:
  CSB_ERR(csb, "Unknown subfunction code");
  return -EPROTO;


 case 150:
 case 149:
 case 148:
 case 147:
  CSB_ERR_ADDR(csb, "Read error outside coprocessor");
  return -EPROTO;
 case 130:
  CSB_ERR_ADDR(csb, "Write error outside coprocessor");
  return -EPROTO;
 case 166:
  CSB_ERR(csb, "Internal error in coprocessor");
  return -EPROTO;
 case 151:
  CSB_ERR(csb, "Storage provision error");
  return -EPROTO;
 case 168:
  CSB_ERR(csb, "Correctable hardware error");
  return -EPROTO;
 case 167:
  CSB_ERR(csb, "Job did not finish within allowed time");
  return -EPROTO;

 default:
  CSB_ERR(csb, "Invalid CC %d", csb->cc);
  return -EPROTO;
 }


 if (csb->ce & CSB_CE_TERMINATION) {
  CSB_ERR(csb, "CSB request was terminated");
  return -EPROTO;
 }
 if (csb->ce & CSB_CE_INCOMPLETE) {
  CSB_ERR(csb, "CSB request not complete");
  return -EPROTO;
 }
 if (!(csb->ce & CSB_CE_TPBC)) {
  CSB_ERR(csb, "TPBC not provided, unknown target length");
  return -EPROTO;
 }


 pr_debug_ratelimited("Processed %u bytes in %lu us\n",
        be32_to_cpu(csb->count),
        (unsigned long)ktime_us_delta(now, start));

 return 0;
}
