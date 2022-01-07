
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insert_entries {int vm; int flags; int level; int vma; } ;


 int bxt_vtd_ggtt_wa (int ) ;
 int gen8_ggtt_insert_entries (int ,int ,int ,int ) ;

__attribute__((used)) static int bxt_vtd_ggtt_insert_entries__cb(void *_arg)
{
 struct insert_entries *arg = _arg;

 gen8_ggtt_insert_entries(arg->vm, arg->vma, arg->level, arg->flags);
 bxt_vtd_ggtt_wa(arg->vm);

 return 0;
}
