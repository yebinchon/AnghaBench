
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_completion {int comp; void* in_flight; struct dm_integrity_c* ic; } ;
struct dm_integrity_c {unsigned int journal_sections; scalar_t__ journal_io; } ;
typedef void* atomic_t ;


 scalar_t__ ATOMIC_INIT (int) ;
 int REQ_FUA ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int encrypt_journal (struct dm_integrity_c*,int,unsigned int,unsigned int,struct journal_completion*) ;
 int init_completion (int *) ;
 int reinit_completion (int *) ;
 int rw_journal (struct dm_integrity_c*,int ,int,unsigned int,unsigned int,struct journal_completion*) ;
 int rw_section_mac (struct dm_integrity_c*,unsigned int,int) ;
 scalar_t__ try_wait_for_completion (int *) ;
 int wait_for_completion_io (int *) ;

__attribute__((used)) static void write_journal(struct dm_integrity_c *ic, unsigned commit_start, unsigned commit_sections)
{
 struct journal_completion io_comp;
 struct journal_completion crypt_comp_1;
 struct journal_completion crypt_comp_2;
 unsigned i;

 io_comp.ic = ic;
 init_completion(&io_comp.comp);

 if (commit_start + commit_sections <= ic->journal_sections) {
  io_comp.in_flight = (atomic_t)ATOMIC_INIT(1);
  if (ic->journal_io) {
   crypt_comp_1.ic = ic;
   init_completion(&crypt_comp_1.comp);
   crypt_comp_1.in_flight = (atomic_t)ATOMIC_INIT(0);
   encrypt_journal(ic, 1, commit_start, commit_sections, &crypt_comp_1);
   wait_for_completion_io(&crypt_comp_1.comp);
  } else {
   for (i = 0; i < commit_sections; i++)
    rw_section_mac(ic, commit_start + i, 1);
  }
  rw_journal(ic, REQ_OP_WRITE, REQ_FUA | REQ_SYNC, commit_start,
      commit_sections, &io_comp);
 } else {
  unsigned to_end;
  io_comp.in_flight = (atomic_t)ATOMIC_INIT(2);
  to_end = ic->journal_sections - commit_start;
  if (ic->journal_io) {
   crypt_comp_1.ic = ic;
   init_completion(&crypt_comp_1.comp);
   crypt_comp_1.in_flight = (atomic_t)ATOMIC_INIT(0);
   encrypt_journal(ic, 1, commit_start, to_end, &crypt_comp_1);
   if (try_wait_for_completion(&crypt_comp_1.comp)) {
    rw_journal(ic, REQ_OP_WRITE, REQ_FUA, commit_start, to_end, &io_comp);
    reinit_completion(&crypt_comp_1.comp);
    crypt_comp_1.in_flight = (atomic_t)ATOMIC_INIT(0);
    encrypt_journal(ic, 1, 0, commit_sections - to_end, &crypt_comp_1);
    wait_for_completion_io(&crypt_comp_1.comp);
   } else {
    crypt_comp_2.ic = ic;
    init_completion(&crypt_comp_2.comp);
    crypt_comp_2.in_flight = (atomic_t)ATOMIC_INIT(0);
    encrypt_journal(ic, 1, 0, commit_sections - to_end, &crypt_comp_2);
    wait_for_completion_io(&crypt_comp_1.comp);
    rw_journal(ic, REQ_OP_WRITE, REQ_FUA, commit_start, to_end, &io_comp);
    wait_for_completion_io(&crypt_comp_2.comp);
   }
  } else {
   for (i = 0; i < to_end; i++)
    rw_section_mac(ic, commit_start + i, 1);
   rw_journal(ic, REQ_OP_WRITE, REQ_FUA, commit_start, to_end, &io_comp);
   for (i = 0; i < commit_sections - to_end; i++)
    rw_section_mac(ic, i, 1);
  }
  rw_journal(ic, REQ_OP_WRITE, REQ_FUA, 0, commit_sections - to_end, &io_comp);
 }

 wait_for_completion_io(&io_comp.comp);
}
