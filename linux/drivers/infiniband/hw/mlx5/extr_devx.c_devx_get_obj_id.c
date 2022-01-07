
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;





 int const MLX5_CMD_OP_ALLOC_FLOW_COUNTER ;
 int const MLX5_CMD_OP_ALLOC_MODIFY_HEADER_CONTEXT ;
 int const MLX5_CMD_OP_ALLOC_PACKET_REFORMAT_CONTEXT ;
 int const MLX5_CMD_OP_ALLOC_Q_COUNTER ;




 int const MLX5_CMD_OP_CREATE_CQ ;
 int const MLX5_CMD_OP_CREATE_DCT ;
 int const MLX5_CMD_OP_CREATE_FLOW_GROUP ;
 int const MLX5_CMD_OP_CREATE_FLOW_TABLE ;
 int MLX5_CMD_OP_CREATE_GENERAL_OBJECT ;
 int const MLX5_CMD_OP_CREATE_MKEY ;
 int const MLX5_CMD_OP_CREATE_QP ;
 int const MLX5_CMD_OP_CREATE_RMP ;
 int const MLX5_CMD_OP_CREATE_RQ ;
 int const MLX5_CMD_OP_CREATE_RQT ;
 int const MLX5_CMD_OP_CREATE_SCHEDULING_ELEMENT ;
 int const MLX5_CMD_OP_CREATE_SQ ;
 int const MLX5_CMD_OP_CREATE_SRQ ;
 int const MLX5_CMD_OP_CREATE_TIR ;
 int const MLX5_CMD_OP_CREATE_TIS ;
 int const MLX5_CMD_OP_CREATE_XRC_SRQ ;
 int const MLX5_CMD_OP_CREATE_XRQ ;
 int MLX5_GET (int ,void const*,int ) ;
 int add_vxlan_udp_dport_in ;
 int arm_rq_in ;
 int arm_xrc_srq_in ;
 int arm_xrq_in ;
 int counter_set_id ;
 int cqn ;
 int dctn ;
 int drain_dct_in ;
 int flow_counter_id ;
 int flow_index ;
 int general_obj_in_cmd_hdr ;
 int get_enc_obj_id (int const,int) ;
 int group_id ;
 int init2rtr_qp_in ;
 int mkey_index ;
 int modify_cq_in ;
 int modify_flow_table_in ;
 int modify_rmp_in ;
 int modify_rq_in ;
 int modify_rqt_in ;
 int modify_scheduling_element_in ;
 int modify_sq_in ;
 int modify_tir_in ;
 int modify_tis_in ;
 int obj_type ;
 int opcode ;
 int packet_reformat_id ;
 int qp_2err_in ;
 int qp_2rst_in ;
 int qpn ;
 int query_cq_in ;
 int query_dct_in ;
 int query_flow_counter_in ;
 int query_flow_group_in ;
 int query_flow_table_in ;
 int query_fte_in ;
 int query_l2_table_entry_in ;
 int query_mkey_in ;
 int query_packet_reformat_context_in ;
 int query_q_counter_in ;
 int query_qp_in ;
 int query_rmp_in ;
 int query_rq_in ;
 int query_rqt_in ;
 int query_scheduling_element_in ;
 int query_sq_in ;
 int query_srq_in ;
 int query_tir_in ;
 int query_tis_in ;
 int query_xrc_srq_in ;
 int query_xrq_in ;
 int rmpn ;
 int rqn ;
 int rqtn ;
 int rst2init_qp_in ;
 int rtr2rts_qp_in ;
 int rts2rts_qp_in ;
 int scheduling_element_id ;
 int set_fte_in ;
 int set_l2_table_entry_in ;
 int sqerr2rts_qp_in ;
 int sqn ;
 int srq_number ;
 int srqn ;
 int table_id ;
 int table_index ;
 int tirn ;
 int tisn ;
 int vxlan_udp_port ;
 int xrc_srqn ;
 int xrqn ;

