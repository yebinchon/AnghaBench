
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int access_flags; int max_segs; int page_shift; int lkey; } ;
struct ib_fmr {int lkey; int rkey; } ;
struct rvt_fmr {TYPE_1__ mr; struct ib_fmr ibfmr; } ;
struct ib_pd {int dummy; } ;
struct ib_fmr_attr {int max_pages; int page_shift; } ;
struct TYPE_6__ {int map; } ;


 int ENOMEM ;
 struct ib_fmr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PERCPU_REF_INIT_ATOMIC ;
 int RVT_SEGSZ ;
 int kfree (struct rvt_fmr*) ;
 struct rvt_fmr* kzalloc (int ,int ) ;
 TYPE_4__ mr ;
 int rvt_alloc_lkey (TYPE_1__*,int ) ;
 int rvt_deinit_mregion (TYPE_1__*) ;
 int rvt_init_mregion (TYPE_1__*,struct ib_pd*,int,int ) ;
 int struct_size (struct rvt_fmr*,int ,int) ;

struct ib_fmr *rvt_alloc_fmr(struct ib_pd *pd, int mr_access_flags,
        struct ib_fmr_attr *fmr_attr)
{
 struct rvt_fmr *fmr;
 int m;
 struct ib_fmr *ret;
 int rval = -ENOMEM;


 m = (fmr_attr->max_pages + RVT_SEGSZ - 1) / RVT_SEGSZ;
 fmr = kzalloc(struct_size(fmr, mr.map, m), GFP_KERNEL);
 if (!fmr)
  goto bail;

 rval = rvt_init_mregion(&fmr->mr, pd, fmr_attr->max_pages,
    PERCPU_REF_INIT_ATOMIC);
 if (rval)
  goto bail;





 rval = rvt_alloc_lkey(&fmr->mr, 0);
 if (rval)
  goto bail_mregion;
 fmr->ibfmr.rkey = fmr->mr.lkey;
 fmr->ibfmr.lkey = fmr->mr.lkey;




 fmr->mr.access_flags = mr_access_flags;
 fmr->mr.max_segs = fmr_attr->max_pages;
 fmr->mr.page_shift = fmr_attr->page_shift;

 ret = &fmr->ibfmr;
done:
 return ret;

bail_mregion:
 rvt_deinit_mregion(&fmr->mr);
bail:
 kfree(fmr);
 ret = ERR_PTR(rval);
 goto done;
}
