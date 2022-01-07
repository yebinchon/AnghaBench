; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_to_dc_clock_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_to_dc_clock_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_pp_clocks = type { i64, i32* }
%struct.dm_pp_clock_levels = type { i64, i32* }

@DM_PP_MAX_CLOCK_LEVELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"DM_PPLIB: Warning: %s clock: number of levels %d exceeds maximum of %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DM_PPLIB: values for %s clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DM_PPLIB:\09 %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_pp_clocks*, %struct.dm_pp_clock_levels*, i32)* @pp_to_dc_clock_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_to_dc_clock_levels(%struct.amd_pp_clocks* %0, %struct.dm_pp_clock_levels* %1, i32 %2) #0 {
  %4 = alloca %struct.amd_pp_clocks*, align 8
  %5 = alloca %struct.dm_pp_clock_levels*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.amd_pp_clocks* %0, %struct.amd_pp_clocks** %4, align 8
  store %struct.dm_pp_clock_levels* %1, %struct.dm_pp_clock_levels** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %4, align 8
  %9 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DM_PP_MAX_CLOCK_LEVELS, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DC_DECODE_PP_CLOCK_TYPE(i32 %14)
  %16 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %4, align 8
  %17 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DM_PP_MAX_CLOCK_LEVELS, align 8
  %20 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18, i64 %19)
  %21 = load i64, i64* @DM_PP_MAX_CLOCK_LEVELS, align 8
  %22 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %5, align 8
  %23 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %4, align 8
  %26 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %5, align 8
  %29 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %13
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @DC_DECODE_PP_CLOCK_TYPE(i32 %31)
  %33 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %59, %30
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %5, align 8
  %37 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %4, align 8
  %42 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %4, align 8
  %49 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %5, align 8
  %55 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %40
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %34

62:                                               ; preds = %34
  ret void
}

declare dso_local i32 @DRM_INFO(i8*, i32, ...) #1

declare dso_local i32 @DC_DECODE_PP_CLOCK_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
