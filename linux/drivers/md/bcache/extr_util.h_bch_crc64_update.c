
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int crc64_be (int ,void const*,size_t) ;

__attribute__((used)) static inline uint64_t bch_crc64_update(uint64_t crc,
     const void *p,
     size_t len)
{
 crc = crc64_be(crc, p, len);
 return crc;
}
