
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int ITS_MAX_VPEID ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int its_vpeid_ida ;

__attribute__((used)) static int its_vpe_id_alloc(void)
{
 return ida_simple_get(&its_vpeid_ida, 0, ITS_MAX_VPEID, GFP_KERNEL);
}
