
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct komeda_format_caps_table {int n_formats; struct komeda_format_caps* format_caps; } ;
struct komeda_format_caps {scalar_t__ supported_layer_types; scalar_t__ fourcc; } ;


 int GFP_KERNEL ;
 scalar_t__* kcalloc (int,int,int ) ;

u32 *komeda_get_layer_fourcc_list(struct komeda_format_caps_table *table,
      u32 layer_type, u32 *n_fmts)
{
 const struct komeda_format_caps *cap;
 u32 *fmts;
 int i, j, n = 0;

 fmts = kcalloc(table->n_formats, sizeof(u32), GFP_KERNEL);
 if (!fmts)
  return ((void*)0);

 for (i = 0; i < table->n_formats; i++) {
  cap = &table->format_caps[i];
  if (!(layer_type & cap->supported_layer_types) ||
      (cap->fourcc == 0))
   continue;




  for (j = n - 1; j >= 0; j--)
   if (fmts[j] == cap->fourcc)
    break;

  if (j < 0)
   fmts[n++] = cap->fourcc;
 }

 if (n_fmts)
  *n_fmts = n;

 return fmts;
}
