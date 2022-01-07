; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bridge_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bridge_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.analogix_dp_device* }
%struct.analogix_dp_device = type { i64, i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to disable psr %d\0A\00", align 1
@DRM_MODE_DPMS_ON = common dso_local global i64 0, align 8
@MAX_PLL_LOCK_LOOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to set bridge, retry: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"too many times retry set bridge, give it up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_atomic_state*)* @analogix_dp_bridge_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analogix_dp_bridge_atomic_enable(%struct.drm_bridge* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.analogix_dp_device*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %10 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %11 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %10, i32 0, i32 0
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %11, align 8
  store %struct.analogix_dp_device* %12, %struct.analogix_dp_device** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %14 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %15 = call %struct.drm_crtc* @analogix_dp_get_new_crtc(%struct.analogix_dp_device* %13, %struct.drm_atomic_state* %14)
  store %struct.drm_crtc* %15, %struct.drm_crtc** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %17 = icmp ne %struct.drm_crtc* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %22 = call %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(%struct.drm_atomic_state* %20, %struct.drm_crtc* %21)
  store %struct.drm_crtc_state* %22, %struct.drm_crtc_state** %7, align 8
  %23 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %24 = icmp ne %struct.drm_crtc_state* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %27 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %32 = call i32 @analogix_dp_disable_psr(%struct.analogix_dp_device* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %73

39:                                               ; preds = %25, %19
  %40 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %41 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %73

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MAX_PLL_LOCK_LOOP, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %53 = call i64 @analogix_dp_set_bridge(%struct.analogix_dp_device* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %57 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %58 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %73

59:                                               ; preds = %51
  %60 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %61 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  %67 = call i32 @usleep_range(i32 10, i32 11)
  br label %47

68:                                               ; preds = %47
  %69 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %70 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %55, %45, %38, %18
  ret void
}

declare dso_local %struct.drm_crtc* @analogix_dp_get_new_crtc(%struct.analogix_dp_device*, %struct.drm_atomic_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @analogix_dp_disable_psr(%struct.analogix_dp_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i64 @analogix_dp_set_bridge(%struct.analogix_dp_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
