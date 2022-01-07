
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;
struct TYPE_5__ {int cq_entry_sz; int cqe_buf_pg_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
struct TYPE_6__ {int mtt_type; } ;
struct hns_roce_cq_buf {TYPE_2__ hr_mtt; } ;


 int HEM_TYPE_CQE ;
 int IB_ACCESS_LOCAL_WRITE ;
 scalar_t__ IS_ERR (struct ib_umem*) ;
 int MTT_TYPE_CQE ;
 int MTT_TYPE_WQE ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct ib_umem*) ;
 scalar_t__ hns_roce_check_whether_mhop (struct hns_roce_dev*,int ) ;
 int hns_roce_ib_umem_write_mtt (struct hns_roce_dev*,TYPE_2__*,struct ib_umem*) ;
 int hns_roce_mtt_cleanup (struct hns_roce_dev*,TYPE_2__*) ;
 int hns_roce_mtt_init (struct hns_roce_dev*,int,int,TYPE_2__*) ;
 struct ib_umem* ib_umem_get (struct ib_udata*,int ,int,int ,int) ;
 int ib_umem_page_count (struct ib_umem*) ;
 int ib_umem_release (struct ib_umem*) ;

__attribute__((used)) static int hns_roce_ib_get_cq_umem(struct hns_roce_dev *hr_dev,
       struct ib_udata *udata,
       struct hns_roce_cq_buf *buf,
       struct ib_umem **umem, u64 buf_addr, int cqe)
{
 int ret;
 u32 page_shift;
 u32 npages;

 *umem = ib_umem_get(udata, buf_addr, cqe * hr_dev->caps.cq_entry_sz,
       IB_ACCESS_LOCAL_WRITE, 1);
 if (IS_ERR(*umem))
  return PTR_ERR(*umem);

 if (hns_roce_check_whether_mhop(hr_dev, HEM_TYPE_CQE))
  buf->hr_mtt.mtt_type = MTT_TYPE_CQE;
 else
  buf->hr_mtt.mtt_type = MTT_TYPE_WQE;

 if (hr_dev->caps.cqe_buf_pg_sz) {
  npages = (ib_umem_page_count(*umem) +
   (1 << hr_dev->caps.cqe_buf_pg_sz) - 1) /
   (1 << hr_dev->caps.cqe_buf_pg_sz);
  page_shift = PAGE_SHIFT + hr_dev->caps.cqe_buf_pg_sz;
  ret = hns_roce_mtt_init(hr_dev, npages, page_shift,
     &buf->hr_mtt);
 } else {
  ret = hns_roce_mtt_init(hr_dev, ib_umem_page_count(*umem),
     PAGE_SHIFT, &buf->hr_mtt);
 }
 if (ret)
  goto err_buf;

 ret = hns_roce_ib_umem_write_mtt(hr_dev, &buf->hr_mtt, *umem);
 if (ret)
  goto err_mtt;

 return 0;

err_mtt:
 hns_roce_mtt_cleanup(hr_dev, &buf->hr_mtt);

err_buf:
 ib_umem_release(*umem);
 return ret;
}
