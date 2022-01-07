
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ocrdma_mbx_hdr {int subsys_op; int timeout; scalar_t__ cmd_len; } ;


 int OCRDMA_MCH_SUBSYS_SHIFT ;

__attribute__((used)) static void ocrdma_init_mch(struct ocrdma_mbx_hdr *cmd_hdr,
       u8 opcode, u8 subsys, u32 cmd_len)
{
 cmd_hdr->subsys_op = (opcode | (subsys << OCRDMA_MCH_SUBSYS_SHIFT));
 cmd_hdr->timeout = 20;
 cmd_hdr->cmd_len = cmd_len - sizeof(struct ocrdma_mbx_hdr);
}
