
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int name; int op_state; void* pvt_info; } ;


 int GFP_KERNEL ;
 int OP_ALLOC ;
 void* edac_align_ptr (void**,int,unsigned int) ;
 int edac_dbg (int,char*) ;
 struct edac_pci_ctl_info* kzalloc (unsigned int,int ) ;
 int snprintf (int ,scalar_t__,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

struct edac_pci_ctl_info *edac_pci_alloc_ctl_info(unsigned int sz_pvt,
      const char *edac_pci_name)
{
 struct edac_pci_ctl_info *pci;
 void *p = ((void*)0), *pvt;
 unsigned int size;

 edac_dbg(1, "\n");

 pci = edac_align_ptr(&p, sizeof(*pci), 1);
 pvt = edac_align_ptr(&p, 1, sz_pvt);
 size = ((unsigned long)pvt) + sz_pvt;


 pci = kzalloc(size, GFP_KERNEL);
 if (pci == ((void*)0))
  return ((void*)0);


 pvt = sz_pvt ? ((char *)pci) + ((unsigned long)pvt) : ((void*)0);

 pci->pvt_info = pvt;
 pci->op_state = OP_ALLOC;

 snprintf(pci->name, strlen(edac_pci_name) + 1, "%s", edac_pci_name);

 return pci;
}
