
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct tbl_walk {int pasid; TYPE_3__* pasid_tbl_entry; TYPE_2__* ctx_entry; TYPE_1__* rt_entry; int devfn; int bus; } ;
struct seq_file {struct tbl_walk* private; } ;
struct TYPE_6__ {int * val; } ;
struct TYPE_5__ {int lo; int hi; } ;
struct TYPE_4__ {int lo; int hi; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int seq_printf (struct seq_file*,char*,int,int ,int ,int ,...) ;

__attribute__((used)) static inline void print_tbl_walk(struct seq_file *m)
{
 struct tbl_walk *tbl_wlk = m->private;

 seq_printf(m, "%02x:%02x.%x\t0x%016llx:0x%016llx\t0x%016llx:0x%016llx\t",
     tbl_wlk->bus, PCI_SLOT(tbl_wlk->devfn),
     PCI_FUNC(tbl_wlk->devfn), tbl_wlk->rt_entry->hi,
     tbl_wlk->rt_entry->lo, tbl_wlk->ctx_entry->hi,
     tbl_wlk->ctx_entry->lo);






 if (!tbl_wlk->pasid_tbl_entry)
  seq_printf(m, "%-6d\t0x%016llx:0x%016llx:0x%016llx\n", -1,
      (u64)0, (u64)0, (u64)0);
 else
  seq_printf(m, "%-6d\t0x%016llx:0x%016llx:0x%016llx\n",
      tbl_wlk->pasid, tbl_wlk->pasid_tbl_entry->val[2],
      tbl_wlk->pasid_tbl_entry->val[1],
      tbl_wlk->pasid_tbl_entry->val[0]);
}
