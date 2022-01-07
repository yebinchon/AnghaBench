; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_threshold_hyst_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_threshold_hyst_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_therm*)* }
%struct.nvbios_therm_threshold = type { i32, i32 }

@NVKM_THERM_THRS_LOWER = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_RISING = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_HIGHER = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_therm*, %struct.nvbios_therm_threshold*, i32)* @nvkm_therm_threshold_hyst_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_therm_threshold_hyst_polling(%struct.nvkm_therm* %0, %struct.nvbios_therm_threshold* %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_therm*, align 8
  %5 = alloca %struct.nvbios_therm_threshold*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %4, align 8
  store %struct.nvbios_therm_threshold* %1, %struct.nvbios_therm_threshold** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %14, align 8
  %16 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %17 = call i32 %15(%struct.nvkm_therm* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @nvkm_therm_sensor_get_threshold_state(%struct.nvkm_therm* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %5, align 8
  %23 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @NVKM_THERM_THRS_RISING, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @NVKM_THERM_THRS_HIGHER, align 4
  store i32 %32, i32* %9, align 4
  br label %52

33:                                               ; preds = %26, %3
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %5, align 8
  %36 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %5, align 8
  %39 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  %42 = icmp sle i32 %34, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @NVKM_THERM_THRS_HIGHER, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @NVKM_THERM_THRS_FALLING, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @NVKM_THERM_THRS_LOWER, align 4
  store i32 %49, i32* %9, align 4
  br label %51

50:                                               ; preds = %43, %33
  br label %61

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm* %53, i32 %54, i32 %55)
  %57 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @nvkm_therm_sensor_event(%struct.nvkm_therm* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %50
  ret void
}

declare dso_local i32 @nvkm_therm_sensor_get_threshold_state(%struct.nvkm_therm*, i32) #1

declare dso_local i32 @nvkm_therm_sensor_set_threshold_state(%struct.nvkm_therm*, i32, i32) #1

declare dso_local i32 @nvkm_therm_sensor_event(%struct.nvkm_therm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
