
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;





 int KEYLENGTH_4BYTES ;
 int KEYLENGTH_6BYTES ;
 int KEYLENGTH_8BYTES ;
 int MAX_NK ;
 int NUMBER_OF_ROUNDS_10 ;
 int NUMBER_OF_ROUNDS_12 ;
 int NUMBER_OF_ROUNDS_14 ;
 int aes_ks_subword (int) ;
 int be32_to_cpu (int) ;
 int htonl (int) ;
 int* round_constant ;

__attribute__((used)) static void get_aes_decrypt_key(unsigned char *dec_key,
           const unsigned char *key,
           unsigned int keylength)
{
 u32 temp;
 u32 w_ring[MAX_NK];
 int i, j, k;
 u8 nr, nk;

 switch (keylength) {
 case 130:
  nk = KEYLENGTH_4BYTES;
  nr = NUMBER_OF_ROUNDS_10;
  break;
 case 129:
  nk = KEYLENGTH_6BYTES;
  nr = NUMBER_OF_ROUNDS_12;
  break;
 case 128:
  nk = KEYLENGTH_8BYTES;
  nr = NUMBER_OF_ROUNDS_14;
  break;
 default:
  return;
 }
 for (i = 0; i < nk; i++)
  w_ring[i] = be32_to_cpu(*(u32 *)&key[4 * i]);

 i = 0;
 temp = w_ring[nk - 1];
 while (i + nk < (nr + 1) * 4) {
  if (!(i % nk)) {

   temp = (temp << 8) | (temp >> 24);
   temp = aes_ks_subword(temp);
   temp ^= round_constant[i / nk];
  } else if (nk == 8 && (i % 4 == 0)) {
   temp = aes_ks_subword(temp);
  }
  w_ring[i % nk] ^= temp;
  temp = w_ring[i % nk];
  i++;
 }
 i--;
 for (k = 0, j = i % nk; k < nk; k++) {
  *((u32 *)dec_key + k) = htonl(w_ring[j]);
  j--;
  if (j < 0)
   j += nk;
 }
}
