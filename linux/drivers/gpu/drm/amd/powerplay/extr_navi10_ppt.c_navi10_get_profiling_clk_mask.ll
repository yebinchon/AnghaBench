; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_get_profiling_clk_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_get_profiling_clk_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@SMU_SCLK = common dso_local global i32 0, align 4
@SMU_MCLK = common dso_local global i32 0, align 4
@SMU_SOCCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i64*, i64*, i64*)* @navi10_get_profiling_clk_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_get_profiling_clk_mask(%struct.smu_context* %0, i32 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.smu_context* %0, %struct.smu_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i64*, i64** %9, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64*, i64** %9, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %20, %17
  br label %85

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64*, i64** %10, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64*, i64** %10, align 8
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  br label %84

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %33
  %38 = load i64*, i64** %9, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %42 = load i32, i32* @SMU_SCLK, align 4
  %43 = call i32 @smu_get_dpm_level_count(%struct.smu_context* %41, i32 %42, i64* %13)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %87

48:                                               ; preds = %40
  %49 = load i64, i64* %13, align 8
  %50 = sub nsw i64 %49, 1
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %37
  %53 = load i64*, i64** %10, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %57 = load i32, i32* @SMU_MCLK, align 4
  %58 = call i32 @smu_get_dpm_level_count(%struct.smu_context* %56, i32 %57, i64* %13)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %87

63:                                               ; preds = %55
  %64 = load i64, i64* %13, align 8
  %65 = sub nsw i64 %64, 1
  %66 = load i64*, i64** %10, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %52
  %68 = load i64*, i64** %11, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %72 = load i32, i32* @SMU_SOCCLK, align 4
  %73 = call i32 @smu_get_dpm_level_count(%struct.smu_context* %71, i32 %72, i64* %13)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %87

78:                                               ; preds = %70
  %79 = load i64, i64* %13, align 8
  %80 = sub nsw i64 %79, 1
  %81 = load i64*, i64** %11, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %67
  br label %83

83:                                               ; preds = %82, %33
  br label %84

84:                                               ; preds = %83, %32
  br label %85

85:                                               ; preds = %84, %22
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %76, %61, %46
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @smu_get_dpm_level_count(%struct.smu_context*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
