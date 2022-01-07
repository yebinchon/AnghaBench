
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_mr {int allocated_from_cache; int cb_work; int out; int mmkey; struct mlx5_ib_dev* dev; int order; } ;
typedef struct mlx5_ib_mr u32 ;
struct mlx5_mr_cache {struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_dev {int async_ctx; int mdev; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {scalar_t__ pending; int access_mode; int xlt; int page; int lock; int order; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAX_PENDING_REG_MR ;
 void* MLX5_ADDR_OF (int ,struct mlx5_ib_mr*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int access_mode_1_0 ;
 int access_mode_4_2 ;
 int create_mkey_in ;
 int free ;
 int kfree (struct mlx5_ib_mr*) ;
 struct mlx5_ib_mr* kzalloc (int,int ) ;
 int log_page_size ;
 int memory_key_mkey_entry ;
 int mlx5_core_create_mkey_cb (int ,int *,int *,struct mlx5_ib_mr*,int,int ,int,int ,int *) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 int qpn ;
 int reg_mr_callback ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int translations_octword_size ;
 int umr_en ;

__attribute__((used)) static int add_keys(struct mlx5_ib_dev *dev, int c, int num)
{
 struct mlx5_mr_cache *cache = &dev->cache;
 struct mlx5_cache_ent *ent = &cache->ent[c];
 int inlen = MLX5_ST_SZ_BYTES(create_mkey_in);
 struct mlx5_ib_mr *mr;
 void *mkc;
 u32 *in;
 int err = 0;
 int i;

 in = kzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);
 for (i = 0; i < num; i++) {
  if (ent->pending >= MAX_PENDING_REG_MR) {
   err = -EAGAIN;
   break;
  }

  mr = kzalloc(sizeof(*mr), GFP_KERNEL);
  if (!mr) {
   err = -ENOMEM;
   break;
  }
  mr->order = ent->order;
  mr->allocated_from_cache = 1;
  mr->dev = dev;

  MLX5_SET(mkc, mkc, free, 1);
  MLX5_SET(mkc, mkc, umr_en, 1);
  MLX5_SET(mkc, mkc, access_mode_1_0, ent->access_mode & 0x3);
  MLX5_SET(mkc, mkc, access_mode_4_2,
    (ent->access_mode >> 2) & 0x7);

  MLX5_SET(mkc, mkc, qpn, 0xffffff);
  MLX5_SET(mkc, mkc, translations_octword_size, ent->xlt);
  MLX5_SET(mkc, mkc, log_page_size, ent->page);

  spin_lock_irq(&ent->lock);
  ent->pending++;
  spin_unlock_irq(&ent->lock);
  err = mlx5_core_create_mkey_cb(dev->mdev, &mr->mmkey,
            &dev->async_ctx, in, inlen,
            mr->out, sizeof(mr->out),
            reg_mr_callback, &mr->cb_work);
  if (err) {
   spin_lock_irq(&ent->lock);
   ent->pending--;
   spin_unlock_irq(&ent->lock);
   mlx5_ib_warn(dev, "create mkey failed %d\n", err);
   kfree(mr);
   break;
  }
 }

 kfree(in);
 return err;
}
