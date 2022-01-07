; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_current_clk_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_current_clk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_CLK_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMU_MSG_GetDpmClockFreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32*)* @smu_v11_0_get_current_clk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_get_current_clk_freq(%struct.smu_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SMU_CLK_COUNT, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %14
  %21 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @smu_clk_get_index(%struct.smu_context* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %20
  %30 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %31 = load i32, i32* @SMU_MSG_GetDpmClockFreq, align 4
  %32 = call i64 @smu_msg_get_index(%struct.smu_context* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @smu_get_current_clk_freq_by_table(%struct.smu_context* %35, i32 %36, i32* %9)
  store i32 %37, i32* %8, align 4
  br label %56

38:                                               ; preds = %29
  %39 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %40 = load i32, i32* @SMU_MSG_GetDpmClockFreq, align 4
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 %41, 16
  %43 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %39, i32 %40, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %38
  %49 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %50 = call i32 @smu_read_smc_arg(%struct.smu_context* %49, i32* %9)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %62

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, 100
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %53, %46, %26, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @smu_clk_get_index(%struct.smu_context*, i32) #1

declare dso_local i64 @smu_msg_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_get_current_clk_freq_by_table(%struct.smu_context*, i32, i32*) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @smu_read_smc_arg(%struct.smu_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
