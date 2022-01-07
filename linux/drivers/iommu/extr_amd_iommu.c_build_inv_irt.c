
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iommu_cmd {int * data; } ;


 int CMD_INV_IRT ;
 int CMD_SET_TYPE (struct iommu_cmd*,int ) ;
 int memset (struct iommu_cmd*,int ,int) ;

__attribute__((used)) static void build_inv_irt(struct iommu_cmd *cmd, u16 devid)
{
 memset(cmd, 0, sizeof(*cmd));
 cmd->data[0] = devid;
 CMD_SET_TYPE(cmd, CMD_INV_IRT);
}
