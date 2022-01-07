; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_g84.c_g84_therm_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_g84.c_g84_therm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_therm = type { i32 }

@g84_therm = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_SHUTDOWN = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_LOWER = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_FANBOOST = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_CRITICAL = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_DOWNCLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g84_therm_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_therm** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_therm**, align 8
  %8 = alloca %struct.nvkm_therm*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_therm** %2, %struct.nvkm_therm*** %7, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @nvkm_therm_new_(i32* @g84_therm, %struct.nvkm_device* %10, i32 %11, %struct.nvkm_therm** %8)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %14 = load %struct.nvkm_therm**, %struct.nvkm_therm*** %7, align 8
  store %struct.nvkm_therm* %13, %struct.nvkm_therm** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %21 = load i32, i32* @NVKM_THERM_THRS_SHUTDOWN, align 4
  %22 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  %23 = call i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm* %20, i32 %21, i32 %22)
  %24 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %25 = load i32, i32* @NVKM_THERM_THRS_FANBOOST, align 4
  %26 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  %27 = call i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm* %24, i32 %25, i32 %26)
  %28 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %29 = load i32, i32* @NVKM_THERM_THRS_CRITICAL, align 4
  %30 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  %31 = call i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm* %28, i32 %29, i32 %30)
  %32 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %33 = load i32, i32* @NVKM_THERM_THRS_DOWNCLOCK, align 4
  %34 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  %35 = call i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm* %32, i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @nvkm_therm_new_(i32*, %struct.nvkm_device*, i32, %struct.nvkm_therm**) #1

declare dso_local i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
