
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line {int dummy; } ;
struct pblk {int instance_uuid; } ;


 int EFAULT ;
 scalar_t__ IS_ERR (struct pblk_line*) ;
 int guid_gen (int *) ;
 int pblk_err (struct pblk*,char*) ;
 int pblk_gc_free_full_lines (struct pblk*) ;
 int pblk_info (struct pblk*,char*,int ) ;
 int pblk_l2p_crc (struct pblk*) ;
 struct pblk_line* pblk_line_get_first_data (struct pblk*) ;
 struct pblk_line* pblk_recov_l2p (struct pblk*) ;

__attribute__((used)) static int pblk_l2p_recover(struct pblk *pblk, bool factory_init)
{
 struct pblk_line *line = ((void*)0);

 if (factory_init) {
  guid_gen(&pblk->instance_uuid);
 } else {
  line = pblk_recov_l2p(pblk);
  if (IS_ERR(line)) {
   pblk_err(pblk, "could not recover l2p table\n");
   return -EFAULT;
  }
 }






 pblk_gc_free_full_lines(pblk);

 if (!line) {

  line = pblk_line_get_first_data(pblk);
  if (!line)
   return -EFAULT;
 }

 return 0;
}
