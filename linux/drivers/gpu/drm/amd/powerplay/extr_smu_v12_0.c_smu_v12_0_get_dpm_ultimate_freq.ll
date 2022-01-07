; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_get_dpm_ultimate_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_get_dpm_ultimate_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_MSG_GetMaxGfxclkFrequency = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Attempt to get max GX frequency from SMC Failed !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMU_MSG_GetMinGfxclkFrequency = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Attempt to get min GX frequency from SMC Failed !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32*, i32*)* @smu_v12_0_get_dpm_ultimate_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v12_0_get_dpm_ultimate_freq(%struct.smu_context* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %41 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %33
  ]

17:                                               ; preds = %15, %15
  %18 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %19 = load i32, i32* @SMU_MSG_GetMaxGfxclkFrequency, align 4
  %20 = call i32 @smu_send_smc_msg(%struct.smu_context* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %79

25:                                               ; preds = %17
  %26 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @smu_read_smc_arg(%struct.smu_context* %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %79

32:                                               ; preds = %25
  br label %44

33:                                               ; preds = %15
  %34 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @smu_get_dpm_uclk_limited(%struct.smu_context* %34, i32* %35, i32 1)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %79

40:                                               ; preds = %33
  br label %44

41:                                               ; preds = %15
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %79

44:                                               ; preds = %40, %32
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %74 [
    i32 130, label %50
    i32 129, label %50
    i32 128, label %66
  ]

50:                                               ; preds = %48, %48
  %51 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %52 = load i32, i32* @SMU_MSG_GetMinGfxclkFrequency, align 4
  %53 = call i32 @smu_send_smc_msg(%struct.smu_context* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %79

58:                                               ; preds = %50
  %59 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @smu_read_smc_arg(%struct.smu_context* %59, i32* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %79

65:                                               ; preds = %58
  br label %77

66:                                               ; preds = %48
  %67 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @smu_get_dpm_uclk_limited(%struct.smu_context* %67, i32* %68, i32 0)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %79

73:                                               ; preds = %66
  br label %77

74:                                               ; preds = %48
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %79

77:                                               ; preds = %73, %65
  br label %78

78:                                               ; preds = %77, %45
  br label %79

79:                                               ; preds = %78, %74, %72, %64, %56, %41, %39, %31, %23
  %80 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %81 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_send_smc_msg(%struct.smu_context*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_read_smc_arg(%struct.smu_context*, i32*) #1

declare dso_local i32 @smu_get_dpm_uclk_limited(%struct.smu_context*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
