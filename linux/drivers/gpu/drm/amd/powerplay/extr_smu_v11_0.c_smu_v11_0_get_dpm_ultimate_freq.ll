; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_dpm_ultimate_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_dpm_ultimate_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_MSG_GetMaxDpmFreq = common dso_local global i32 0, align 4
@SMU_MSG_GetMinDpmFreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32*, i32*)* @smu_v11_0_get_dpm_ultimate_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_get_dpm_ultimate_freq(%struct.smu_context* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @smu_clk_get_index(%struct.smu_context* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 65535
  %26 = shl i32 %25, 16
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %31 = load i32, i32* @SMU_MSG_GetMaxDpmFreq, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %65

37:                                               ; preds = %29
  %38 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @smu_read_smc_arg(%struct.smu_context* %38, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %65

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %50 = load i32, i32* @SMU_MSG_GetMinDpmFreq, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %65

56:                                               ; preds = %48
  %57 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @smu_read_smc_arg(%struct.smu_context* %57, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %65

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %62, %55, %43, %36, %20
  %66 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %67 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_clk_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @smu_read_smc_arg(%struct.smu_context*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
