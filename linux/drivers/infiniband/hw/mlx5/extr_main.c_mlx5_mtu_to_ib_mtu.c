
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*) ;

__attribute__((used)) static int mlx5_mtu_to_ib_mtu(int mtu)
{
 switch (mtu) {
 case 256: return 1;
 case 512: return 2;
 case 1024: return 3;
 case 2048: return 4;
 case 4096: return 5;
 default:
  pr_warn("invalid mtu\n");
  return -1;
 }
}
