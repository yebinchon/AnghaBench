
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct pd_uinfo {unsigned int first_sd; unsigned int num_sd; } ;
struct crypto4xx_device {void* scatter_buffer_va; } ;
struct ce_pd {int dummy; } ;


 unsigned int PPC4XX_LAST_SD ;
 unsigned int PPC4XX_NUM_SD ;
 unsigned int PPC4XX_SD_BUFFER_SIZE ;
 unsigned int min (scalar_t__,unsigned int) ;
 int scatterwalk_map_and_copy (void*,struct scatterlist*,unsigned int,unsigned int,int) ;

__attribute__((used)) static void crypto4xx_copy_pkt_to_dst(struct crypto4xx_device *dev,
          struct ce_pd *pd,
          struct pd_uinfo *pd_uinfo,
          u32 nbytes,
          struct scatterlist *dst)
{
 unsigned int first_sd = pd_uinfo->first_sd;
 unsigned int last_sd;
 unsigned int overflow = 0;
 unsigned int to_copy;
 unsigned int dst_start = 0;







 last_sd = (first_sd + pd_uinfo->num_sd);
 if (last_sd > PPC4XX_LAST_SD) {
  last_sd = PPC4XX_LAST_SD;
  overflow = last_sd % PPC4XX_NUM_SD;
 }

 while (nbytes) {
  void *buf = dev->scatter_buffer_va +
   first_sd * PPC4XX_SD_BUFFER_SIZE;

  to_copy = min(nbytes, PPC4XX_SD_BUFFER_SIZE *
          (1 + last_sd - first_sd));
  scatterwalk_map_and_copy(buf, dst, dst_start, to_copy, 1);
  nbytes -= to_copy;

  if (overflow) {
   first_sd = 0;
   last_sd = overflow;
   dst_start += to_copy;
   overflow = 0;
  }
 }
}
