
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int caam_rsa_check_key_length(unsigned int len)
{
 if (len > 4096)
  return -EINVAL;
 return 0;
}
