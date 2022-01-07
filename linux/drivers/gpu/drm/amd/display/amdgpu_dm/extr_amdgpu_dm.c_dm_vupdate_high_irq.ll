; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_vupdate_high_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_vupdate_high_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_irq_params = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.amdgpu_crtc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.dm_crtc_state = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }

@IRQ_TYPE_VUPDATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"crtc:%d, vupdate-vrr:%d\0A\00", align 1
@AMDGPU_FAMILY_AI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dm_vupdate_high_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_vupdate_high_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.common_irq_params*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_crtc*, align 8
  %6 = alloca %struct.dm_crtc_state*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.common_irq_params*
  store %struct.common_irq_params* %9, %struct.common_irq_params** %3, align 8
  %10 = load %struct.common_irq_params*, %struct.common_irq_params** %3, align 8
  %11 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = load %struct.common_irq_params*, %struct.common_irq_params** %3, align 8
  %15 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IRQ_TYPE_VUPDATE, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call %struct.amdgpu_crtc* @get_crtc_by_otg_inst(%struct.amdgpu_device* %13, i64 %18)
  store %struct.amdgpu_crtc* %19, %struct.amdgpu_crtc** %5, align 8
  %20 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %21 = icmp ne %struct.amdgpu_crtc* %20, null
  br i1 %21, label %22, label %87

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.dm_crtc_state* @to_dm_crtc_state(i32 %26)
  store %struct.dm_crtc_state* %27, %struct.dm_crtc_state** %6, align 8
  %28 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %32 = call i64 @amdgpu_dm_vrr_active(%struct.dm_crtc_state* %31)
  %33 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %32)
  %34 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %35 = call i64 @amdgpu_dm_vrr_active(%struct.dm_crtc_state* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %22
  %38 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %38, i32 0, i32 0
  %40 = call i32 @drm_crtc_handle_vblank(%struct.TYPE_8__* %39)
  %41 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %42 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %37
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AMDGPU_FAMILY_AI, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %45
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %63 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %66 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %65, i32 0, i32 0
  %67 = call i32 @mod_freesync_handle_v_update(i32 %61, i64 %64, %struct.TYPE_7__* %66)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %73 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %76 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = call i32 @dc_stream_adjust_vmin_vmax(i32 %71, i64 %74, i32* %77)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %51, %45, %37
  br label %86

86:                                               ; preds = %85, %22
  br label %87

87:                                               ; preds = %86, %1
  ret void
}

declare dso_local %struct.amdgpu_crtc* @get_crtc_by_otg_inst(%struct.amdgpu_device*, i64) #1

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i64) #1

declare dso_local i64 @amdgpu_dm_vrr_active(%struct.dm_crtc_state*) #1

declare dso_local i32 @drm_crtc_handle_vblank(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_freesync_handle_v_update(i32, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @dc_stream_adjust_vmin_vmax(i32, i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
