; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_get_clock_by_type_with_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_get_clock_by_type_with_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }
%struct.pp_clock_levels_with_latency = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_NUM_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, %struct.pp_clock_levels_with_latency*)* @navi10_get_clock_by_type_with_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_get_clock_by_type_with_latency(%struct.smu_context* %0, i32 %1, %struct.pp_clock_levels_with_latency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pp_clock_levels_with_latency* %2, %struct.pp_clock_levels_with_latency** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %62 [
    i32 129, label %13
    i32 130, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @smu_get_dpm_level_count(%struct.smu_context* %14, i32 %15, i32* %10)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %13
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @MAX_NUM_CLOCKS, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %27 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %58, %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @smu_get_dpm_freq_by_index(%struct.smu_context* %33, i32 %34, i32 %35, i32* %11)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %42, 1000
  %44 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %45 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  %51 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %52 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %28

61:                                               ; preds = %28
  br label %63

62:                                               ; preds = %3
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %39, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @smu_get_dpm_level_count(%struct.smu_context*, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smu_get_dpm_freq_by_index(%struct.smu_context*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
