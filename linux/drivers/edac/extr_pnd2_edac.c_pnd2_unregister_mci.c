
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int ctl_name; int pvt_info; } ;


 int KERN_ERR ;
 int edac_dbg (int,char*,int ) ;
 int edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int pnd2_printk (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pnd2_unregister_mci(struct mem_ctl_info *mci)
{
 if (unlikely(!mci || !mci->pvt_info)) {
  pnd2_printk(KERN_ERR, "Couldn't find mci handler\n");
  return;
 }


 edac_mc_del_mc(((void*)0));
 edac_dbg(1, "%s: free mci struct\n", mci->ctl_name);
 edac_mc_free(mci);
}
