
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct slimpro_i2c_dev {int mbox_idx; struct acpi_pcct_shared_memory* pcc_comm_addr; } ;
struct acpi_pcct_shared_memory {int signature; int command; int status; } ;


 int PCC_CMD_GENERATE_DB_INT ;
 int PCC_SIGNATURE ;
 int PCC_STS_CMD_COMPLETE ;
 int READ_ONCE (int) ;
 int SLIMPRO_IIC_MSG_DWORD_COUNT ;
 int SLIMPRO_MSG_TYPE (int) ;
 int WRITE_ONCE (int,int ) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void slimpro_i2c_pcc_tx_prepare(struct slimpro_i2c_dev *ctx, u32 *msg)
{
 struct acpi_pcct_shared_memory *generic_comm_base = ctx->pcc_comm_addr;
 u32 *ptr = (void *)(generic_comm_base + 1);
 u16 status;
 int i;

 WRITE_ONCE(generic_comm_base->signature,
     cpu_to_le32(PCC_SIGNATURE | ctx->mbox_idx));

 WRITE_ONCE(generic_comm_base->command,
     cpu_to_le16(SLIMPRO_MSG_TYPE(msg[0]) | PCC_CMD_GENERATE_DB_INT));

 status = le16_to_cpu(READ_ONCE(generic_comm_base->status));
 status &= ~PCC_STS_CMD_COMPLETE;
 WRITE_ONCE(generic_comm_base->status, cpu_to_le16(status));


 for (i = 0; i < SLIMPRO_IIC_MSG_DWORD_COUNT; i++)
  WRITE_ONCE(ptr[i], cpu_to_le32(msg[i]));
}
