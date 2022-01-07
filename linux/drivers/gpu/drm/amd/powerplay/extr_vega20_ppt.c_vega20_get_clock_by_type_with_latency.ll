; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_clock_by_type_with_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_clock_by_type_with_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.smu_dpm_context }
%struct.smu_dpm_context = type { %struct.vega20_dpm_table* }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i32 }
%struct.pp_clock_levels_with_latency = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, %struct.pp_clock_levels_with_latency*)* @vega20_get_clock_by_type_with_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_get_clock_by_type_with_latency(%struct.smu_context* %0, i32 %1, %struct.pp_clock_levels_with_latency* %2) #0 {
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vega20_single_dpm_table*, align 8
  %9 = alloca %struct.smu_dpm_context*, align 8
  %10 = alloca %struct.vega20_dpm_table*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pp_clock_levels_with_latency* %2, %struct.pp_clock_levels_with_latency** %6, align 8
  %11 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 1
  store %struct.smu_dpm_context* %12, %struct.smu_dpm_context** %9, align 8
  store %struct.vega20_dpm_table* null, %struct.vega20_dpm_table** %10, align 8
  %13 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %9, align 8
  %14 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %13, i32 0, i32 0
  %15 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %14, align 8
  store %struct.vega20_dpm_table* %15, %struct.vega20_dpm_table** %10, align 8
  %16 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %17 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %48 [
    i32 130, label %20
    i32 129, label %27
    i32 131, label %34
    i32 128, label %41
  ]

20:                                               ; preds = %3
  %21 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %10, align 8
  %22 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %21, i32 0, i32 3
  store %struct.vega20_single_dpm_table* %22, %struct.vega20_single_dpm_table** %8, align 8
  %23 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %24 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %6, align 8
  %25 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %8, align 8
  %26 = call i32 @vega20_get_clk_table(%struct.smu_context* %23, %struct.pp_clock_levels_with_latency* %24, %struct.vega20_single_dpm_table* %25)
  store i32 %26, i32* %7, align 4
  br label %51

27:                                               ; preds = %3
  %28 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %10, align 8
  %29 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %28, i32 0, i32 2
  store %struct.vega20_single_dpm_table* %29, %struct.vega20_single_dpm_table** %8, align 8
  %30 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %31 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %6, align 8
  %32 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %8, align 8
  %33 = call i32 @vega20_get_clk_table(%struct.smu_context* %30, %struct.pp_clock_levels_with_latency* %31, %struct.vega20_single_dpm_table* %32)
  store i32 %33, i32* %7, align 4
  br label %51

34:                                               ; preds = %3
  %35 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %10, align 8
  %36 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %35, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %36, %struct.vega20_single_dpm_table** %8, align 8
  %37 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %38 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %6, align 8
  %39 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %8, align 8
  %40 = call i32 @vega20_get_clk_table(%struct.smu_context* %37, %struct.pp_clock_levels_with_latency* %38, %struct.vega20_single_dpm_table* %39)
  store i32 %40, i32* %7, align 4
  br label %51

41:                                               ; preds = %3
  %42 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %10, align 8
  %43 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %42, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %43, %struct.vega20_single_dpm_table** %8, align 8
  %44 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %45 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %6, align 8
  %46 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %8, align 8
  %47 = call i32 @vega20_get_clk_table(%struct.smu_context* %44, %struct.pp_clock_levels_with_latency* %45, %struct.vega20_single_dpm_table* %46)
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %41, %34, %27, %20
  %52 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %53 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vega20_get_clk_table(%struct.smu_context*, %struct.pp_clock_levels_with_latency*, %struct.vega20_single_dpm_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
