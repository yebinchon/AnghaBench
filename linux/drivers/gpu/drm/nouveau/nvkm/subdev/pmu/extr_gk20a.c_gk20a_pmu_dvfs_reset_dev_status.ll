; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_dvfs_reset_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_dvfs_reset_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_pmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_falcon* }
%struct.nvkm_falcon = type { i32 }

@BUSY_SLOT = common dso_local global i32 0, align 4
@CLK_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk20a_pmu*)* @gk20a_pmu_dvfs_reset_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk20a_pmu_dvfs_reset_dev_status(%struct.gk20a_pmu* %0) #0 {
  %2 = alloca %struct.gk20a_pmu*, align 8
  %3 = alloca %struct.nvkm_falcon*, align 8
  store %struct.gk20a_pmu* %0, %struct.gk20a_pmu** %2, align 8
  %4 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %2, align 8
  %5 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  store %struct.nvkm_falcon* %7, %struct.nvkm_falcon** %3, align 8
  %8 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %9 = load i32, i32* @BUSY_SLOT, align 4
  %10 = mul nsw i32 %9, 16
  %11 = add nsw i32 1288, %10
  %12 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %8, i32 %11, i32 -2147483648)
  %13 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %14 = load i32, i32* @CLK_SLOT, align 4
  %15 = mul nsw i32 %14, 16
  %16 = add nsw i32 1288, %15
  %17 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %13, i32 %16, i32 -2147483648)
  ret void
}

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
