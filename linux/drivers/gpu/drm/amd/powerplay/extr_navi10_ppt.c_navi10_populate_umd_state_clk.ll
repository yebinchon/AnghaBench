; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_populate_umd_state_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_populate_umd_state_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i32 }

@SMU_SCLK = common dso_local global i32 0, align 4
@SMU_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @navi10_populate_umd_state_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_populate_umd_state_clk(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = load i32, i32* @SMU_SCLK, align 4
  %9 = call i32 @smu_get_dpm_freq_range(%struct.smu_context* %7, i32 %8, i32* %5, i32* null)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 100
  %17 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %18 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %20 = load i32, i32* @SMU_MCLK, align 4
  %21 = call i32 @smu_get_dpm_freq_range(%struct.smu_context* %19, i32 %20, i32* %6, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 100
  %29 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %30 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %24, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @smu_get_dpm_freq_range(%struct.smu_context*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
