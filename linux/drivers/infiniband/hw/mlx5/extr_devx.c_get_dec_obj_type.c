
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct devx_obj {int obj_id; } ;
 int MLX5_OBJ_TYPE_CQ ;
 int MLX5_OBJ_TYPE_DCT ;
 int MLX5_OBJ_TYPE_FLOW_COUNTER ;

 int MLX5_OBJ_TYPE_PSV ;
 int MLX5_OBJ_TYPE_QP ;
 int MLX5_OBJ_TYPE_RMP ;
 int MLX5_OBJ_TYPE_RQ ;
 int MLX5_OBJ_TYPE_RQT ;
 int MLX5_OBJ_TYPE_SQ ;
 int MLX5_OBJ_TYPE_TIR ;
 int MLX5_OBJ_TYPE_TIS ;
 int MLX5_OBJ_TYPE_XRC_SRQ ;
 int MLX5_OBJ_TYPE_XRQ ;
 int get_legacy_obj_type (int) ;
 scalar_t__ is_legacy_obj_event_num (int) ;

__attribute__((used)) static u16 get_dec_obj_type(struct devx_obj *obj, u16 event_num)
{
 u16 opcode;

 opcode = (obj->obj_id >> 32) & 0xffff;

 if (is_legacy_obj_event_num(event_num))
  return get_legacy_obj_type(opcode);

 switch (opcode) {
 case 139:
  return (obj->obj_id >> 48);
 case 135:
  return MLX5_OBJ_TYPE_RQ;
 case 137:
  return MLX5_OBJ_TYPE_QP;
 case 133:
  return MLX5_OBJ_TYPE_SQ;
 case 140:
  return MLX5_OBJ_TYPE_DCT;
 case 132:
  return MLX5_OBJ_TYPE_TIR;
 case 131:
  return MLX5_OBJ_TYPE_TIS;
 case 138:
  return MLX5_OBJ_TYPE_PSV;
 case 128:
  return 128;
 case 136:
  return MLX5_OBJ_TYPE_RMP;
 case 130:
  return MLX5_OBJ_TYPE_XRC_SRQ;
 case 129:
  return MLX5_OBJ_TYPE_XRQ;
 case 134:
  return MLX5_OBJ_TYPE_RQT;
 case 142:
  return MLX5_OBJ_TYPE_FLOW_COUNTER;
 case 141:
  return MLX5_OBJ_TYPE_CQ;
 default:
  return 0;
 }
}
