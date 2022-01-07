
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct hfi1_devdata {int dummy; } ;


 int EINVAL ;
 int HDRQ_INCREMENT ;
 int HFI1_MAX_HDRQ_EGRBUF_CNT ;
 int HFI1_MIN_HDRQ_EGRBUF_CNT ;
 int dd_dev_err (struct hfi1_devdata*,char*,...) ;

__attribute__((used)) static int init_validate_rcvhdrcnt(struct hfi1_devdata *dd, uint thecnt)
{
 if (thecnt <= HFI1_MIN_HDRQ_EGRBUF_CNT) {
  dd_dev_err(dd, "Receive header queue count too small\n");
  return -EINVAL;
 }

 if (thecnt > HFI1_MAX_HDRQ_EGRBUF_CNT) {
  dd_dev_err(dd,
      "Receive header queue count cannot be greater than %u\n",
      HFI1_MAX_HDRQ_EGRBUF_CNT);
  return -EINVAL;
 }

 if (thecnt % HDRQ_INCREMENT) {
  dd_dev_err(dd, "Receive header queue count %d must be divisible by %lu\n",
      thecnt, HDRQ_INCREMENT);
  return -EINVAL;
 }

 return 0;
}
