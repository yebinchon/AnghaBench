
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {char* iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct journal_completion {int in_flight; } ;
struct dm_integrity_c {int journal_crypt; struct skcipher_request** sk_requests; struct scatterlist** journal_scatterlist; struct scatterlist** journal_io_scatterlist; } ;


 int atomic_add (int,int *) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int complete_journal_op (struct journal_completion*) ;
 unsigned int crypto_skcipher_ivsize (int ) ;
 int do_crypt (int,struct skcipher_request*,struct journal_completion*) ;
 scalar_t__ likely (int) ;
 int memcpy (char*,char*,unsigned int) ;
 int rw_section_mac (struct dm_integrity_c*,unsigned int,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void crypt_journal(struct dm_integrity_c *ic, bool encrypt, unsigned section,
     unsigned n_sections, struct journal_completion *comp)
{
 struct scatterlist **source_sg;
 struct scatterlist **target_sg;

 atomic_add(2, &comp->in_flight);

 if (likely(encrypt)) {
  source_sg = ic->journal_scatterlist;
  target_sg = ic->journal_io_scatterlist;
 } else {
  source_sg = ic->journal_io_scatterlist;
  target_sg = ic->journal_scatterlist;
 }

 do {
  struct skcipher_request *req;
  unsigned ivsize;
  char *iv;

  if (likely(encrypt))
   rw_section_mac(ic, section, 1);

  req = ic->sk_requests[section];
  ivsize = crypto_skcipher_ivsize(ic->journal_crypt);
  iv = req->iv;

  memcpy(iv, iv + ivsize, ivsize);

  req->src = source_sg[section];
  req->dst = target_sg[section];

  if (unlikely(do_crypt(encrypt, req, comp)))
   atomic_inc(&comp->in_flight);

  section++;
  n_sections--;
 } while (n_sections);

 atomic_dec(&comp->in_flight);
 complete_journal_op(comp);
}
