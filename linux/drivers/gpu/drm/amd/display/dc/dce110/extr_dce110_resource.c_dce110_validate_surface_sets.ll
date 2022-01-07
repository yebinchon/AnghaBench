; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_validate_surface_sets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_validate_surface_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32, %struct.TYPE_8__**, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.dc_plane_state** }
%struct.dc_plane_state = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i64 0, align 8
@PIXEL_ENCODING_RGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_state*)* @dce110_validate_surface_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_validate_surface_sets(%struct.dc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %102, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %10 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %105

13:                                               ; preds = %7
  %14 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %15 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %102

24:                                               ; preds = %13
  %25 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %26 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %106

35:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %98, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %39 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %37, %45
  br i1 %46, label %47, label %101

47:                                               ; preds = %36
  %48 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %49 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %55, i64 %57
  %59 = load %struct.dc_plane_state*, %struct.dc_plane_state** %58, align 8
  store %struct.dc_plane_state* %59, %struct.dc_plane_state** %6, align 8
  %60 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %61 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %47
  %66 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %67 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 1920
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.dc_plane_state*, %struct.dc_plane_state** %6, align 8
  %73 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 1080
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %65
  store i32 0, i32* %2, align 4
  br label %106

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %106

82:                                               ; preds = %78
  %83 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %84 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %85, i64 %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PIXEL_ENCODING_RGB, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %106

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %47
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %36

101:                                              ; preds = %36
  br label %102

102:                                              ; preds = %101, %23
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %7

105:                                              ; preds = %7
  store i32 1, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %95, %81, %77, %34
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
