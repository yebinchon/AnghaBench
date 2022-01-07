; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_display_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_display_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xen_drm_front_drm_pipeline = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to disable display: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*)* @display_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_disable(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %6 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %7 = call %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_simple_display_pipe* %6)
  store %struct.xen_drm_front_drm_pipeline* %7, %struct.xen_drm_front_drm_pipeline** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %9 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @drm_dev_enter(i32 %11, i32* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %3, align 8
  %16 = call i32 @xen_drm_front_fb_to_cookie(i32* null)
  %17 = call i32 @xen_drm_front_mode_set(%struct.xen_drm_front_drm_pipeline* %15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @drm_dev_exit(i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %3, align 8
  %28 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %3, align 8
  %30 = call i32 @send_pending_event(%struct.xen_drm_front_drm_pipeline* %29)
  ret void
}

declare dso_local %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_simple_display_pipe*) #1

declare dso_local i64 @drm_dev_enter(i32, i32*) #1

declare dso_local i32 @xen_drm_front_mode_set(%struct.xen_drm_front_drm_pipeline*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xen_drm_front_fb_to_cookie(i32*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @send_pending_event(%struct.xen_drm_front_drm_pipeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
