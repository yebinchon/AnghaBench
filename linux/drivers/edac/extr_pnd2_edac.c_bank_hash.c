
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static int bank_hash(u64 pmiaddr, int idx, int shft)
{
 int bhash = 0;

 switch (idx) {
 case 0:
  bhash ^= ((pmiaddr >> (12 + shft)) ^ (pmiaddr >> (9 + shft))) & 1;
  break;
 case 1:
  bhash ^= (((pmiaddr >> (10 + shft)) ^ (pmiaddr >> (8 + shft))) & 1) << 1;
  bhash ^= ((pmiaddr >> 22) & 1) << 1;
  break;
 case 2:
  bhash ^= (((pmiaddr >> (13 + shft)) ^ (pmiaddr >> (11 + shft))) & 1) << 2;
  break;
 }

 return bhash;
}
