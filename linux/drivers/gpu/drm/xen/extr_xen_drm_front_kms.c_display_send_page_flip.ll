; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_display_send_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_display_send_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { i32 }
%struct.drm_plane_state = type { i64, i32 }
%struct.xen_drm_front_drm_pipeline = type { i32, i32, i32, %struct.xen_drm_front_drm_info* }
%struct.xen_drm_front_drm_info = type { i32 }

@FRAME_DONE_TO_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to send page flip request to backend: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*)* @display_send_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_send_page_flip(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  %8 = alloca %struct.xen_drm_front_drm_info*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %14 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %13, i32 0, i32 0
  %15 = call %struct.drm_plane_state* @drm_atomic_get_new_plane_state(i32 %12, i32* %14)
  store %struct.drm_plane_state* %15, %struct.drm_plane_state** %6, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %2
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %27 = call %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_simple_display_pipe* %26)
  store %struct.xen_drm_front_drm_pipeline* %27, %struct.xen_drm_front_drm_pipeline** %7, align 8
  %28 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %7, align 8
  %29 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %28, i32 0, i32 3
  %30 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %29, align 8
  store %struct.xen_drm_front_drm_info* %30, %struct.xen_drm_front_drm_info** %8, align 8
  %31 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %7, align 8
  %32 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %31, i32 0, i32 2
  %33 = load i32, i32* @FRAME_DONE_TO_MS, align 4
  %34 = call i32 @msecs_to_jiffies(i32 %33)
  %35 = call i32 @schedule_delayed_work(i32* %32, i32 %34)
  %36 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %8, align 8
  %37 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %7, align 8
  %40 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @xen_drm_front_fb_to_cookie(i64 %44)
  %46 = call i32 @xen_drm_front_page_flip(i32 %38, i32 %41, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %25
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %7, align 8
  %53 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %56

54:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.drm_plane_state* @drm_atomic_get_new_plane_state(i32, i32*) #1

declare dso_local %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_simple_display_pipe*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @xen_drm_front_page_flip(i32, i32, i32) #1

declare dso_local i32 @xen_drm_front_fb_to_cookie(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
