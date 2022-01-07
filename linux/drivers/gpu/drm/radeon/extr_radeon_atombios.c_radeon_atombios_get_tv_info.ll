; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_tv_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_tv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct._ATOM_ANALOG_TV_INFO = type { i32 }

@DATA = common dso_local global i32 0, align 4
@AnalogTV_Info = common dso_local global i32 0, align 4
@TV_STD_NTSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Default TV standard: NTSC\0A\00", align 1
@TV_STD_NTSC_J = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Default TV standard: NTSC-J\0A\00", align 1
@TV_STD_PAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Default TV standard: PAL\0A\00", align 1
@TV_STD_PAL_M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Default TV standard: PAL-M\0A\00", align 1
@TV_STD_PAL_N = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Default TV standard: PAL-N\0A\00", align 1
@TV_STD_PAL_CN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Default TV standard: PAL-CN\0A\00", align 1
@TV_STD_PAL_60 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Default TV standard: PAL-60\0A\00", align 1
@TV_STD_SECAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Default TV standard: SECAM\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Unknown TV standard; defaulting to NTSC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atombios_get_tv_info(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_mode_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._ATOM_ANALOG_TV_INFO*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  store %struct.radeon_mode_info* %11, %struct.radeon_mode_info** %3, align 8
  %12 = load i32, i32* @DATA, align 4
  %13 = load i32, i32* @AnalogTV_Info, align 4
  %14 = call i32 @GetIndexIntoMasterTable(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @TV_STD_NTSC, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @atom_parse_data_header(%struct.TYPE_2__* %18, i32 %19, i32* null, i32* %6, i32* %7, i64* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %1
  %23 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %27, %28
  %30 = inttoptr i64 %29 to %struct._ATOM_ANALOG_TV_INFO*
  store %struct._ATOM_ANALOG_TV_INFO* %30, %struct._ATOM_ANALOG_TV_INFO** %8, align 8
  %31 = load %struct._ATOM_ANALOG_TV_INFO*, %struct._ATOM_ANALOG_TV_INFO** %8, align 8
  %32 = getelementptr inbounds %struct._ATOM_ANALOG_TV_INFO, %struct._ATOM_ANALOG_TV_INFO* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %58 [
    i32 135, label %34
    i32 134, label %37
    i32 133, label %40
    i32 130, label %43
    i32 129, label %46
    i32 131, label %49
    i32 132, label %52
    i32 128, label %55
  ]

34:                                               ; preds = %22
  %35 = load i32, i32* @TV_STD_NTSC, align 4
  store i32 %35, i32* %9, align 4
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %61

37:                                               ; preds = %22
  %38 = load i32, i32* @TV_STD_NTSC_J, align 4
  store i32 %38, i32* %9, align 4
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %61

40:                                               ; preds = %22
  %41 = load i32, i32* @TV_STD_PAL, align 4
  store i32 %41, i32* %9, align 4
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %61

43:                                               ; preds = %22
  %44 = load i32, i32* @TV_STD_PAL_M, align 4
  store i32 %44, i32* %9, align 4
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %61

46:                                               ; preds = %22
  %47 = load i32, i32* @TV_STD_PAL_N, align 4
  store i32 %47, i32* %9, align 4
  %48 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %61

49:                                               ; preds = %22
  %50 = load i32, i32* @TV_STD_PAL_CN, align 4
  store i32 %50, i32* %9, align 4
  %51 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %61

52:                                               ; preds = %22
  %53 = load i32, i32* @TV_STD_PAL_60, align 4
  store i32 %53, i32* %9, align 4
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %61

55:                                               ; preds = %22
  %56 = load i32, i32* @TV_STD_SECAM, align 4
  store i32 %56, i32* %9, align 4
  %57 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %61

58:                                               ; preds = %22
  %59 = load i32, i32* @TV_STD_NTSC, align 4
  store i32 %59, i32* %9, align 4
  %60 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55, %52, %49, %46, %43, %40, %37, %34
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_2__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
