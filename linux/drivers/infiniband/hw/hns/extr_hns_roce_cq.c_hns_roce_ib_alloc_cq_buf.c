
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int cqe_buf_pg_sz; int cq_entry_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
struct TYPE_10__ {int page_shift; int npages; } ;
struct TYPE_9__ {int mtt_type; } ;
struct hns_roce_cq_buf {TYPE_5__ hr_buf; TYPE_2__ hr_mtt; } ;


 int HEM_TYPE_CQE ;
 int MTT_TYPE_CQE ;
 int MTT_TYPE_WQE ;
 int PAGE_SHIFT ;
 int hns_roce_buf_alloc (struct hns_roce_dev*,int,int,TYPE_5__*,int) ;
 int hns_roce_buf_free (struct hns_roce_dev*,int,TYPE_5__*) ;
 int hns_roce_buf_write_mtt (struct hns_roce_dev*,TYPE_2__*,TYPE_5__*) ;
 scalar_t__ hns_roce_check_whether_mhop (struct hns_roce_dev*,int ) ;
 int hns_roce_mtt_cleanup (struct hns_roce_dev*,TYPE_2__*) ;
 int hns_roce_mtt_init (struct hns_roce_dev*,int ,int ,TYPE_2__*) ;

__attribute__((used)) static int hns_roce_ib_alloc_cq_buf(struct hns_roce_dev *hr_dev,
        struct hns_roce_cq_buf *buf, u32 nent)
{
 int ret;
 u32 page_shift = PAGE_SHIFT + hr_dev->caps.cqe_buf_pg_sz;

 ret = hns_roce_buf_alloc(hr_dev, nent * hr_dev->caps.cq_entry_sz,
     (1 << page_shift) * 2, &buf->hr_buf,
     page_shift);
 if (ret)
  goto out;

 if (hns_roce_check_whether_mhop(hr_dev, HEM_TYPE_CQE))
  buf->hr_mtt.mtt_type = MTT_TYPE_CQE;
 else
  buf->hr_mtt.mtt_type = MTT_TYPE_WQE;

 ret = hns_roce_mtt_init(hr_dev, buf->hr_buf.npages,
    buf->hr_buf.page_shift, &buf->hr_mtt);
 if (ret)
  goto err_buf;

 ret = hns_roce_buf_write_mtt(hr_dev, &buf->hr_mtt, &buf->hr_buf);
 if (ret)
  goto err_mtt;

 return 0;

err_mtt:
 hns_roce_mtt_cleanup(hr_dev, &buf->hr_mtt);

err_buf:
 hns_roce_buf_free(hr_dev, nent * hr_dev->caps.cq_entry_sz,
     &buf->hr_buf);
out:
 return ret;
}
