
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct r5l_meta_block {void* position; void* seq; void* meta_size; int version; void* magic; } ;
struct r5l_log {int dummy; } ;
struct page {int dummy; } ;
typedef int sector_t ;


 int R5LOG_MAGIC ;
 int R5LOG_VERSION ;
 int clear_page (struct r5l_meta_block*) ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_le64 (int ) ;
 struct r5l_meta_block* page_address (struct page*) ;

__attribute__((used)) static void
r5l_recovery_create_empty_meta_block(struct r5l_log *log,
         struct page *page,
         sector_t pos, u64 seq)
{
 struct r5l_meta_block *mb;

 mb = page_address(page);
 clear_page(mb);
 mb->magic = cpu_to_le32(R5LOG_MAGIC);
 mb->version = R5LOG_VERSION;
 mb->meta_size = cpu_to_le32(sizeof(struct r5l_meta_block));
 mb->seq = cpu_to_le64(seq);
 mb->position = cpu_to_le64(pos);
}
