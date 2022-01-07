
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void qat_rsa_drop_leading_zeros(const char **ptr, unsigned int *len)
{
 while (!**ptr && *len) {
  (*ptr)++;
  (*len)--;
 }
}
