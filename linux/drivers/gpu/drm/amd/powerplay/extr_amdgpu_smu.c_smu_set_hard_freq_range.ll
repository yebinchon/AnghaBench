; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_set_hard_freq_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_set_hard_freq_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_MSG_SetHardMaxByFreq = common dso_local global i32 0, align 4
@SMU_MSG_SetHardMinByFreq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_set_hard_freq_range(%struct.smu_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %15, %4
  %22 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @smu_clk_dpm_is_enabled(%struct.smu_context* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %73

27:                                               ; preds = %21
  %28 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @smu_clk_get_index(%struct.smu_context* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %73

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %39, 16
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 65535
  %43 = or i32 %40, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %45 = load i32, i32* @SMU_MSG_SetHardMaxByFreq, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %44, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %73

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 65535
  %61 = or i32 %58, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %63 = load i32, i32* @SMU_MSG_SetHardMinByFreq, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %62, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %73

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %68, %50, %33, %26, %18
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @smu_clk_dpm_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_clk_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
