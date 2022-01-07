; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_plane* }
%struct.vkms_plane_state = type { %struct.TYPE_2__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate vkms_plane_state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @vkms_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vkms_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.vkms_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i32 @vkms_plane_destroy_state(%struct.drm_plane* %9, %struct.TYPE_2__* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vkms_plane_state* @kzalloc(i32 8, i32 %15)
  store %struct.vkms_plane_state* %16, %struct.vkms_plane_state** %3, align 8
  %17 = load %struct.vkms_plane_state*, %struct.vkms_plane_state** %3, align 8
  %18 = icmp ne %struct.vkms_plane_state* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %31

21:                                               ; preds = %14
  %22 = load %struct.vkms_plane_state*, %struct.vkms_plane_state** %3, align 8
  %23 = getelementptr inbounds %struct.vkms_plane_state, %struct.vkms_plane_state* %22, i32 0, i32 0
  %24 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 0
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.drm_plane* %26, %struct.drm_plane** %30, align 8
  br label %31

31:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @vkms_plane_destroy_state(%struct.drm_plane*, %struct.TYPE_2__*) #1

declare dso_local %struct.vkms_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
