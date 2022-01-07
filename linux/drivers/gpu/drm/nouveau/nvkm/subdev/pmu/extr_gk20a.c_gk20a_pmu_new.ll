; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk20a.c_gk20a_pmu_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_pmu = type { i32 }
%struct.gk20a_pmu = type { i32, i32*, %struct.nvkm_pmu }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gk20a_pmu = common dso_local global i32 0, align 4
@gk20a_dvfs_data = common dso_local global i32 0, align 4
@gk20a_pmu_dvfs_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_pmu_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_pmu** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_pmu**, align 8
  %8 = alloca %struct.gk20a_pmu*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_pmu** %2, %struct.nvkm_pmu*** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gk20a_pmu* @kzalloc(i32 24, i32 %9)
  store %struct.gk20a_pmu* %10, %struct.gk20a_pmu** %8, align 8
  %11 = icmp ne %struct.gk20a_pmu* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %30

15:                                               ; preds = %3
  %16 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %8, align 8
  %17 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %16, i32 0, i32 2
  %18 = load %struct.nvkm_pmu**, %struct.nvkm_pmu*** %7, align 8
  store %struct.nvkm_pmu* %17, %struct.nvkm_pmu** %18, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %8, align 8
  %22 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %21, i32 0, i32 2
  %23 = call i32 @nvkm_pmu_ctor(i32* @gk20a_pmu, %struct.nvkm_device* %19, i32 %20, %struct.nvkm_pmu* %22)
  %24 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %8, align 8
  %25 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %24, i32 0, i32 1
  store i32* @gk20a_dvfs_data, i32** %25, align 8
  %26 = load %struct.gk20a_pmu*, %struct.gk20a_pmu** %8, align 8
  %27 = getelementptr inbounds %struct.gk20a_pmu, %struct.gk20a_pmu* %26, i32 0, i32 0
  %28 = load i32, i32* @gk20a_pmu_dvfs_work, align 4
  %29 = call i32 @nvkm_alarm_init(i32* %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %15, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.gk20a_pmu* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_pmu_ctor(i32*, %struct.nvkm_device*, i32, %struct.nvkm_pmu*) #1

declare dso_local i32 @nvkm_alarm_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
