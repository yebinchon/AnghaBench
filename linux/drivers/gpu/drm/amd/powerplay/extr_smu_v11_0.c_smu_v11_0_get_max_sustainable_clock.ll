; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_max_sustainable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_max_sustainable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_MSG_GetDcModeMaxDpmFreq = common dso_local global i32 0, align 4
@SMU_MSG_GetMaxDpmFreq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"[GetMaxSustainableClock] Failed to get max DC clock from SMC!\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"[GetMaxSustainableClock] failed to get max AC clock from SMC!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i64*, i32)* @smu_v11_0_get_max_sustainable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_get_max_sustainable_clock(%struct.smu_context* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %76

16:                                               ; preds = %3
  %17 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %18 = load i32, i32* @SMU_MSG_GetDcModeMaxDpmFreq, align 4
  %19 = call i64 @smu_msg_get_index(%struct.smu_context* %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %23 = load i32, i32* @SMU_MSG_GetMaxDpmFreq, align 4
  %24 = call i64 @smu_msg_get_index(%struct.smu_context* %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16
  store i32 0, i32* %4, align 4
  br label %76

27:                                               ; preds = %21
  %28 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @smu_clk_get_index(%struct.smu_context* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %76

36:                                               ; preds = %27
  %37 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %38 = load i32, i32* @SMU_MSG_GetDcModeMaxDpmFreq, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 16
  %41 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %37, i32 %38, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %76

47:                                               ; preds = %36
  %48 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = call i32 @smu_read_smc_arg(%struct.smu_context* %48, i64* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %76

55:                                               ; preds = %47
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %76

60:                                               ; preds = %55
  %61 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %62 = load i32, i32* @SMU_MSG_GetMaxDpmFreq, align 4
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %63, 16
  %65 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %61, i32 %62, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %76

71:                                               ; preds = %60
  %72 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = call i32 @smu_read_smc_arg(%struct.smu_context* %72, i64* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %68, %59, %53, %44, %33, %26, %14
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @smu_msg_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_clk_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_read_smc_arg(%struct.smu_context*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
