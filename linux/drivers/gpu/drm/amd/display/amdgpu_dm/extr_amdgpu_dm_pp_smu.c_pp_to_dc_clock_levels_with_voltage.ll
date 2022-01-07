; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_to_dc_clock_levels_with_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_to_dc_clock_levels_with_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_clock_levels_with_voltage = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.dm_pp_clock_levels_with_voltage = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@DM_PP_MAX_CLOCK_LEVELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"DM_PPLIB: Warning: %s clock: number of levels %d exceeds maximum of %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DM_PPLIB: values for %s clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DM_PPLIB:\09 %d in kHz, %d in mV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage*, i32)* @pp_to_dc_clock_levels_with_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_to_dc_clock_levels_with_voltage(%struct.pp_clock_levels_with_voltage* %0, %struct.dm_pp_clock_levels_with_voltage* %1, i32 %2) #0 {
  %4 = alloca %struct.pp_clock_levels_with_voltage*, align 8
  %5 = alloca %struct.dm_pp_clock_levels_with_voltage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pp_clock_levels_with_voltage* %0, %struct.pp_clock_levels_with_voltage** %4, align 8
  store %struct.dm_pp_clock_levels_with_voltage* %1, %struct.dm_pp_clock_levels_with_voltage** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %4, align 8
  %9 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DM_PP_MAX_CLOCK_LEVELS, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DC_DECODE_PP_CLOCK_TYPE(i32 %14)
  %16 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %4, align 8
  %17 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DM_PP_MAX_CLOCK_LEVELS, align 8
  %20 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18, i64 %19)
  %21 = load i64, i64* @DM_PP_MAX_CLOCK_LEVELS, align 8
  %22 = load %struct.dm_pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage** %5, align 8
  %23 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %4, align 8
  %26 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dm_pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage** %5, align 8
  %29 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %13
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @DC_DECODE_PP_CLOCK_TYPE(i32 %31)
  %33 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %82, %30
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.dm_pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage** %5, align 8
  %37 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %34
  %41 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %4, align 8
  %42 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %4, align 8
  %49 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %54)
  %56 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %4, align 8
  %57 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dm_pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage** %5, align 8
  %64 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %62, i32* %68, align 8
  %69 = load %struct.pp_clock_levels_with_voltage*, %struct.pp_clock_levels_with_voltage** %4, align 8
  %70 = getelementptr inbounds %struct.pp_clock_levels_with_voltage, %struct.pp_clock_levels_with_voltage* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.dm_pp_clock_levels_with_voltage*, %struct.dm_pp_clock_levels_with_voltage** %5, align 8
  %77 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i64 %75, i64* %81, align 8
  br label %82

82:                                               ; preds = %40
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %34

85:                                               ; preds = %34
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
