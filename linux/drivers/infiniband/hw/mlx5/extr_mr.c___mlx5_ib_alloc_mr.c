
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mr {int device; } ;
struct mlx5_ib_mr {struct ib_mr ibmr; int * umem; } ;
typedef struct mlx5_ib_mr u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_pd {int device; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;


 int ALIGN (struct mlx5_ib_mr,int) ;
 int EINVAL ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;



 int MLX5_ST_SZ_BYTES (int ) ;
 int create_mkey_in ;
 int kfree (struct mlx5_ib_mr*) ;
 struct mlx5_ib_mr* kzalloc (int,int ) ;
 int mlx5_alloc_integrity_descs (struct ib_pd*,struct mlx5_ib_mr*,struct mlx5_ib_mr,struct mlx5_ib_mr,struct mlx5_ib_mr*,int) ;
 int mlx5_alloc_mem_reg_descs (struct ib_pd*,struct mlx5_ib_mr*,int,struct mlx5_ib_mr*,int) ;
 int mlx5_alloc_sg_gaps_descs (struct ib_pd*,struct mlx5_ib_mr*,int,struct mlx5_ib_mr*,int) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static struct ib_mr *__mlx5_ib_alloc_mr(struct ib_pd *pd,
     enum ib_mr_type mr_type, u32 max_num_sg,
     u32 max_num_meta_sg)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 int inlen = MLX5_ST_SZ_BYTES(create_mkey_in);
 int ndescs = ALIGN(max_num_sg, 4);
 struct mlx5_ib_mr *mr;
 u32 *in;
 int err;

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 in = kzalloc(inlen, GFP_KERNEL);
 if (!in) {
  err = -ENOMEM;
  goto err_free;
 }

 mr->ibmr.device = pd->device;
 mr->umem = ((void*)0);

 switch (mr_type) {
 case 129:
  err = mlx5_alloc_mem_reg_descs(pd, mr, ndescs, in, inlen);
  break;
 case 128:
  err = mlx5_alloc_sg_gaps_descs(pd, mr, ndescs, in, inlen);
  break;
 case 130:
  err = mlx5_alloc_integrity_descs(pd, mr, max_num_sg,
       max_num_meta_sg, in, inlen);
  break;
 default:
  mlx5_ib_warn(dev, "Invalid mr type %d\n", mr_type);
  err = -EINVAL;
 }

 if (err)
  goto err_free_in;

 kfree(in);

 return &mr->ibmr;

err_free_in:
 kfree(in);
err_free:
 kfree(mr);
 return ERR_PTR(err);
}
