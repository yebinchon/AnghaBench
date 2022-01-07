
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int issuer_lid; int trap_num; int prod_type_lsb; int generic_type; } ;
struct trap_node {TYPE_1__ data; int list; } ;
typedef int __be16 ;


 int GFP_ATOMIC ;
 int IB_NOTICE_PROD_CA ;
 int INIT_LIST_HEAD (int *) ;
 int cpu_to_be32 (int ) ;
 struct trap_node* kzalloc (int,int ) ;

__attribute__((used)) static struct trap_node *create_trap_node(u8 type, __be16 trap_num, u32 lid)
{
 struct trap_node *trap;

 trap = kzalloc(sizeof(*trap), GFP_ATOMIC);
 if (!trap)
  return ((void*)0);

 INIT_LIST_HEAD(&trap->list);
 trap->data.generic_type = type;
 trap->data.prod_type_lsb = IB_NOTICE_PROD_CA;
 trap->data.trap_num = trap_num;
 trap->data.issuer_lid = cpu_to_be32(lid);

 return trap;
}
