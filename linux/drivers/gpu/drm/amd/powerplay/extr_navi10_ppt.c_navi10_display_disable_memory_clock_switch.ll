; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_display_disable_memory_clock_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_display_disable_memory_clock_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.smu_11_0_max_sustainable_clocks = type { i32 }

@SMU_UCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @navi10_display_disable_memory_clock_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_display_disable_memory_clock_switch(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu_11_0_max_sustainable_clocks*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.smu_11_0_max_sustainable_clocks*
  store %struct.smu_11_0_max_sustainable_clocks* %14, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %15 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.smu_11_0_max_sustainable_clocks*, %struct.smu_11_0_max_sustainable_clocks** %7, align 8
  %19 = getelementptr inbounds %struct.smu_11_0_max_sustainable_clocks, %struct.smu_11_0_max_sustainable_clocks* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %22 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %32 = load i32, i32* @SMU_UCLK, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @smu_set_hard_freq_range(%struct.smu_context* %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %37 = load i32, i32* @SMU_UCLK, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @smu_set_hard_freq_range(%struct.smu_context* %36, i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %46 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %26
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @smu_set_hard_freq_range(%struct.smu_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
