
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_meta_block {void* position; void* seq; int version; int magic; } ;
struct r5l_log {int io_list_lock; int running_ios; int seq; int log_start; int meta_pool; int io_pool; } ;
struct r5l_io_unit {int meta_offset; int log_sibling; void* meta_page; TYPE_1__* current_bio; scalar_t__ seq; int log_start; int state; int flush_barriers; int stripe_list; struct r5l_log* log; } ;
struct TYPE_3__ {struct r5l_io_unit* bi_private; int bi_end_io; } ;


 int GFP_ATOMIC ;
 int GFP_NOIO ;
 int INIT_LIST_HEAD (int *) ;
 int IO_UNIT_RUNNING ;
 int PAGE_SIZE ;
 int R5LOG_MAGIC ;
 int R5LOG_VERSION ;
 int bio_add_page (TYPE_1__*,void*,int ,int ) ;
 int bio_list_init (int *) ;
 int clear_page (struct r5l_meta_block*) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int list_add_tail (int *,int *) ;
 void* mempool_alloc (int *,int ) ;
 int memset (struct r5l_io_unit*,int ,int) ;
 struct r5l_meta_block* page_address (void*) ;
 int r5_reserve_log_entry (struct r5l_log*,struct r5l_io_unit*) ;
 TYPE_1__* r5l_bio_alloc (struct r5l_log*) ;
 int r5l_log_endio ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct r5l_io_unit *r5l_new_meta(struct r5l_log *log)
{
 struct r5l_io_unit *io;
 struct r5l_meta_block *block;

 io = mempool_alloc(&log->io_pool, GFP_ATOMIC);
 if (!io)
  return ((void*)0);
 memset(io, 0, sizeof(*io));

 io->log = log;
 INIT_LIST_HEAD(&io->log_sibling);
 INIT_LIST_HEAD(&io->stripe_list);
 bio_list_init(&io->flush_barriers);
 io->state = IO_UNIT_RUNNING;

 io->meta_page = mempool_alloc(&log->meta_pool, GFP_NOIO);
 block = page_address(io->meta_page);
 clear_page(block);
 block->magic = cpu_to_le32(R5LOG_MAGIC);
 block->version = R5LOG_VERSION;
 block->seq = cpu_to_le64(log->seq);
 block->position = cpu_to_le64(log->log_start);

 io->log_start = log->log_start;
 io->meta_offset = sizeof(struct r5l_meta_block);
 io->seq = log->seq++;

 io->current_bio = r5l_bio_alloc(log);
 io->current_bio->bi_end_io = r5l_log_endio;
 io->current_bio->bi_private = io;
 bio_add_page(io->current_bio, io->meta_page, PAGE_SIZE, 0);

 r5_reserve_log_entry(log, io);

 spin_lock_irq(&log->io_list_lock);
 list_add_tail(&io->log_sibling, &log->running_ios);
 spin_unlock_irq(&log->io_list_lock);

 return io;
}
