
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pbl_context {int pbl_buf_size_in_bytes; int physically_continuous; int pbl_buf; } ;
struct ib_umem {int dummy; } ;
struct efa_dev {int ibdev; } ;


 int EFA_CHUNK_PAYLOAD_PTR_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ibdev_dbg (int *,char*,int,int) ;
 scalar_t__ is_vmalloc_addr (int ) ;
 int kvfree (int ) ;
 int kvzalloc (int,int ) ;
 int pbl_continuous_initialize (struct efa_dev*,struct pbl_context*) ;
 int pbl_indirect_initialize (struct efa_dev*,struct pbl_context*) ;
 int umem_to_page_list (struct efa_dev*,struct ib_umem*,int ,int,int ) ;

__attribute__((used)) static int pbl_create(struct efa_dev *dev,
        struct pbl_context *pbl,
        struct ib_umem *umem,
        int hp_cnt,
        u8 hp_shift)
{
 int err;

 pbl->pbl_buf_size_in_bytes = hp_cnt * EFA_CHUNK_PAYLOAD_PTR_SIZE;
 pbl->pbl_buf = kvzalloc(pbl->pbl_buf_size_in_bytes, GFP_KERNEL);
 if (!pbl->pbl_buf)
  return -ENOMEM;

 if (is_vmalloc_addr(pbl->pbl_buf)) {
  pbl->physically_continuous = 0;
  err = umem_to_page_list(dev, umem, pbl->pbl_buf, hp_cnt,
     hp_shift);
  if (err)
   goto err_free;

  err = pbl_indirect_initialize(dev, pbl);
  if (err)
   goto err_free;
 } else {
  pbl->physically_continuous = 1;
  err = umem_to_page_list(dev, umem, pbl->pbl_buf, hp_cnt,
     hp_shift);
  if (err)
   goto err_free;

  err = pbl_continuous_initialize(dev, pbl);
  if (err)
   goto err_free;
 }

 ibdev_dbg(&dev->ibdev,
    "user_pbl_created: user_pages[%u], continuous[%u]\n",
    hp_cnt, pbl->physically_continuous);

 return 0;

err_free:
 kvfree(pbl->pbl_buf);
 return err;
}
