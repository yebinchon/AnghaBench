; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_dvfs_get_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_dvfs_get_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_pmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_falcon* }
%struct.nvkm_falcon = type { i32 }
%struct.gk20a_pmu_dvfs_dev_status = type { i8*, i8* }

@BUSY_SLOT = common dso_local global i32 0, align 4
@CLK_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk20a_pmu*, %struct.gk20a_pmu_dvfs_dev_status*)* @gk20a_pmu_dvfs_get_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk20a_pmu_dvfs_get_dev_status(%struct.gk20a_pmu* %0, %struct.gk20a_pmu_dvfs_dev_status* %1) #0 {
  %3 = alloca %struct.gk20a_pmu*, align 8
  %4 = alloca %struct.gk20a_pmu_dvfs_dev_status*, align 8
  %5 = alloca %struct.nvkm_falcon*, align 8
  store %struct.gk20a_pmu* %0, %struct.gk20a_pmu** %3, align 8
  store %struct.gk20a_pmu_dvfs_dev_status* %1, %struct.gk20a_pmu_dvfs_dev_status** %4, align 8
  %6 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  store %struct.nvkm_falcon* %9, %struct.nvkm_falcon** %5, align 8
  %10 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %11 = load i32, i32* @BUSY_SLOT, align 4
  %12 = mul nsw i32 %11, 16
  %13 = add nsw i32 1288, %12
  %14 = call i8* @nvkm_falcon_rd32(%struct.nvkm_falcon* %10, i32 %13)
  %15 = load %struct.gk20a_pmu_dvfs_dev_status*, %struct.gk20a_pmu_dvfs_dev_status** %4, align 8
  %16 = getelementptr inbounds %struct.gk20a_pmu_dvfs_dev_status, %struct.gk20a_pmu_dvfs_dev_status* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %18 = load i32, i32* @CLK_SLOT, align 4
  %19 = mul nsw i32 %18, 16
  %20 = add nsw i32 1288, %19
  %21 = call i8* @nvkm_falcon_rd32(%struct.nvkm_falcon* %17, i32 %20)
  %22 = load %struct.gk20a_pmu_dvfs_dev_status*, %struct.gk20a_pmu_dvfs_dev_status** %4, align 8
  %23 = getelementptr inbounds %struct.gk20a_pmu_dvfs_dev_status, %struct.gk20a_pmu_dvfs_dev_status* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  ret void
}

declare dso_local i8* @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
