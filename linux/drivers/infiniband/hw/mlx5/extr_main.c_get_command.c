
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MLX5_IB_MMAP_CMD_MASK ;
 unsigned long MLX5_IB_MMAP_CMD_SHIFT ;

__attribute__((used)) static int get_command(unsigned long offset)
{
 return (offset >> MLX5_IB_MMAP_CMD_SHIFT) & MLX5_IB_MMAP_CMD_MASK;
}
