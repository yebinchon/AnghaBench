
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iser_reg_resources {struct ib_fmr_pool* fmr_pool; struct iser_page_vec* page_vec; } ;
struct TYPE_8__ {int length; int iova; int page_size; } ;
struct iser_page_vec {TYPE_4__ fake_mr; int * pages; scalar_t__ npages; } ;
struct TYPE_7__ {int length; int addr; int lkey; } ;
struct iser_mem_reg {TYPE_3__ sge; int rkey; struct ib_pool_fmr* mem_h; } ;
struct iser_device {int ib_device; } ;
struct iser_data_buf {int dma_nents; int sg; } ;
struct iscsi_iser_task {TYPE_1__* iser_conn; } ;
struct ib_pool_fmr {TYPE_2__* fmr; } ;
struct ib_fmr_pool {int dummy; } ;
struct ib_conn {struct iser_device* device; } ;
struct TYPE_6__ {int rkey; int lkey; } ;
struct TYPE_5__ {struct ib_conn ib_conn; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ib_pool_fmr*) ;
 int PTR_ERR (struct ib_pool_fmr*) ;
 int SIZE_4K ;
 struct ib_pool_fmr* ib_fmr_pool_map_phys (struct ib_fmr_pool*,int *,scalar_t__,int ) ;
 int ib_sg_to_pages (TYPE_4__*,int ,int,int *,int ) ;
 int iser_data_buf_dump (struct iser_data_buf*,int ) ;
 int iser_dbg (char*,int ,int ,int ,int ) ;
 int iser_dump_page_vec (struct iser_page_vec*) ;
 int iser_err (char*,...) ;
 int iser_set_page ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static
int iser_fast_reg_fmr(struct iscsi_iser_task *iser_task,
        struct iser_data_buf *mem,
        struct iser_reg_resources *rsc,
        struct iser_mem_reg *reg)
{
 struct ib_conn *ib_conn = &iser_task->iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;
 struct iser_page_vec *page_vec = rsc->page_vec;
 struct ib_fmr_pool *fmr_pool = rsc->fmr_pool;
 struct ib_pool_fmr *fmr;
 int ret, plen;

 page_vec->npages = 0;
 page_vec->fake_mr.page_size = SIZE_4K;
 plen = ib_sg_to_pages(&page_vec->fake_mr, mem->sg,
         mem->dma_nents, ((void*)0), iser_set_page);
 if (unlikely(plen < mem->dma_nents)) {
  iser_err("page vec too short to hold this SG\n");
  iser_data_buf_dump(mem, device->ib_device);
  iser_dump_page_vec(page_vec);
  return -EINVAL;
 }

 fmr = ib_fmr_pool_map_phys(fmr_pool, page_vec->pages,
        page_vec->npages, page_vec->pages[0]);
 if (IS_ERR(fmr)) {
  ret = PTR_ERR(fmr);
  iser_err("ib_fmr_pool_map_phys failed: %d\n", ret);
  return ret;
 }

 reg->sge.lkey = fmr->fmr->lkey;
 reg->rkey = fmr->fmr->rkey;
 reg->sge.addr = page_vec->fake_mr.iova;
 reg->sge.length = page_vec->fake_mr.length;
 reg->mem_h = fmr;

 iser_dbg("fmr reg: lkey=0x%x, rkey=0x%x, addr=0x%llx,"
   " length=0x%x\n", reg->sge.lkey, reg->rkey,
   reg->sge.addr, reg->sge.length);

 return 0;
}
