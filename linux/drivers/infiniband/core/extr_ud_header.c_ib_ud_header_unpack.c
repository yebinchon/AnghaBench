
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_version; int link_next_header; int ip_version; int next_header; int opcode; scalar_t__ transport_header_version; } ;
struct ib_ud_header {int grh_present; int immediate_present; int immediate_data; TYPE_1__ deth; TYPE_1__ bth; TYPE_1__ lrh; TYPE_1__ grh; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int IB_BTH_BYTES ;
 int IB_DETH_BYTES ;
 int IB_GRH_BYTES ;


 int IB_LRH_BYTES ;


 int bth_table ;
 int deth_table ;
 int grh_table ;
 int ib_unpack (int ,int ,void*,TYPE_1__*) ;
 int lrh_table ;
 int memcpy (int *,void*,int) ;
 int pr_warn (char*,int) ;

int ib_ud_header_unpack(void *buf,
   struct ib_ud_header *header)
{
 ib_unpack(lrh_table, ARRAY_SIZE(lrh_table),
    buf, &header->lrh);
 buf += IB_LRH_BYTES;

 if (header->lrh.link_version != 0) {
  pr_warn("Invalid LRH.link_version %d\n",
   header->lrh.link_version);
  return -EINVAL;
 }

 switch (header->lrh.link_next_header) {
 case 130:
  header->grh_present = 0;
  break;

 case 131:
  header->grh_present = 1;
  ib_unpack(grh_table, ARRAY_SIZE(grh_table),
     buf, &header->grh);
  buf += IB_GRH_BYTES;

  if (header->grh.ip_version != 6) {
   pr_warn("Invalid GRH.ip_version %d\n",
    header->grh.ip_version);
   return -EINVAL;
  }
  if (header->grh.next_header != 0x1b) {
   pr_warn("Invalid GRH.next_header 0x%02x\n",
    header->grh.next_header);
   return -EINVAL;
  }
  break;

 default:
  pr_warn("Invalid LRH.link_next_header %d\n",
   header->lrh.link_next_header);
  return -EINVAL;
 }

 ib_unpack(bth_table, ARRAY_SIZE(bth_table),
    buf, &header->bth);
 buf += IB_BTH_BYTES;

 switch (header->bth.opcode) {
 case 129:
  header->immediate_present = 0;
  break;
 case 128:
  header->immediate_present = 1;
  break;
 default:
  pr_warn("Invalid BTH.opcode 0x%02x\n", header->bth.opcode);
  return -EINVAL;
 }

 if (header->bth.transport_header_version != 0) {
  pr_warn("Invalid BTH.transport_header_version %d\n",
   header->bth.transport_header_version);
  return -EINVAL;
 }

 ib_unpack(deth_table, ARRAY_SIZE(deth_table),
    buf, &header->deth);
 buf += IB_DETH_BYTES;

 if (header->immediate_present)
  memcpy(&header->immediate_data, buf, sizeof header->immediate_data);

 return 0;
}
