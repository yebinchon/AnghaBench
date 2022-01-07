; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_high_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_high_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_irq_params = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.amdgpu_crtc = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.dm_crtc_state = type { %struct.TYPE_10__, i64, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }

@IRQ_TYPE_VBLANK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"crtc:%d, vupdate-vrr:%d\0A\00", align 1
@AMDGPU_FAMILY_AI = common dso_local global i64 0, align 8
@VRR_STATE_ACTIVE_VARIABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dm_crtc_high_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_crtc_high_irq(i8* %0) #0 {
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
  %17 = load i64, i64* @IRQ_TYPE_VBLANK, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call %struct.amdgpu_crtc* @get_crtc_by_otg_inst(%struct.amdgpu_device* %13, i64 %18)
  store %struct.amdgpu_crtc* %19, %struct.amdgpu_crtc** %5, align 8
  %20 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %21 = icmp ne %struct.amdgpu_crtc* %20, null
  br i1 %21, label %22, label %103

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.dm_crtc_state* @to_dm_crtc_state(i32 %26)
  store %struct.dm_crtc_state* %27, %struct.dm_crtc_state** %6, align 8
  %28 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %32 = call i32 @amdgpu_dm_vrr_active(%struct.dm_crtc_state* %31)
  %33 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %35 = call i32 @amdgpu_dm_vrr_active(%struct.dm_crtc_state* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %38, i32 0, i32 0
  %40 = call i32 @drm_crtc_handle_vblank(%struct.TYPE_11__* %39)
  br label %41

41:                                               ; preds = %37, %22
  %42 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %42, i32 0, i32 0
  %44 = call i32 @amdgpu_dm_crtc_handle_crc_irq(%struct.TYPE_11__* %43)
  %45 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %46 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %41
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AMDGPU_FAMILY_AI, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %49
  %56 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %57 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %55
  %62 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %63 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @VRR_STATE_ACTIVE_VARIABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %61
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %80 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %83 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %82, i32 0, i32 0
  %84 = call i32 @mod_freesync_handle_v_update(i32 %78, i64 %81, %struct.TYPE_10__* %83)
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %90 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %93 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = call i32 @dc_stream_adjust_vmin_vmax(i32 %88, i64 %91, i32* %94)
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %68, %61, %55, %49, %41
  br label %103

103:                                              ; preds = %102, %1
  ret void
}

declare dso_local %struct.amdgpu_crtc* @get_crtc_by_otg_inst(%struct.amdgpu_device*, i64) #1

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_dm_vrr_active(%struct.dm_crtc_state*) #1

declare dso_local i32 @drm_crtc_handle_vblank(%struct.TYPE_11__*) #1

declare dso_local i32 @amdgpu_dm_crtc_handle_crc_irq(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_freesync_handle_v_update(i32, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @dc_stream_adjust_vmin_vmax(i32, i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
