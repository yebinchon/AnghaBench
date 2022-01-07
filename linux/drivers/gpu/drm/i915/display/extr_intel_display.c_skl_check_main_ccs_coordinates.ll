; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_check_main_ccs_coordinates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_check_main_ccs_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*, i32, i32, i64)* @skl_check_main_ccs_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_check_main_ccs_coordinates(%struct.intel_plane_state* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %19 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %20 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %21, align 8
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %10, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %24 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %34 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %13, align 4
  %39 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %40 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  %45 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %46 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %52 = call i64 @intel_surf_alignment(%struct.drm_framebuffer* %51, i32 1)
  store i64 %52, i64* %16, align 8
  br label %53

53:                                               ; preds = %76, %4
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ false, %53 ], [ %60, %57 ]
  br i1 %62, label %63, label %103

63:                                               ; preds = %61
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %103

72:                                               ; preds = %67, %63
  %73 = load i64, i64* %15, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %103

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %18, align 4
  %83 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = sub nsw i64 %85, %86
  %88 = call i64 @intel_plane_adjust_aligned_offset(i32* %17, i32* %18, %struct.intel_plane_state* %83, i32 1, i64 %84, i64 %87)
  store i64 %88, i64* %15, align 8
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  %94 = srem i32 %92, %93
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = srem i32 %99, %100
  %102 = add nsw i32 %98, %101
  store i32 %102, i32* %14, align 4
  br label %53

103:                                              ; preds = %75, %71, %61
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %103
  store i32 0, i32* %5, align 4
  br label %131

112:                                              ; preds = %107
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %115 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  store i64 %113, i64* %118, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %121 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %119, i32* %124, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %127 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32 %125, i32* %130, align 4
  store i32 1, i32* %5, align 4
  br label %131

131:                                              ; preds = %112, %111
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @intel_surf_alignment(%struct.drm_framebuffer*, i32) #1

declare dso_local i64 @intel_plane_adjust_aligned_offset(i32*, i32*, %struct.intel_plane_state*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
