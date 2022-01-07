
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mlx4_ib_dev {int * sl2vl; int ib_dev; } ;


 int atomic64_set (int *,scalar_t__) ;
 int mlx4_ib_query_sl2vl (int *,int,scalar_t__*) ;
 int pr_err (char*,int,int) ;

void mlx4_ib_sl2vl_update(struct mlx4_ib_dev *mdev, int port)
{
 u64 sl2vl;
 int err;

 err = mlx4_ib_query_sl2vl(&mdev->ib_dev, port, &sl2vl);
 if (err) {
  pr_err("Unable to get current sl to vl mapping for port %d.  Using all zeroes (%d)\n",
         port, err);
  sl2vl = 0;
 }
 atomic64_set(&mdev->sl2vl[port - 1], sl2vl);
}
