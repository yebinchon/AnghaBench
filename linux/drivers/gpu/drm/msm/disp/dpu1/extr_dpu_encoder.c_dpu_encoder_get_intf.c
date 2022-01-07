
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dpu_mdss_cfg {int intf_count; TYPE_1__* intf; } ;
typedef enum dpu_intf_type { ____Placeholder_dpu_intf_type } dpu_intf_type ;
typedef enum dpu_intf { ____Placeholder_dpu_intf } dpu_intf ;
struct TYPE_2__ {int type; scalar_t__ controller_id; int id; } ;


 int INTF_MAX ;

__attribute__((used)) static enum dpu_intf dpu_encoder_get_intf(struct dpu_mdss_cfg *catalog,
  enum dpu_intf_type type, u32 controller_id)
{
 int i = 0;

 for (i = 0; i < catalog->intf_count; i++) {
  if (catalog->intf[i].type == type
      && catalog->intf[i].controller_id == controller_id) {
   return catalog->intf[i].id;
  }
 }

 return INTF_MAX;
}
