
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
__attribute__((used)) static const char *ib_qp_type_str(enum ib_qp_type type)
{
 switch (type) {
 case 133:
  return "IB_QPT_SMI";
 case 139:
  return "IB_QPT_GSI";
 case 134:
  return "IB_QPT_RC";
 case 132:
  return "IB_QPT_UC";
 case 131:
  return "IB_QPT_UD";
 case 136:
  return "IB_QPT_RAW_IPV6";
 case 137:
  return "IB_QPT_RAW_ETHERTYPE";
 case 130:
  return "IB_QPT_XRC_INI";
 case 129:
  return "IB_QPT_XRC_TGT";
 case 135:
  return "IB_QPT_RAW_PACKET";
 case 128:
  return "MLX5_IB_QPT_REG_UMR";
 case 140:
  return "IB_QPT_DRIVER";
 case 138:
 default:
  return "Invalid QP type";
 }
}
