
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void caam_rsa_drop_leading_zeros(const u8 **ptr, size_t *nbytes)
{
 while (!**ptr && *nbytes) {
  (*ptr)++;
  (*nbytes)--;
 }
}
