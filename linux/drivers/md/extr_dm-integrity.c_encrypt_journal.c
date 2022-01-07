
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_completion {int dummy; } ;
struct dm_integrity_c {scalar_t__ journal_xor; } ;


 void crypt_journal (struct dm_integrity_c*,int,unsigned int,unsigned int,struct journal_completion*) ;
 void xor_journal (struct dm_integrity_c*,int,unsigned int,unsigned int,struct journal_completion*) ;

__attribute__((used)) static void encrypt_journal(struct dm_integrity_c *ic, bool encrypt, unsigned section,
       unsigned n_sections, struct journal_completion *comp)
{
 if (ic->journal_xor)
  return xor_journal(ic, encrypt, section, n_sections, comp);
 else
  return crypt_journal(ic, encrypt, section, n_sections, comp);
}
