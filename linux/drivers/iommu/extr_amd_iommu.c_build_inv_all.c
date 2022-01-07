
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_cmd {int dummy; } ;


 int CMD_INV_ALL ;
 int CMD_SET_TYPE (struct iommu_cmd*,int ) ;
 int memset (struct iommu_cmd*,int ,int) ;

__attribute__((used)) static void build_inv_all(struct iommu_cmd *cmd)
{
 memset(cmd, 0, sizeof(*cmd));
 CMD_SET_TYPE(cmd, CMD_INV_ALL);
}
