
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pblk_line_meta {int* emeta_len; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct line_header {int dummy; } ;
struct line_emeta {int dummy; } ;
typedef int crc ;


 int crc32_le (int ,unsigned char*,int) ;

__attribute__((used)) static inline u32 pblk_calc_emeta_crc(struct pblk *pblk,
          struct line_emeta *emeta)
{
 struct pblk_line_meta *lm = &pblk->lm;
 u32 crc = ~(u32)0;

 crc = crc32_le(crc, (unsigned char *)emeta +
    sizeof(struct line_header) + sizeof(crc),
    lm->emeta_len[0] -
    sizeof(struct line_header) - sizeof(crc));

 return crc;
}
