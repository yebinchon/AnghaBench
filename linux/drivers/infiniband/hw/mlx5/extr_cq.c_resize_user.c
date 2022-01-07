
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucmd ;
struct mlx5_ib_resize_cq {int cqe_size; int buf_addr; scalar_t__ reserved1; scalar_t__ reserved0; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_ib_cq {struct ib_umem* resize_umem; } ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;


 int EINVAL ;
 int IB_ACCESS_LOCAL_WRITE ;
 scalar_t__ IS_ERR (struct ib_umem*) ;
 int PTR_ERR (struct ib_umem*) ;
 int SIZE_MAX ;
 int ib_copy_from_udata (struct mlx5_ib_resize_cq*,struct ib_udata*,int) ;
 struct ib_umem* ib_umem_get (struct ib_udata*,int ,size_t,int ,int) ;
 int mlx5_ib_cont_pages (struct ib_umem*,int ,int ,int*,int*,int*,int *) ;

__attribute__((used)) static int resize_user(struct mlx5_ib_dev *dev, struct mlx5_ib_cq *cq,
         int entries, struct ib_udata *udata, int *npas,
         int *page_shift, int *cqe_size)
{
 struct mlx5_ib_resize_cq ucmd;
 struct ib_umem *umem;
 int err;
 int npages;

 err = ib_copy_from_udata(&ucmd, udata, sizeof(ucmd));
 if (err)
  return err;

 if (ucmd.reserved0 || ucmd.reserved1)
  return -EINVAL;


 if (ucmd.cqe_size && SIZE_MAX / ucmd.cqe_size <= entries - 1)
  return -EINVAL;

 umem = ib_umem_get(udata, ucmd.buf_addr,
      (size_t)ucmd.cqe_size * entries,
      IB_ACCESS_LOCAL_WRITE, 1);
 if (IS_ERR(umem)) {
  err = PTR_ERR(umem);
  return err;
 }

 mlx5_ib_cont_pages(umem, ucmd.buf_addr, 0, &npages, page_shift,
      npas, ((void*)0));

 cq->resize_umem = umem;
 *cqe_size = ucmd.cqe_size;

 return 0;
}
