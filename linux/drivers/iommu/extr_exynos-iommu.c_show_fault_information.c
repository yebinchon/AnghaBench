
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sysmmu_pte_t ;
typedef int sysmmu_iova_t ;
struct sysmmu_fault_info {int name; } ;
struct sysmmu_drvdata {int sysmmu; int pgtable; int master; } ;


 int dev_dbg (int ,char*,int *) ;
 int dev_err (int ,char*,int ,int ,int ) ;
 int dev_name (int ) ;
 scalar_t__ lv1ent_page (int **) ;
 int ** page_entry (int **,int ) ;
 int phys_to_virt (int ) ;
 int ** section_entry (int ,int ) ;

__attribute__((used)) static void show_fault_information(struct sysmmu_drvdata *data,
       const struct sysmmu_fault_info *finfo,
       sysmmu_iova_t fault_addr)
{
 sysmmu_pte_t *ent;

 dev_err(data->sysmmu, "%s: %s FAULT occurred at %#x\n",
  dev_name(data->master), finfo->name, fault_addr);
 dev_dbg(data->sysmmu, "Page table base: %pa\n", &data->pgtable);
 ent = section_entry(phys_to_virt(data->pgtable), fault_addr);
 dev_dbg(data->sysmmu, "\tLv1 entry: %#x\n", *ent);
 if (lv1ent_page(ent)) {
  ent = page_entry(ent, fault_addr);
  dev_dbg(data->sysmmu, "\t Lv2 entry: %#x\n", *ent);
 }
}
