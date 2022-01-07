; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_base.c_nvkm_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_base.c_nvkm_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_pmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_pmu*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_pmu_init(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_pmu*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %5 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %6 = call %struct.nvkm_pmu* @nvkm_pmu(%struct.nvkm_subdev* %5)
  store %struct.nvkm_pmu* %6, %struct.nvkm_pmu** %3, align 8
  %7 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %8 = call i32 @nvkm_pmu_reset(%struct.nvkm_pmu* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.nvkm_pmu*)*, i32 (%struct.nvkm_pmu*)** %15, align 8
  %17 = icmp ne i32 (%struct.nvkm_pmu*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.nvkm_pmu*)*, i32 (%struct.nvkm_pmu*)** %22, align 8
  %24 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %25 = call i32 %23(%struct.nvkm_pmu* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %18, %11, %1
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.nvkm_pmu* @nvkm_pmu(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_pmu_reset(%struct.nvkm_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
