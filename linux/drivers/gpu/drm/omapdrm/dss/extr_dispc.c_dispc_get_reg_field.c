
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dispc_device {TYPE_2__* feat; } ;
typedef enum dispc_feat_reg_field { ____Placeholder_dispc_feat_reg_field } dispc_feat_reg_field ;
struct TYPE_4__ {int num_reg_fields; TYPE_1__* reg_fields; } ;
struct TYPE_3__ {int end; int start; } ;


 int BUG () ;

__attribute__((used)) static void dispc_get_reg_field(struct dispc_device *dispc,
    enum dispc_feat_reg_field id,
    u8 *start, u8 *end)
{
 if (id >= dispc->feat->num_reg_fields)
  BUG();

 *start = dispc->feat->reg_fields[id].start;
 *end = dispc->feat->reg_fields[id].end;
}
