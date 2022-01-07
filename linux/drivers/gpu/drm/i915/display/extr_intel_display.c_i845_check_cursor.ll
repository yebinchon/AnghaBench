; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i845_check_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i845_check_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32* }

@.str = private unnamed_addr constant [38 x i8] c"Cursor dimension %dx%d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid cursor stride (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @i845_check_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i845_check_cursor(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %8 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %11, %struct.drm_framebuffer** %6, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %13 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %14 = call i32 @intel_check_cursor(%struct.intel_crtc_state* %12, %struct.intel_plane_state* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %21 = icmp ne %struct.drm_framebuffer* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %83

23:                                               ; preds = %19
  %24 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %25 = call i32 @i845_cursor_size_ok(%struct.intel_plane_state* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %83

39:                                               ; preds = %23
  %40 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %47 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %51, %56
  br label %58

58:                                               ; preds = %45, %39
  %59 = phi i1 [ false, %39 ], [ %57, %45 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %63 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %68 [
    i32 256, label %67
    i32 512, label %67
    i32 1024, label %67
    i32 2048, label %67
  ]

67:                                               ; preds = %58, %58, %58, %58
  br label %77

68:                                               ; preds = %58
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %70 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %67
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %79 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %80 = call i32 @i845_cursor_ctl(%struct.intel_crtc_state* %78, %struct.intel_plane_state* %79)
  %81 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %82 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %68, %27, %22, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @intel_check_cursor(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @i845_cursor_size_ok(%struct.intel_plane_state*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @i845_cursor_ctl(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
