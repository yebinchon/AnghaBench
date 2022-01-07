
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int translate_eth_ext_proto_oper (int ,int *,int *) ;
 int translate_eth_legacy_proto_oper (int ,int *,int *) ;

__attribute__((used)) static int translate_eth_proto_oper(u32 eth_proto_oper, u8 *active_speed,
        u8 *active_width, bool ext)
{
 return ext ?
  translate_eth_ext_proto_oper(eth_proto_oper, active_speed,
          active_width) :
  translate_eth_legacy_proto_oper(eth_proto_oper, active_speed,
      active_width);
}
