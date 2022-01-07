
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct opa_smp {int status; } ;
struct opa_node_description {int data; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int node_desc; } ;


 int IB_SMP_INVALID_FIELD ;
 int memcpy (int ,int ,int) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (int,int) ;

__attribute__((used)) static int __subn_get_opa_nodedesc(struct opa_smp *smp, u32 am,
       u8 *data, struct ib_device *ibdev,
       u8 port, u32 *resp_len, u32 max_len)
{
 struct opa_node_description *nd;

 if (am || smp_length_check(sizeof(*nd), max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 nd = (struct opa_node_description *)data;

 memcpy(nd->data, ibdev->node_desc, sizeof(nd->data));

 if (resp_len)
  *resp_len += sizeof(*nd);

 return reply((struct ib_mad_hdr *)smp);
}
