; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c___drm_lut_to_dc_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c___drm_lut_to_dc_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_color_lut = type { i32, i32, i32 }
%struct.dc_gamma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i8**, i8** }

@MAX_COLOR_LEGACY_LUT_ENTRIES = common dso_local global i32 0, align 4
@MAX_COLOR_LUT_ENTRIES = common dso_local global i32 0, align 4
@MAX_DRM_LUT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_color_lut*, %struct.dc_gamma*, i32)* @__drm_lut_to_dc_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__drm_lut_to_dc_gamma(%struct.drm_color_lut* %0, %struct.dc_gamma* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_color_lut*, align 8
  %5 = alloca %struct.dc_gamma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_color_lut* %0, %struct.drm_color_lut** %4, align 8
  store %struct.dc_gamma* %1, %struct.dc_gamma** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %67, %13
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MAX_COLOR_LEGACY_LUT_ENTRIES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %19, i64 %21
  %23 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drm_color_lut_extract(i32 %24, i32 16)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %26, i64 %28
  %30 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @drm_color_lut_extract(i32 %31, i32 16)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %33, i64 %35
  %37 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @drm_color_lut_extract(i32 %38, i32 16)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @dc_fixpt_from_int(i32 %40)
  %42 = load %struct.dc_gamma*, %struct.dc_gamma** %5, align 8
  %43 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %41, i8** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @dc_fixpt_from_int(i32 %49)
  %51 = load %struct.dc_gamma*, %struct.dc_gamma** %5, align 8
  %52 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %50, i8** %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i8* @dc_fixpt_from_int(i32 %58)
  %60 = load %struct.dc_gamma*, %struct.dc_gamma** %5, align 8
  %61 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %59, i8** %66, align 8
  br label %67

67:                                               ; preds = %18
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %14

70:                                               ; preds = %14
  br label %131

71:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %128, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @MAX_COLOR_LUT_ENTRIES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %131

76:                                               ; preds = %72
  %77 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %77, i64 %79
  %81 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @drm_color_lut_extract(i32 %82, i32 16)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %84, i64 %86
  %88 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @drm_color_lut_extract(i32 %89, i32 16)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %91, i64 %93
  %95 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @drm_color_lut_extract(i32 %96, i32 16)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MAX_DRM_LUT_VALUE, align 4
  %100 = call i8* @dc_fixpt_from_fraction(i32 %98, i32 %99)
  %101 = load %struct.dc_gamma*, %struct.dc_gamma** %5, align 8
  %102 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %100, i8** %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @MAX_DRM_LUT_VALUE, align 4
  %110 = call i8* @dc_fixpt_from_fraction(i32 %108, i32 %109)
  %111 = load %struct.dc_gamma*, %struct.dc_gamma** %5, align 8
  %112 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %110, i8** %117, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @MAX_DRM_LUT_VALUE, align 4
  %120 = call i8* @dc_fixpt_from_fraction(i32 %118, i32 %119)
  %121 = load %struct.dc_gamma*, %struct.dc_gamma** %5, align 8
  %122 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %120, i8** %127, align 8
  br label %128

128:                                              ; preds = %76
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %72

131:                                              ; preds = %70, %72
  ret void
}

declare dso_local i32 @drm_color_lut_extract(i32, i32) #1

declare dso_local i8* @dc_fixpt_from_int(i32) #1

declare dso_local i8* @dc_fixpt_from_fraction(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
