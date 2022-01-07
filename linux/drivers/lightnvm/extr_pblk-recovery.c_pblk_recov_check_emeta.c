
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pblk {int dummy; } ;
struct TYPE_2__ {int identifier; } ;
struct line_emeta {TYPE_1__ header; int crc; } ;


 scalar_t__ PBLK_MAGIC ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ pblk_calc_emeta_crc (struct pblk*,struct line_emeta*) ;

int pblk_recov_check_emeta(struct pblk *pblk, struct line_emeta *emeta_buf)
{
 u32 crc;

 crc = pblk_calc_emeta_crc(pblk, emeta_buf);
 if (le32_to_cpu(emeta_buf->crc) != crc)
  return 1;

 if (le32_to_cpu(emeta_buf->header.identifier) != PBLK_MAGIC)
  return 1;

 return 0;
}
