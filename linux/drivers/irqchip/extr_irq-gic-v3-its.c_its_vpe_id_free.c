
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ida_simple_remove (int *,int ) ;
 int its_vpeid_ida ;

__attribute__((used)) static void its_vpe_id_free(u16 id)
{
 ida_simple_remove(&its_vpeid_ida, id);
}
