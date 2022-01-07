; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cursor_check_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cursor_check_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Arbitrary cursor panning not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @intel_cursor_check_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_cursor_check_surface(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %8 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %9 = call i32 @intel_plane_compute_gtt(%struct.intel_plane_state* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %16 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %52

21:                                               ; preds = %14
  %22 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %23 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %4, align 4
  %27 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %28 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  store i32 %31, i32* %5, align 4
  %32 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %33 = call i32 @intel_add_fb_offsets(i32* %4, i32* %5, %struct.intel_plane_state* %32, i32 0)
  %34 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %35 = call i32 @intel_plane_compute_aligned_offset(i32* %4, i32* %5, %struct.intel_plane_state* %34, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %21
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %48 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %41, %20, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @intel_plane_compute_gtt(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_add_fb_offsets(i32*, i32*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @intel_plane_compute_aligned_offset(i32*, i32*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
