
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct icp_qat_uclo_objhandle {unsigned int uword_in_bytes; } ;
struct icp_qat_uclo_encap_page {unsigned int uwblock_num; TYPE_1__* uwblock; } ;
struct TYPE_2__ {unsigned int start_addr; int words_num; scalar_t__ micro_words; } ;


 int INVLD_UWORD ;
 int memcpy (int*,void*,unsigned int) ;

__attribute__((used)) static void qat_uclo_fill_uwords(struct icp_qat_uclo_objhandle *obj_handle,
     struct icp_qat_uclo_encap_page *encap_page,
     uint64_t *uword, unsigned int addr_p,
     unsigned int raddr, uint64_t fill)
{
 uint64_t uwrd = 0;
 unsigned int i;

 if (!encap_page) {
  *uword = fill;
  return;
 }
 for (i = 0; i < encap_page->uwblock_num; i++) {
  if (raddr >= encap_page->uwblock[i].start_addr &&
      raddr <= encap_page->uwblock[i].start_addr +
      encap_page->uwblock[i].words_num - 1) {
   raddr -= encap_page->uwblock[i].start_addr;
   raddr *= obj_handle->uword_in_bytes;
   memcpy(&uwrd, (void *)(((uintptr_t)
          encap_page->uwblock[i].micro_words) + raddr),
          obj_handle->uword_in_bytes);
   uwrd = uwrd & 0xbffffffffffull;
  }
 }
 *uword = uwrd;
 if (*uword == INVLD_UWORD)
  *uword = fill;
}
