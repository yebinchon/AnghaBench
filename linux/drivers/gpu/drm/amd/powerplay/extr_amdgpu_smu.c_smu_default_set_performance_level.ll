; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_default_set_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_default_set_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_SCLK = common dso_local global i32 0, align 4
@SMU_MCLK = common dso_local global i32 0, align 4
@SMU_SOCCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @smu_default_set_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_default_set_performance_level(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %45 [
    i32 135, label %11
    i32 134, label %14
    i32 136, label %17
    i32 128, label %17
    i32 130, label %20
    i32 131, label %20
    i32 129, label %20
    i32 133, label %44
    i32 132, label %44
  ]

11:                                               ; preds = %2
  %12 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %13 = call i32 @smu_force_dpm_limit_value(%struct.smu_context* %12, i32 1)
  store i32 %13, i32* %6, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %16 = call i32 @smu_force_dpm_limit_value(%struct.smu_context* %15, i32 0)
  store i32 %16, i32* %6, align 4
  br label %46

17:                                               ; preds = %2, %2
  %18 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %19 = call i32 @smu_unforce_dpm_levels(%struct.smu_context* %18)
  store i32 %19, i32* %6, align 4
  br label %46

20:                                               ; preds = %2, %2, %2
  %21 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @smu_get_profiling_clk_mask(%struct.smu_context* %21, i32 %22, i32* %7, i32* %8, i32* %9)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %20
  %29 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %30 = load i32, i32* @SMU_SCLK, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = call i32 @smu_force_clk_levels(%struct.smu_context* %29, i32 %30, i32 %32)
  %34 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %35 = load i32, i32* @SMU_MCLK, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 1, %36
  %38 = call i32 @smu_force_clk_levels(%struct.smu_context* %34, i32 %35, i32 %37)
  %39 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %40 = load i32, i32* @SMU_SOCCLK, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 1, %41
  %43 = call i32 @smu_force_clk_levels(%struct.smu_context* %39, i32 %40, i32 %42)
  br label %46

44:                                               ; preds = %2, %2
  br label %45

45:                                               ; preds = %2, %44
  br label %46

46:                                               ; preds = %45, %28, %17, %14, %11
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @smu_force_dpm_limit_value(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_unforce_dpm_levels(%struct.smu_context*) #1

declare dso_local i32 @smu_get_profiling_clk_mask(%struct.smu_context*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @smu_force_clk_levels(%struct.smu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
