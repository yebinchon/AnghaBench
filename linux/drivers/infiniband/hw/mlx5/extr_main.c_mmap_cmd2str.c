
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5_ib_mmap_cmd { ____Placeholder_mlx5_ib_mmap_cmd } mlx5_ib_mmap_cmd ;







__attribute__((used)) static inline char *mmap_cmd2str(enum mlx5_ib_mmap_cmd cmd)
{
 switch (cmd) {
 case 128:
  return "WC";
 case 129:
  return "best effort WC";
 case 130:
  return "NC";
 case 131:
  return "Device Memory";
 default:
  return ((void*)0);
 }
}
