
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct i40iw_sge {int stag; int len; int tag_off; } ;


 int I40IWQPSQ_FRAG_LEN ;
 int I40IWQPSQ_FRAG_STAG ;
 int I40IWQPSQ_FRAG_TO ;
 int LS_64 (int ,int ) ;
 int set_64bit_val (int *,scalar_t__,int) ;

__attribute__((used)) static void i40iw_set_fragment(u64 *wqe, u32 offset, struct i40iw_sge *sge)
{
 if (sge) {
  set_64bit_val(wqe, offset, LS_64(sge->tag_off, I40IWQPSQ_FRAG_TO));
  set_64bit_val(wqe, (offset + 8),
         (LS_64(sge->len, I40IWQPSQ_FRAG_LEN) |
          LS_64(sge->stag, I40IWQPSQ_FRAG_STAG)));
 }
}
