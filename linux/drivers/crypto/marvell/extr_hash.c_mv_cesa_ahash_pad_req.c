
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv_cesa_ahash_req {int len; scalar_t__ algo_le; } ;
typedef int bits ;
typedef int __le64 ;
typedef int __be64 ;


 int cpu_to_be64 (int) ;
 int cpu_to_le64 (int) ;
 int memcpy (int*,int *,int) ;
 int memset (int*,int ,unsigned int) ;
 unsigned int mv_cesa_ahash_pad_len (struct mv_cesa_ahash_req*) ;

__attribute__((used)) static int mv_cesa_ahash_pad_req(struct mv_cesa_ahash_req *creq, u8 *buf)
{
 unsigned int padlen;

 buf[0] = 0x80;

 padlen = mv_cesa_ahash_pad_len(creq);
 memset(buf + 1, 0, padlen - 1);

 if (creq->algo_le) {
  __le64 bits = cpu_to_le64(creq->len << 3);
  memcpy(buf + padlen, &bits, sizeof(bits));
 } else {
  __be64 bits = cpu_to_be64(creq->len << 3);
  memcpy(buf + padlen, &bits, sizeof(bits));
 }

 return padlen + 8;
}
