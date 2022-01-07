; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_check_nv12_aux_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_check_nv12_aux_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__, %struct.drm_framebuffer* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"CbCr source size %dx%d too big (limit %dx%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @skl_check_nv12_aux_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_check_nv12_aux_surface(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %13 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %14 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  store %struct.drm_framebuffer* %16, %struct.drm_framebuffer** %4, align 8
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %18 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @skl_max_plane_width(%struct.drm_framebuffer* %21, i32 1, i32 %22)
  store i32 %23, i32* %6, align 4
  store i32 4096, i32* %7, align 4
  %24 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %25 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 17
  store i32 %29, i32* %8, align 4
  %30 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %31 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 17
  store i32 %35, i32* %9, align 4
  %36 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %37 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = call i32 @drm_rect_width(%struct.TYPE_7__* %38)
  %40 = ashr i32 %39, 17
  store i32 %40, i32* %10, align 4
  %41 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %42 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = call i32 @drm_rect_height(%struct.TYPE_7__* %43)
  %45 = ashr i32 %44, 17
  store i32 %45, i32* %11, align 4
  %46 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %47 = call i32 @intel_add_fb_offsets(i32* %8, i32* %9, %struct.intel_plane_state* %46, i32 1)
  %48 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %49 = call i32 @intel_plane_compute_aligned_offset(i32* %8, i32* %9, %struct.intel_plane_state* %48, i32 1)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %1
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53, %1
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %84

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %68 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %74 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %80 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %65, %57
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @skl_max_plane_width(%struct.drm_framebuffer*, i32, i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_7__*) #1

declare dso_local i32 @intel_add_fb_offsets(i32*, i32*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @intel_plane_compute_aligned_offset(i32*, i32*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
