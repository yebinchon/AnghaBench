
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct devx_obj {int dinbox; } ;




 int MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE ;
 int MLX5_FLOW_DESTINATION_TYPE_TIR ;
 int MLX5_GET (int ,int ,int ) ;
 int destroy_flow_table_in ;
 int general_obj_in_cmd_hdr ;
 int obj_id ;
 int opcode ;
 int table_id ;

bool mlx5_ib_devx_is_flow_dest(void *obj, int *dest_id, int *dest_type)
{
 struct devx_obj *devx_obj = obj;
 u16 opcode = MLX5_GET(general_obj_in_cmd_hdr, devx_obj->dinbox, opcode);

 switch (opcode) {
 case 128:
  *dest_type = MLX5_FLOW_DESTINATION_TYPE_TIR;
  *dest_id = MLX5_GET(general_obj_in_cmd_hdr, devx_obj->dinbox,
        obj_id);
  return 1;

 case 129:
  *dest_type = MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE;
  *dest_id = MLX5_GET(destroy_flow_table_in, devx_obj->dinbox,
        table_id);
  return 1;
 default:
  return 0;
 }
}
