; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_get_plane_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_get_plane_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.dc_plane_cap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rgb_formats = common dso_local global i32* null, align 8
@DRM_FORMAT_NV12 = common dso_local global i32 0, align 4
@overlay_formats = common dso_local global i32* null, align 8
@cursor_formats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.dc_plane_cap*, i32*, i32)* @get_plane_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_plane_formats(%struct.drm_plane* %0, %struct.dc_plane_cap* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca %struct.dc_plane_cap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %5, align 8
  store %struct.dc_plane_cap* %1, %struct.dc_plane_cap** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %108 [
    i32 128, label %14
    i32 129, label %56
    i32 130, label %82
  ]

14:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32*, i32** @rgb_formats, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %39

25:                                               ; preds = %20
  %26 = load i32*, i32** @rgb_formats, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %15

39:                                               ; preds = %24, %15
  %40 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %6, align 8
  %41 = icmp ne %struct.dc_plane_cap* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %6, align 8
  %44 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* @DRM_FORMAT_NV12, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %42, %39
  br label %108

56:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %78, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** @overlay_formats, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %81

67:                                               ; preds = %62
  %68 = load i32*, i32** @overlay_formats, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %57

81:                                               ; preds = %66, %57
  br label %108

82:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %104, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** @cursor_formats, align 8
  %86 = call i32 @ARRAY_SIZE(i32* %85)
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %107

93:                                               ; preds = %88
  %94 = load i32*, i32** @cursor_formats, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %83

107:                                              ; preds = %92, %83
  br label %108

108:                                              ; preds = %4, %107, %81, %55
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