__attribute__((used)) static u64 devx_get_obj_id(const void *in)
{
 u16 opcode = MLX5_GET(general_obj_in_cmd_hdr, in, opcode);
 u64 obj_id;

 switch (opcode) {
 case 169:
 case 154:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_GENERAL_OBJECT |
     MLX5_GET(general_obj_in_cmd_hdr, in,
       obj_type) << 16,
     MLX5_GET(general_obj_in_cmd_hdr, in,
       obj_id));
  break;
 case 152:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_MKEY,
     MLX5_GET(query_mkey_in, in,
       mkey_index));
  break;
 case 160:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_CQ,
     MLX5_GET(query_cq_in, in, cqn));
  break;
 case 171:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_CQ,
     MLX5_GET(modify_cq_in, in, cqn));
  break;
 case 143:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_SQ,
     MLX5_GET(query_sq_in, in, sqn));
  break;
 case 164:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_SQ,
     MLX5_GET(modify_sq_in, in, sqn));
  break;
 case 146:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_RQ,
     MLX5_GET(query_rq_in, in, rqn));
  break;
 case 167:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_RQ,
     MLX5_GET(modify_rq_in, in, rqn));
  break;
 case 147:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_RMP,
     MLX5_GET(query_rmp_in, in, rmpn));
  break;
 case 168:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_RMP,
     MLX5_GET(modify_rmp_in, in, rmpn));
  break;
 case 145:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_RQT,
     MLX5_GET(query_rqt_in, in, rqtn));
  break;
 case 166:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_RQT,
     MLX5_GET(modify_rqt_in, in, rqtn));
  break;
 case 141:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_TIR,
     MLX5_GET(query_tir_in, in, tirn));
  break;
 case 163:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_TIR,
     MLX5_GET(modify_tir_in, in, tirn));
  break;
 case 140:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_TIS,
     MLX5_GET(query_tis_in, in, tisn));
  break;
 case 162:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_TIS,
     MLX5_GET(modify_tis_in, in, tisn));
  break;
 case 156:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_FLOW_TABLE,
     MLX5_GET(query_flow_table_in, in,
       table_id));
  break;
 case 170:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_FLOW_TABLE,
     MLX5_GET(modify_flow_table_in, in,
       table_id));
  break;
 case 157:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_FLOW_GROUP,
     MLX5_GET(query_flow_group_in, in,
       group_id));
  break;
 case 155:
  obj_id = get_enc_obj_id(131,
     MLX5_GET(query_fte_in, in,
       flow_index));
  break;
 case 131:
  obj_id = get_enc_obj_id(131,
     MLX5_GET(set_fte_in, in, flow_index));
  break;
 case 148:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_ALLOC_Q_COUNTER,
     MLX5_GET(query_q_counter_in, in,
       counter_set_id));
  break;
 case 158:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_ALLOC_FLOW_COUNTER,
     MLX5_GET(query_flow_counter_in, in,
       flow_counter_id));
  break;
 case 151:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_ALLOC_MODIFY_HEADER_CONTEXT,
     MLX5_GET(general_obj_in_cmd_hdr, in,
       obj_id));
  break;
 case 144:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_SCHEDULING_ELEMENT,
     MLX5_GET(query_scheduling_element_in,
       in, scheduling_element_id));
  break;
 case 165:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_SCHEDULING_ELEMENT,
     MLX5_GET(modify_scheduling_element_in,
       in, scheduling_element_id));
  break;
 case 177:
  obj_id = get_enc_obj_id(177,
     MLX5_GET(add_vxlan_udp_dport_in, in,
       vxlan_udp_port));
  break;
 case 153:
  obj_id = get_enc_obj_id(130,
     MLX5_GET(query_l2_table_entry_in, in,
       table_index));
  break;
 case 130:
  obj_id = get_enc_obj_id(130,
     MLX5_GET(set_l2_table_entry_in, in,
       table_index));
  break;
 case 149:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_QP,
     MLX5_GET(query_qp_in, in, qpn));
  break;
 case 134:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_QP,
     MLX5_GET(rst2init_qp_in, in, qpn));
  break;
 case 172:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_QP,
     MLX5_GET(init2rtr_qp_in, in, qpn));
  break;
 case 133:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_QP,
     MLX5_GET(rtr2rts_qp_in, in, qpn));
  break;
 case 132:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_QP,
     MLX5_GET(rts2rts_qp_in, in, qpn));
  break;
 case 128:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_QP,
     MLX5_GET(sqerr2rts_qp_in, in, qpn));
  break;
 case 179:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_QP,
     MLX5_GET(qp_2err_in, in, qpn));
  break;
 case 178:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_QP,
     MLX5_GET(qp_2rst_in, in, qpn));
  break;
 case 159:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_DCT,
     MLX5_GET(query_dct_in, in, dctn));
  break;
 case 138:
 case 137:
 case 136:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_XRQ,
     MLX5_GET(query_xrq_in, in, xrqn));
  break;
 case 139:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_XRC_SRQ,
     MLX5_GET(query_xrc_srq_in, in,
       xrc_srqn));
  break;
 case 174:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_XRC_SRQ,
     MLX5_GET(arm_xrc_srq_in, in, xrc_srqn));
  break;
 case 142:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_SRQ,
     MLX5_GET(query_srq_in, in, srqn));
  break;
 case 175:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_RQ,
     MLX5_GET(arm_rq_in, in, srq_number));
  break;
 case 176:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_DCT,
     MLX5_GET(drain_dct_in, in, dctn));
  break;
 case 173:
 case 129:
 case 135:
 case 161:
  obj_id = get_enc_obj_id(MLX5_CMD_OP_CREATE_XRQ,
     MLX5_GET(arm_xrq_in, in, xrqn));
  break;
 case 150:
  obj_id = get_enc_obj_id
    (MLX5_CMD_OP_ALLOC_PACKET_REFORMAT_CONTEXT,
     MLX5_GET(query_packet_reformat_context_in,
       in, packet_reformat_id));
  break;
 default:
  obj_id = 0;
 }

 return obj_id;
}
