; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_base.c_nvkm_pmu_fan_controlled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_base.c_nvkm_pmu_fan_controlled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32, %struct.nvkm_pmu* }
%struct.nvkm_pmu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_pmu_fan_controlled(%struct.nvkm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_pmu*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %3, align 8
  %5 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %5, i32 0, i32 1
  %7 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %6, align 8
  store %struct.nvkm_pmu* %7, %struct.nvkm_pmu** %4, align 8
  %8 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %4, align 8
  %9 = icmp ne %struct.nvkm_pmu* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %25

19:                                               ; preds = %10, %1
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 192
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
