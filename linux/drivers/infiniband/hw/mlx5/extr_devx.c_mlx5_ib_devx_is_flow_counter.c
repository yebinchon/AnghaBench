
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef scalar_t__ u16 ;
struct devx_obj {int dinbox; } ;


 scalar_t__ MLX5_CMD_OP_DEALLOC_FLOW_COUNTER ;
 void* MLX5_GET (int ,int ,int ) ;
 int dealloc_flow_counter_in ;
 int flow_counter_id ;
 int general_obj_in_cmd_hdr ;
 scalar_t__ opcode ;

bool mlx5_ib_devx_is_flow_counter(void *obj, u32 *counter_id)
{
 struct devx_obj *devx_obj = obj;
 u16 opcode = MLX5_GET(general_obj_in_cmd_hdr, devx_obj->dinbox, opcode);

 if (opcode == MLX5_CMD_OP_DEALLOC_FLOW_COUNTER) {
  *counter_id = MLX5_GET(dealloc_flow_counter_in,
           devx_obj->dinbox,
           flow_counter_id);
  return 1;
 }

 return 0;
}
