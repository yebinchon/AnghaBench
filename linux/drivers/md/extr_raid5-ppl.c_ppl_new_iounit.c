
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int dummy; } ;
struct ppl_log {struct ppl_conf* ppl_conf; } ;
struct ppl_io_unit {int seq; struct page* header_page; int biovec; int bio; int pending_flushes; int pending_stripes; int stripe_list; int log_sibling; struct ppl_log* log; } ;
struct ppl_header {int generation; int signature; struct ppl_io_unit* reserved; } ;
struct ppl_conf {int seq; int signature; int io_pool; } ;
struct page {int dummy; } ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int PPL_HDR_RESERVED ;
 int PPL_IO_INLINE_BVECS ;
 int atomic64_add_return (int,int *) ;
 int atomic_set (int *,int ) ;
 int bio_init (int *,int ,int ) ;
 int clear_page (struct ppl_header*) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 struct ppl_io_unit* mempool_alloc (int *,int ) ;
 int memset (struct ppl_io_unit*,int,int) ;
 struct ppl_header* page_address (struct page*) ;

__attribute__((used)) static struct ppl_io_unit *ppl_new_iounit(struct ppl_log *log,
       struct stripe_head *sh)
{
 struct ppl_conf *ppl_conf = log->ppl_conf;
 struct ppl_io_unit *io;
 struct ppl_header *pplhdr;
 struct page *header_page;

 io = mempool_alloc(&ppl_conf->io_pool, GFP_NOWAIT);
 if (!io)
  return ((void*)0);

 header_page = io->header_page;
 memset(io, 0, sizeof(*io));
 io->header_page = header_page;

 io->log = log;
 INIT_LIST_HEAD(&io->log_sibling);
 INIT_LIST_HEAD(&io->stripe_list);
 atomic_set(&io->pending_stripes, 0);
 atomic_set(&io->pending_flushes, 0);
 bio_init(&io->bio, io->biovec, PPL_IO_INLINE_BVECS);

 pplhdr = page_address(io->header_page);
 clear_page(pplhdr);
 memset(pplhdr->reserved, 0xff, PPL_HDR_RESERVED);
 pplhdr->signature = cpu_to_le32(ppl_conf->signature);

 io->seq = atomic64_add_return(1, &ppl_conf->seq);
 pplhdr->generation = cpu_to_le64(io->seq);

 return io;
}
