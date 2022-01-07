
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static int rank_hash(u64 pmiaddr)
{
 return ((pmiaddr >> 16) ^ (pmiaddr >> 10)) & 1;
}
