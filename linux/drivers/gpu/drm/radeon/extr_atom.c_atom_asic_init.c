
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_device {scalar_t__ family; } ;
struct atom_context {scalar_t__ cmd_table; scalar_t__ data_table; TYPE_2__* card; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct radeon_device* dev_private; } ;


 int ATOM_CMD_INIT ;
 int ATOM_CMD_SPDFANCNTL ;
 scalar_t__ ATOM_DATA_FWI_PTR ;
 scalar_t__ ATOM_FWI_DEFMCLK_PTR ;
 scalar_t__ ATOM_FWI_DEFSCLK_PTR ;
 scalar_t__ CHIP_R600 ;
 int CU16 (scalar_t__) ;
 int CU32 (scalar_t__) ;
 int atom_execute_table (struct atom_context*,int,int *) ;
 int cpu_to_le32 (int ) ;
 int memset (int *,int ,int) ;

int atom_asic_init(struct atom_context *ctx)
{
 struct radeon_device *rdev = ctx->card->dev->dev_private;
 int hwi = CU16(ctx->data_table + ATOM_DATA_FWI_PTR);
 uint32_t ps[16];
 int ret;

 memset(ps, 0, 64);

 ps[0] = cpu_to_le32(CU32(hwi + ATOM_FWI_DEFSCLK_PTR));
 ps[1] = cpu_to_le32(CU32(hwi + ATOM_FWI_DEFMCLK_PTR));
 if (!ps[0] || !ps[1])
  return 1;

 if (!CU16(ctx->cmd_table + 4 + 2 * ATOM_CMD_INIT))
  return 1;
 ret = atom_execute_table(ctx, ATOM_CMD_INIT, ps);
 if (ret)
  return ret;

 memset(ps, 0, 64);

 if (rdev->family < CHIP_R600) {
  if (CU16(ctx->cmd_table + 4 + 2 * ATOM_CMD_SPDFANCNTL))
   atom_execute_table(ctx, ATOM_CMD_SPDFANCNTL, ps);
 }
 return ret;
}
