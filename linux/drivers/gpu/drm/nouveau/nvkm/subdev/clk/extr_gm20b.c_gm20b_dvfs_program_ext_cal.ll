; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_dvfs_program_ext_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_dvfs_program_ext_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm20b_clk = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@GPC_BCAST_GPCPLL_DVFS2 = common dso_local global i32 0, align 4
@DFS_DET_RANGE = common dso_local global i64 0, align 8
@GPCPLL_DVFS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gm20b_clk*, i32)* @gm20b_dvfs_program_ext_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm20b_dvfs_program_ext_cal(%struct.gm20b_clk* %0, i32 %1) #0 {
  %3 = alloca %struct.gm20b_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.gm20b_clk* %0, %struct.gm20b_clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %8 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %5, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %14 = load i32, i32* @GPC_BCAST_GPCPLL_DVFS2, align 4
  %15 = load i64, i64* @DFS_DET_RANGE, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @MASK(i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @nvkm_mask(%struct.nvkm_device* %13, i32 %14, i32 %17, i32 %18)
  %20 = call i32 @udelay(i32 1)
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = load i32, i32* @GPCPLL_DVFS1, align 4
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @BIT(i32 25)
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %2
  %29 = call i32 @BIT(i32 25)
  %30 = call i32 @BIT(i32 16)
  %31 = or i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %35 = load i32, i32* @GPCPLL_DVFS1, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @MASK(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
