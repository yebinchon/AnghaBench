
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int attr_mod; } ;
struct opa_vnic_vema_mad {TYPE_1__ mad_hdr; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u8 vema_get_vport_num(struct opa_vnic_vema_mad *recvd_mad)
{
 return be32_to_cpu(recvd_mad->mad_hdr.attr_mod) & 0xff;
}
