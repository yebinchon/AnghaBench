; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_dvfs_program_dfs_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_dvfs_program_dfs_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm20b_clk = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gm20b_clk_dvfs = type { i32, i32, i32 }

@GPC_BCAST_GPCPLL_DVFS2 = common dso_local global i32 0, align 4
@GPC_BCAST_GPCPLL_DVFS2_DFS_EXT_STROBE_BIT = common dso_local global i32 0, align 4
@GPCPLL_DVFS0 = common dso_local global i32 0, align 4
@GPCPLL_DVFS0_DFS_COEFF_MASK = common dso_local global i32 0, align 4
@GPCPLL_DVFS0_DFS_DET_MAX_MASK = common dso_local global i32 0, align 4
@GPCPLL_DVFS0_DFS_COEFF_SHIFT = common dso_local global i32 0, align 4
@GPCPLL_DVFS0_DFS_DET_MAX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gm20b_clk*, %struct.gm20b_clk_dvfs*)* @gm20b_dvfs_program_dfs_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm20b_dvfs_program_dfs_detection(%struct.gm20b_clk* %0, %struct.gm20b_clk_dvfs* %1) #0 {
  %3 = alloca %struct.gm20b_clk*, align 8
  %4 = alloca %struct.gm20b_clk_dvfs*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  store %struct.gm20b_clk* %0, %struct.gm20b_clk** %3, align 8
  store %struct.gm20b_clk_dvfs* %1, %struct.gm20b_clk_dvfs** %4, align 8
  %6 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %7 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %5, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %13 = load i32, i32* @GPC_BCAST_GPCPLL_DVFS2, align 4
  %14 = load i32, i32* @GPC_BCAST_GPCPLL_DVFS2_DFS_EXT_STROBE_BIT, align 4
  %15 = load i32, i32* @GPC_BCAST_GPCPLL_DVFS2_DFS_EXT_STROBE_BIT, align 4
  %16 = call i32 @nvkm_mask(%struct.nvkm_device* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = load i32, i32* @GPCPLL_DVFS0, align 4
  %19 = load i32, i32* @GPCPLL_DVFS0_DFS_COEFF_MASK, align 4
  %20 = load i32, i32* @GPCPLL_DVFS0_DFS_DET_MAX_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.gm20b_clk_dvfs*, %struct.gm20b_clk_dvfs** %4, align 8
  %23 = getelementptr inbounds %struct.gm20b_clk_dvfs, %struct.gm20b_clk_dvfs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GPCPLL_DVFS0_DFS_COEFF_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.gm20b_clk_dvfs*, %struct.gm20b_clk_dvfs** %4, align 8
  %28 = getelementptr inbounds %struct.gm20b_clk_dvfs, %struct.gm20b_clk_dvfs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GPCPLL_DVFS0_DFS_DET_MAX_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  %33 = call i32 @nvkm_mask(%struct.nvkm_device* %17, i32 %18, i32 %21, i32 %32)
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %36 = load i32, i32* @GPC_BCAST_GPCPLL_DVFS2, align 4
  %37 = load i32, i32* @GPC_BCAST_GPCPLL_DVFS2_DFS_EXT_STROBE_BIT, align 4
  %38 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %40 = load %struct.gm20b_clk_dvfs*, %struct.gm20b_clk_dvfs** %4, align 8
  %41 = getelementptr inbounds %struct.gm20b_clk_dvfs, %struct.gm20b_clk_dvfs* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gm20b_dvfs_program_ext_cal(%struct.gm20b_clk* %39, i32 %42)
  ret void
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gm20b_dvfs_program_ext_cal(%struct.gm20b_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
