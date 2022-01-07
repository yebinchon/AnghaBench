
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sysmmu_drvdata {int version; int sysmmu; scalar_t__ sfrbase; } ;


 int MAKE_MMU_VER (int,int ) ;
 int MMU_MAJ_VER (int ) ;
 int MMU_MIN_VER (int ) ;
 int MMU_RAW_VER (int) ;
 scalar_t__ REG_MMU_VERSION ;
 int __sysmmu_disable_clocks (struct sysmmu_drvdata*) ;
 int __sysmmu_enable_clocks (struct sysmmu_drvdata*) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void __sysmmu_get_version(struct sysmmu_drvdata *data)
{
 u32 ver;

 __sysmmu_enable_clocks(data);

 ver = readl(data->sfrbase + REG_MMU_VERSION);


 if (ver == 0x80000001u)
  data->version = MAKE_MMU_VER(1, 0);
 else
  data->version = MMU_RAW_VER(ver);

 dev_dbg(data->sysmmu, "hardware version: %d.%d\n",
  MMU_MAJ_VER(data->version), MMU_MIN_VER(data->version));

 __sysmmu_disable_clocks(data);
}
