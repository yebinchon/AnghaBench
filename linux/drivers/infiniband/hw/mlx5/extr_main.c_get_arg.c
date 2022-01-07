
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_IB_MMAP_CMD_SHIFT ;

__attribute__((used)) static int get_arg(unsigned long offset)
{
 return offset & ((1 << MLX5_IB_MMAP_CMD_SHIFT) - 1);
}
