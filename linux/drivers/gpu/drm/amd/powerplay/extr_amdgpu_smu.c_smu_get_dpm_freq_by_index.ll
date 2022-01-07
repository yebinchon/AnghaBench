; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_dpm_freq_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_dpm_freq_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_MSG_GetDpmFreqByIndex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_get_dpm_freq_by_index(%struct.smu_context* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %59

18:                                               ; preds = %4
  %19 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @smu_clk_dpm_is_enabled(%struct.smu_context* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %59

24:                                               ; preds = %18
  %25 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @smu_clk_get_index(%struct.smu_context* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %59

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, 65535
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 65535
  %38 = or i32 %35, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %40 = load i32, i32* @SMU_MSG_GetDpmFreqByIndex, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %59

47:                                               ; preds = %32
  %48 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %49 = call i32 @smu_read_smc_arg(%struct.smu_context* %48, i32* %12)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 2147483647
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %52, %45, %30, %23, %15
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @smu_clk_dpm_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_clk_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @smu_read_smc_arg(%struct.smu_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
