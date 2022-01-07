
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool num_vfs_valid(int num_vfs)
{
 bool valid = 0;

 switch (num_vfs) {
 case 16:
 case 32:
 case 64:
 case 128:
  valid = 1;
  break;
 }

 return valid;
}
