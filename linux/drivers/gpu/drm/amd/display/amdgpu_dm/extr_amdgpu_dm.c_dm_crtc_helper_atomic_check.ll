; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_helper_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_helper_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dc* }
%struct.dc = type { i32 }
%struct.drm_crtc_state = type { i64, i64 }
%struct.dm_crtc_state = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)* @dm_crtc_helper_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_crtc_helper_atomic_check(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dm_crtc_state*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %6, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.dc*, %struct.dc** %17, align 8
  store %struct.dc* %18, %struct.dc** %7, align 8
  %19 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %20 = call %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state* %19)
  store %struct.dm_crtc_state* %20, %struct.dm_crtc_state** %8, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %25 = call i32 @dm_update_crtc_interrupt_state(%struct.drm_crtc* %23, %struct.drm_crtc_state* %24)
  %26 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %8, align 8
  %27 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %32 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %8, align 8
  %33 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @modeset_required(%struct.drm_crtc_state* %31, i32* null, i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %30, %2
  %38 = phi i1 [ false, %2 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i32 @WARN_ON(i32 1)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %84

45:                                               ; preds = %37
  %46 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %8, align 8
  %47 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %84

51:                                               ; preds = %45
  %52 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %53 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %58 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %63 = call i64 @does_crtc_have_active_cursor(%struct.drm_crtc_state* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %8, align 8
  %67 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %84

73:                                               ; preds = %65, %61, %56, %51
  %74 = load %struct.dc*, %struct.dc** %7, align 8
  %75 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %8, align 8
  %76 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @dc_validate_stream(%struct.dc* %74, i32 %77)
  %79 = load i64, i64* @DC_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %81, %70, %50, %42
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @dm_update_crtc_interrupt_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @modeset_required(%struct.drm_crtc_state*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @does_crtc_have_active_cursor(%struct.drm_crtc_state*) #1

declare dso_local i64 @dc_validate_stream(%struct.dc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
