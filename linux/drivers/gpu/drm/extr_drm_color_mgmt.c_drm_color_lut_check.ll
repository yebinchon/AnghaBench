; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_color_mgmt.c_drm_color_lut_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_color_mgmt.c_drm_color_lut_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property_blob = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i64, i64, i64 }

@DRM_COLOR_LUT_EQUAL_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"All LUT entries must have equal r/g/b\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_COLOR_LUT_NON_DECREASING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"LUT entries must never decrease.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_color_lut_check(%struct.drm_property_blob* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_color_lut*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_property_blob* %0, %struct.drm_property_blob** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %9 = icmp ne %struct.drm_property_blob* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %124

14:                                               ; preds = %10
  %15 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %16 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %15, i32 0, i32 0
  %17 = load %struct.drm_color_lut*, %struct.drm_color_lut** %16, align 8
  store %struct.drm_color_lut* %17, %struct.drm_color_lut** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %120, %14
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %21 = call i32 @drm_color_lut_size(%struct.drm_property_blob* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %123

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DRM_COLOR_LUT_EQUAL_CHANNELS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %29, i64 %31
  %33 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %35, i64 %37
  %39 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %34, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %28
  %43 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %43, i64 %45
  %47 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %49, i64 %51
  %53 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %48, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %42, %28
  %57 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %124

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %119

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @DRM_COLOR_LUT_NON_DECREASING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %64
  %70 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %70, i64 %72
  %74 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %76, i64 %79
  %81 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %75, %82
  br i1 %83, label %114, label %84

84:                                               ; preds = %69
  %85 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %85, i64 %87
  %89 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %91, i64 %94
  %96 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %90, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %84
  %100 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %100, i64 %102
  %104 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %106, i64 %109
  %111 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %105, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %99, %84, %69
  %115 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %124

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %64, %61
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %18

123:                                              ; preds = %18
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %114, %56, %13
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @drm_color_lut_size(%struct.drm_property_blob*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
