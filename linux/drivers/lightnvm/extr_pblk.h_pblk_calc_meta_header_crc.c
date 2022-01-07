
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pblk {int dummy; } ;
struct line_header {int dummy; } ;
typedef int crc ;


 int crc32_le (int ,unsigned char*,int) ;

__attribute__((used)) static inline u32 pblk_calc_meta_header_crc(struct pblk *pblk,
         struct line_header *header)
{
 u32 crc = ~(u32)0;

 crc = crc32_le(crc, (unsigned char *)header + sizeof(crc),
    sizeof(struct line_header) - sizeof(crc));

 return crc;
}
