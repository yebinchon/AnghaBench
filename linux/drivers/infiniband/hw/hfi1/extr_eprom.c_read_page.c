
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;


 int ASIC_EEP_ADDR_CMD ;
 int ASIC_EEP_DATA ;
 int CMD_NOP ;
 int CMD_READ_DATA (scalar_t__) ;
 int EP_PAGE_DWORDS ;
 scalar_t__ read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static void read_page(struct hfi1_devdata *dd, u32 offset, u32 *result)
{
 int i;

 write_csr(dd, ASIC_EEP_ADDR_CMD, CMD_READ_DATA(offset));
 for (i = 0; i < EP_PAGE_DWORDS; i++)
  result[i] = (u32)read_csr(dd, ASIC_EEP_DATA);
 write_csr(dd, ASIC_EEP_ADDR_CMD, CMD_NOP);
}
