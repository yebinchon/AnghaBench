
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {int base_version; int class_version; int method; int mgmt_class; } ;


 int IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 int IB_MGMT_METHOD_GET ;

__attribute__((used)) static inline void init_query_mad(struct ib_smp *mad)
{
 mad->base_version = 1;
 mad->mgmt_class = IB_MGMT_CLASS_SUBN_LID_ROUTED;
 mad->class_version = 1;
 mad->method = IB_MGMT_METHOD_GET;
}
