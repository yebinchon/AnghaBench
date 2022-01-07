; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.drm_plane = type { i32 }
%struct.vkms_plane_state = type { %struct.drm_plane_state, %struct.vkms_composer* }
%struct.vkms_composer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't allocate composer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane_state* (%struct.drm_plane*)* @vkms_plane_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane_state* @vkms_plane_duplicate_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.vkms_plane_state*, align 8
  %5 = alloca %struct.vkms_composer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i32 16, i32 %6)
  %8 = bitcast i8* %7 to %struct.vkms_plane_state*
  store %struct.vkms_plane_state* %8, %struct.vkms_plane_state** %4, align 8
  %9 = load %struct.vkms_plane_state*, %struct.vkms_plane_state** %4, align 8
  %10 = icmp ne %struct.vkms_plane_state* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %32

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 4, i32 %13)
  %15 = bitcast i8* %14 to %struct.vkms_composer*
  store %struct.vkms_composer* %15, %struct.vkms_composer** %5, align 8
  %16 = load %struct.vkms_composer*, %struct.vkms_composer** %5, align 8
  %17 = icmp ne %struct.vkms_composer* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.vkms_plane_state*, %struct.vkms_plane_state** %4, align 8
  %21 = call i32 @kfree(%struct.vkms_plane_state* %20)
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %32

22:                                               ; preds = %12
  %23 = load %struct.vkms_composer*, %struct.vkms_composer** %5, align 8
  %24 = load %struct.vkms_plane_state*, %struct.vkms_plane_state** %4, align 8
  %25 = getelementptr inbounds %struct.vkms_plane_state, %struct.vkms_plane_state* %24, i32 0, i32 1
  store %struct.vkms_composer* %23, %struct.vkms_composer** %25, align 8
  %26 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %27 = load %struct.vkms_plane_state*, %struct.vkms_plane_state** %4, align 8
  %28 = getelementptr inbounds %struct.vkms_plane_state, %struct.vkms_plane_state* %27, i32 0, i32 0
  %29 = call i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane* %26, %struct.drm_plane_state* %28)
  %30 = load %struct.vkms_plane_state*, %struct.vkms_plane_state** %4, align 8
  %31 = getelementptr inbounds %struct.vkms_plane_state, %struct.vkms_plane_state* %30, i32 0, i32 0
  store %struct.drm_plane_state* %31, %struct.drm_plane_state** %2, align 8
  br label %32

32:                                               ; preds = %22, %18, %11
  %33 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %33
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @kfree(%struct.vkms_plane_state*) #1

declare dso_local i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
