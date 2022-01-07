; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_feature_update_enable_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_feature_update_enable_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_MSG_EnableSmuFeaturesLow = common dso_local global i32 0, align 4
@SMU_MSG_EnableSmuFeaturesHigh = common dso_local global i32 0, align 4
@SMU_MSG_DisableSmuFeaturesLow = common dso_local global i32 0, align 4
@SMU_MSG_DisableSmuFeaturesHigh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_feature_update_enable_state(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 0
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %26 = load i32, i32* @SMU_MSG_EnableSmuFeaturesLow, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %24
  %34 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %35 = load i32, i32* @SMU_MSG_EnableSmuFeaturesHigh, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %33
  br label %62

43:                                               ; preds = %17
  %44 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %45 = load i32, i32* @SMU_MSG_DisableSmuFeaturesLow, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %44, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %64

52:                                               ; preds = %43
  %53 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %54 = load i32, i32* @SMU_MSG_DisableSmuFeaturesHigh, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %59, %50, %40, %31, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
