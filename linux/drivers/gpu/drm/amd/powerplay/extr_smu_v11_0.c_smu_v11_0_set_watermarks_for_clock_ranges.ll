; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_watermarks_for_clock_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_watermarks_for_clock_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smu_table* }
%struct.smu_table = type { i8* }
%struct.dm_pp_wm_sets_with_clock_ranges_soc15 = type { i32 }

@SMU_TABLE_WATERMARKS = common dso_local global i64 0, align 8
@SMU_FEATURE_DPM_DCEFCLK_BIT = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4
@WATERMARKS_EXIST = common dso_local global i32 0, align 4
@WATERMARKS_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*)* @smu_v11_0_set_watermarks_for_clock_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_set_watermarks_for_clock_ranges(%struct.smu_context* %0, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %1) #0 {
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_table*, align 8
  %7 = alloca i8*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %1, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.smu_table*, %struct.smu_table** %10, align 8
  %12 = load i64, i64* @SMU_TABLE_WATERMARKS, align 8
  %13 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %11, i64 %12
  store %struct.smu_table* %13, %struct.smu_table** %6, align 8
  %14 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %15 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %18 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %2
  %22 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %23 = load i32, i32* @SMU_FEATURE_DPM_DCEFCLK_BIT, align 4
  %24 = call i64 @smu_feature_is_enabled(%struct.smu_context* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %28 = load i32, i32* @SMU_FEATURE_DPM_SOCCLK_BIT, align 4
  %29 = call i64 @smu_feature_is_enabled(%struct.smu_context* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %4, align 8
  %35 = call i32 @smu_set_watermarks_table(%struct.smu_context* %32, i8* %33, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %34)
  %36 = load i32, i32* @WATERMARKS_EXIST, align 4
  %37 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %38 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* @WATERMARKS_LOADED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %44 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %31, %26, %21, %2
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_set_watermarks_table(%struct.smu_context*, i8*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
