
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN_64 (int ,int ) ;
 int MLX5_CMD_OP_GENERAL_END ;
 int MLX5_CMD_OP_GENERAL_START ;
 int MLX5_GET (int ,void*,int ) ;
 int general_obj_in_cmd_hdr ;
 int opcode ;
 int vhca_tunnel_commands ;
 int vhca_tunnel_id ;

__attribute__((used)) static bool devx_is_general_cmd(void *in, struct mlx5_ib_dev *dev)
{
 u16 opcode = MLX5_GET(general_obj_in_cmd_hdr, in, opcode);


 if ((MLX5_CAP_GEN_64(dev->mdev, vhca_tunnel_commands) &&
      MLX5_GET(general_obj_in_cmd_hdr, in, vhca_tunnel_id)) ||
     (opcode >= MLX5_CMD_OP_GENERAL_START &&
      opcode < MLX5_CMD_OP_GENERAL_END))
  return 1;

 switch (opcode) {
 case 136:
 case 135:
 case 137:
 case 128:
 case 141:
 case 134:
 case 132:
 case 131:
 case 130:
 case 129:
 case 143:
 case 142:
 case 138:
 case 140:
 case 139:
 case 133:
  return 1;
 default:
  return 0;
 }
}
