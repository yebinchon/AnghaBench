
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void u32 ;
struct mlx5_mtt {int dummy; } ;
struct TYPE_6__ {int key; int type; } ;
struct TYPE_4__ {struct ib_pd* pd; } ;
struct mlx5_ib_mr {int access_flags; int desc_size; TYPE_3__ mmkey; struct mlx5_ib_dev* dev; TYPE_1__ ibmr; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_umem {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_mr {int dummy; } ;
typedef int __be64 ;
struct TYPE_5__ {int pdn; } ;


 int ENOMEM ;
 struct mlx5_ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_ON_DEMAND ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_IB_MTT_PRESENT ;
 int MLX5_MKC_ACCESS_MODE_MTT ;
 int MLX5_MKEY_MR ;
 int MLX5_SET (void*,void*,struct ib_pd*,int) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 struct ib_pd* a ;
 struct ib_pd* access_mode_1_0 ;
 struct ib_pd* bsf_octword_size ;
 void* create_mkey_in ;
 struct ib_pd* free ;
 int get_octo_len (int ,int ,int) ;
 int kfree (struct mlx5_ib_mr*) ;
 int klm_pas_mtt ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 struct mlx5_ib_mr* kzalloc (int,int ) ;
 int len ;
 struct ib_pd* log_page_size ;
 struct ib_pd* lr ;
 struct ib_pd* lw ;
 int memory_key_mkey_entry ;
 int mlx5_core_create_mkey (int ,TYPE_3__*,void*,int) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int ) ;
 int mlx5_ib_populate_pas (struct mlx5_ib_dev*,struct ib_umem*,int,int *,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;
 int pg ;
 struct ib_pd* pg_access ;
 struct ib_pd* qpn ;
 int roundup (int,int) ;
 struct ib_pd* rr ;
 struct ib_pd* rw ;
 int start_addr ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_mr* to_mmr (struct ib_mr*) ;
 TYPE_2__* to_mpd (struct ib_pd*) ;
 struct ib_pd* translations_octword_actual_size ;
 struct ib_pd* translations_octword_size ;
 struct ib_pd* umr_en ;

__attribute__((used)) static struct mlx5_ib_mr *reg_create(struct ib_mr *ibmr, struct ib_pd *pd,
         u64 virt_addr, u64 length,
         struct ib_umem *umem, int npages,
         int page_shift, int access_flags,
         bool populate)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 struct mlx5_ib_mr *mr;
 __be64 *pas;
 void *mkc;
 int inlen;
 u32 *in;
 int err;
 bool pg_cap = !!(MLX5_CAP_GEN(dev->mdev, pg));

 mr = ibmr ? to_mmr(ibmr) : kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 mr->ibmr.pd = pd;
 mr->access_flags = access_flags;

 inlen = MLX5_ST_SZ_BYTES(create_mkey_in);
 if (populate)
  inlen += sizeof(*pas) * roundup(npages, 2);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in) {
  err = -ENOMEM;
  goto err_1;
 }
 pas = (__be64 *)MLX5_ADDR_OF(create_mkey_in, in, klm_pas_mtt);
 if (populate && !(access_flags & IB_ACCESS_ON_DEMAND))
  mlx5_ib_populate_pas(dev, umem, page_shift, pas,
         pg_cap ? MLX5_IB_MTT_PRESENT : 0);



 MLX5_SET(create_mkey_in, in, pg_access, !!(pg_cap));

 mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);
 MLX5_SET(mkc, mkc, free, !populate);
 MLX5_SET(mkc, mkc, access_mode_1_0, MLX5_MKC_ACCESS_MODE_MTT);
 MLX5_SET(mkc, mkc, a, !!(access_flags & IB_ACCESS_REMOTE_ATOMIC));
 MLX5_SET(mkc, mkc, rw, !!(access_flags & IB_ACCESS_REMOTE_WRITE));
 MLX5_SET(mkc, mkc, rr, !!(access_flags & IB_ACCESS_REMOTE_READ));
 MLX5_SET(mkc, mkc, lw, !!(access_flags & IB_ACCESS_LOCAL_WRITE));
 MLX5_SET(mkc, mkc, lr, 1);
 MLX5_SET(mkc, mkc, umr_en, 1);

 MLX5_SET64(mkc, mkc, start_addr, virt_addr);
 MLX5_SET64(mkc, mkc, len, length);
 MLX5_SET(mkc, mkc, pd, to_mpd(pd)->pdn);
 MLX5_SET(mkc, mkc, bsf_octword_size, 0);
 MLX5_SET(mkc, mkc, translations_octword_size,
   get_octo_len(virt_addr, length, page_shift));
 MLX5_SET(mkc, mkc, log_page_size, page_shift);
 MLX5_SET(mkc, mkc, qpn, 0xffffff);
 if (populate) {
  MLX5_SET(create_mkey_in, in, translations_octword_actual_size,
    get_octo_len(virt_addr, length, page_shift));
 }

 err = mlx5_core_create_mkey(dev->mdev, &mr->mmkey, in, inlen);
 if (err) {
  mlx5_ib_warn(dev, "create mkey failed\n");
  goto err_2;
 }
 mr->mmkey.type = MLX5_MKEY_MR;
 mr->desc_size = sizeof(struct mlx5_mtt);
 mr->dev = dev;
 kvfree(in);

 mlx5_ib_dbg(dev, "mkey = 0x%x\n", mr->mmkey.key);

 return mr;

err_2:
 kvfree(in);

err_1:
 if (!ibmr)
  kfree(mr);

 return ERR_PTR(err);
}
