
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_MW_BIND ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int MLX4_PERM_ATOMIC ;
 int MLX4_PERM_BIND_MW ;
 int MLX4_PERM_LOCAL_READ ;
 int MLX4_PERM_LOCAL_WRITE ;
 int MLX4_PERM_REMOTE_READ ;
 int MLX4_PERM_REMOTE_WRITE ;

__attribute__((used)) static u32 convert_access(int acc)
{
 return (acc & IB_ACCESS_REMOTE_ATOMIC ? MLX4_PERM_ATOMIC : 0) |
        (acc & IB_ACCESS_REMOTE_WRITE ? MLX4_PERM_REMOTE_WRITE : 0) |
        (acc & IB_ACCESS_REMOTE_READ ? MLX4_PERM_REMOTE_READ : 0) |
        (acc & IB_ACCESS_LOCAL_WRITE ? MLX4_PERM_LOCAL_WRITE : 0) |
        (acc & IB_ACCESS_MW_BIND ? MLX4_PERM_BIND_MW : 0) |
        MLX4_PERM_LOCAL_READ;
}
