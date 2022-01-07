
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct ib_gid_attr {int gid_type; } ;
struct ib_device {int dummy; } ;
typedef enum gid_op_type { ____Placeholder_gid_op_type } gid_op_type ;




 int IB_GID_TYPE_SIZE ;
 int ib_cache_gid_add (struct ib_device*,int ,union ib_gid*,struct ib_gid_attr*) ;
 int ib_cache_gid_del (struct ib_device*,int ,union ib_gid*,struct ib_gid_attr*) ;
 unsigned long roce_gid_type_mask_support (struct ib_device*,int ) ;

__attribute__((used)) static void update_gid(enum gid_op_type gid_op, struct ib_device *ib_dev,
         u8 port, union ib_gid *gid,
         struct ib_gid_attr *gid_attr)
{
 int i;
 unsigned long gid_type_mask = roce_gid_type_mask_support(ib_dev, port);

 for (i = 0; i < IB_GID_TYPE_SIZE; i++) {
  if ((1UL << i) & gid_type_mask) {
   gid_attr->gid_type = i;
   switch (gid_op) {
   case 129:
    ib_cache_gid_add(ib_dev, port,
       gid, gid_attr);
    break;
   case 128:
    ib_cache_gid_del(ib_dev, port,
       gid, gid_attr);
    break;
   }
  }
 }
}
