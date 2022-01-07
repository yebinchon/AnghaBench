
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int qat_dh_check_params_length(unsigned int p_len)
{
 switch (p_len) {
 case 1536:
 case 2048:
 case 3072:
 case 4096:
  return 0;
 }
 return -EINVAL;
}
