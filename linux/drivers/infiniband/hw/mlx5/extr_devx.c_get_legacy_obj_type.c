
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;






 int MLX5_EVENT_QUEUE_TYPE_DCT ;
 int MLX5_EVENT_QUEUE_TYPE_QP ;
 int MLX5_EVENT_QUEUE_TYPE_RQ ;
 int MLX5_EVENT_QUEUE_TYPE_SQ ;

__attribute__((used)) static u16 get_legacy_obj_type(u16 opcode)
{
 switch (opcode) {
 case 129:
  return MLX5_EVENT_QUEUE_TYPE_RQ;
 case 130:
  return MLX5_EVENT_QUEUE_TYPE_QP;
 case 128:
  return MLX5_EVENT_QUEUE_TYPE_SQ;
 case 131:
  return MLX5_EVENT_QUEUE_TYPE_DCT;
 default:
  return 0;
 }
}
