
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_format_caps_table {int n_formats; int format_mod_supported; int format_caps; } ;
struct komeda_dev {struct komeda_format_caps_table fmt_tbl; } ;


 int ARRAY_SIZE (int ) ;
 int d71_format_caps_table ;
 int d71_format_mod_supported ;

__attribute__((used)) static void d71_init_fmt_tbl(struct komeda_dev *mdev)
{
 struct komeda_format_caps_table *table = &mdev->fmt_tbl;

 table->format_caps = d71_format_caps_table;
 table->format_mod_supported = d71_format_mod_supported;
 table->n_formats = ARRAY_SIZE(d71_format_caps_table);
}
