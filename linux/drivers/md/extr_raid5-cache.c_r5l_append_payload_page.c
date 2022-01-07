
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {struct r5l_io_unit* current_io; } ;
struct r5l_io_unit {int need_split_bio; int current_bio; int split_bio; } ;
struct page {int dummy; } ;


 int BUG () ;
 int BUG_ON (int ) ;
 int PAGE_SIZE ;
 int bio_add_page (int ,struct page*,int ,int ) ;
 int bio_chain (int ,int ) ;
 int r5_reserve_log_entry (struct r5l_log*,struct r5l_io_unit*) ;
 int r5l_bio_alloc (struct r5l_log*) ;

__attribute__((used)) static void r5l_append_payload_page(struct r5l_log *log, struct page *page)
{
 struct r5l_io_unit *io = log->current_io;

 if (io->need_split_bio) {
  BUG_ON(io->split_bio);
  io->split_bio = io->current_bio;
  io->current_bio = r5l_bio_alloc(log);
  bio_chain(io->current_bio, io->split_bio);
  io->need_split_bio = 0;
 }

 if (!bio_add_page(io->current_bio, page, PAGE_SIZE, 0))
  BUG();

 r5_reserve_log_entry(log, io);
}
