
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct komeda_format_caps_table {int (* format_mod_supported ) (struct komeda_format_caps const*,int,int ,int) ;} ;
struct komeda_format_caps {int supported_layer_types; } ;


 struct komeda_format_caps* komeda_get_format_caps (struct komeda_format_caps_table*,int,int ) ;
 int stub1 (struct komeda_format_caps const*,int,int ,int) ;

bool komeda_format_mod_supported(struct komeda_format_caps_table *table,
     u32 layer_type, u32 fourcc, u64 modifier,
     u32 rot)
{
 const struct komeda_format_caps *caps;

 caps = komeda_get_format_caps(table, fourcc, modifier);
 if (!caps)
  return 0;

 if (!(caps->supported_layer_types & layer_type))
  return 0;

 if (table->format_mod_supported)
  return table->format_mod_supported(caps, layer_type, modifier,
         rot);

 return 1;
}
