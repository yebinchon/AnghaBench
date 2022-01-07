
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_core_mkey {scalar_t__ type; scalar_t__ key; } ;


 scalar_t__ MLX5_MKEY_MW ;
 scalar_t__ mlx5_base_mkey (scalar_t__) ;

__attribute__((used)) static bool mkey_is_eq(struct mlx5_core_mkey *mmkey, u32 key)
{
 if (!mmkey)
  return 0;
 if (mmkey->type == MLX5_MKEY_MW)
  return mlx5_base_mkey(mmkey->key) == mlx5_base_mkey(key);
 return mmkey->key == key;
}
