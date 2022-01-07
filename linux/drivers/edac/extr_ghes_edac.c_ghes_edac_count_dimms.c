
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_header {scalar_t__ type; } ;


 scalar_t__ DMI_ENTRY_MEM_DEVICE ;

__attribute__((used)) static void ghes_edac_count_dimms(const struct dmi_header *dh, void *arg)
{
 int *num_dimm = arg;

 if (dh->type == DMI_ENTRY_MEM_DEVICE)
  (*num_dimm)++;
}
