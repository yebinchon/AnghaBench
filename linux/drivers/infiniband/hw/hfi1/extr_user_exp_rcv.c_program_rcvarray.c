
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tid_user_buf {TYPE_1__* psets; } ;
struct tid_group {int size; int map; int base; int used; } ;
struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {int expected_base; struct hfi1_devdata* dd; } ;
struct TYPE_2__ {int count; int idx; } ;


 int EINVAL ;
 int EXP_TID_SET (int ,int) ;
 int LEN ;
 int rcv_array_wc_fill (struct hfi1_devdata*,int) ;
 int rcventry2tidinfo (int) ;
 int set_rcvarray_entry (struct hfi1_filedata*,struct tid_user_buf*,int,struct tid_group*,int,int) ;

__attribute__((used)) static int program_rcvarray(struct hfi1_filedata *fd, struct tid_user_buf *tbuf,
       struct tid_group *grp,
       unsigned int start, u16 count,
       u32 *tidlist, unsigned int *tididx,
       unsigned int *pmapped)
{
 struct hfi1_ctxtdata *uctxt = fd->uctxt;
 struct hfi1_devdata *dd = uctxt->dd;
 u16 idx;
 u32 tidinfo = 0, rcventry, useidx = 0;
 int mapped = 0;


 if (count > grp->size)
  return -EINVAL;


 for (idx = 0; idx < grp->size; idx++) {
  if (!(grp->map & (1 << idx))) {
   useidx = idx;
   break;
  }
  rcv_array_wc_fill(dd, grp->base + idx);
 }

 idx = 0;
 while (idx < count) {
  u16 npages, pageidx, setidx = start + idx;
  int ret = 0;





  if (useidx >= grp->size) {
   break;
  } else if (grp->map & (1 << useidx)) {
   rcv_array_wc_fill(dd, grp->base + useidx);
   useidx++;
   continue;
  }

  rcventry = grp->base + useidx;
  npages = tbuf->psets[setidx].count;
  pageidx = tbuf->psets[setidx].idx;

  ret = set_rcvarray_entry(fd, tbuf,
      rcventry, grp, pageidx,
      npages);
  if (ret)
   return ret;
  mapped += npages;

  tidinfo = rcventry2tidinfo(rcventry - uctxt->expected_base) |
   EXP_TID_SET(LEN, npages);
  tidlist[(*tididx)++] = tidinfo;
  grp->used++;
  grp->map |= 1 << useidx++;
  idx++;
 }


 for (; useidx < grp->size; useidx++)
  rcv_array_wc_fill(dd, grp->base + useidx);
 *pmapped = mapped;
 return idx;
}
