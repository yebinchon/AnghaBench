
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_cfg_section {int param_head; } ;
struct adf_cfg_key_val {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void adf_cfg_keyval_add(struct adf_cfg_key_val *new,
          struct adf_cfg_section *sec)
{
 list_add_tail(&new->list, &sec->param_head);
}
