; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_set_peak_clock_by_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_set_peak_clock_by_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NAVI10_PEAK_SCLK_XTX = common dso_local global i64 0, align 8
@NAVI10_PEAK_SCLK_XT = common dso_local global i64 0, align 8
@NAVI10_PEAK_SCLK_XL = common dso_local global i64 0, align 8
@SMU_UCLK = common dso_local global i32 0, align 4
@SMU_SCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @navi10_set_peak_clock_by_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_set_peak_clock_by_device(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %9 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %10 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %21 [
    i32 240, label %17
    i32 192, label %17
    i32 241, label %19
    i32 193, label %19
  ]

17:                                               ; preds = %1, %1
  %18 = load i64, i64* @NAVI10_PEAK_SCLK_XTX, align 8
  store i64 %18, i64* %6, align 8
  br label %23

19:                                               ; preds = %1, %1
  %20 = load i64, i64* @NAVI10_PEAK_SCLK_XT, align 8
  store i64 %20, i64* %6, align 8
  br label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @NAVI10_PEAK_SCLK_XL, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %21, %19, %17
  %24 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %25 = load i32, i32* @SMU_UCLK, align 4
  %26 = call i32 @smu_get_dpm_level_count(%struct.smu_context* %24, i32 %25, i64* %8)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %23
  %32 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %33 = load i32, i32* @SMU_UCLK, align 4
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @smu_get_dpm_freq_by_index(%struct.smu_context* %32, i32 %33, i64 %35, i64* %7)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %43 = load i32, i32* @SMU_SCLK, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @smu_set_soft_freq_range(%struct.smu_context* %42, i32 %43, i64 %44, i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %41
  %52 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %53 = load i32, i32* @SMU_UCLK, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @smu_set_soft_freq_range(%struct.smu_context* %52, i32 %53, i64 %54, i64 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %59, %49, %39, %29
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @smu_get_dpm_level_count(%struct.smu_context*, i32, i64*) #1

declare dso_local i32 @smu_get_dpm_freq_by_index(%struct.smu_context*, i32, i64, i64*) #1

declare dso_local i32 @smu_set_soft_freq_range(%struct.smu_context*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
