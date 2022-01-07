; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_atomic_commit_update_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_atomic_commit_update_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.drm_crtc_state = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32 }
%struct.malidp_crtc_state = type { i32 }

@MALIDP_DISP_FUNC_GAMMA = common dso_local global i32 0, align 4
@MALIDP_DE_DISPLAY_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @malidp_atomic_commit_update_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_atomic_commit_update_gamma(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.malidp_drm*, align 8
  %6 = alloca %struct.malidp_hw_device*, align 8
  %7 = alloca %struct.malidp_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc* %8)
  store %struct.malidp_drm* %9, %struct.malidp_drm** %5, align 8
  %10 = load %struct.malidp_drm*, %struct.malidp_drm** %5, align 8
  %11 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %10, i32 0, i32 0
  %12 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %11, align 8
  store %struct.malidp_hw_device* %12, %struct.malidp_hw_device** %6, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %29 = load i32, i32* @MALIDP_DISP_FUNC_GAMMA, align 4
  %30 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %31 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %28, i32 %29, i32 %30)
  br label %68

32:                                               ; preds = %20
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = call %struct.malidp_crtc_state* @to_malidp_crtc_state(%struct.TYPE_10__* %35)
  store %struct.malidp_crtc_state* %36, %struct.malidp_crtc_state** %7, align 8
  %37 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %38 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %32
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %51 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %49, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %41, %32
  %58 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %59 = load %struct.malidp_crtc_state*, %struct.malidp_crtc_state** %7, align 8
  %60 = getelementptr inbounds %struct.malidp_crtc_state, %struct.malidp_crtc_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @malidp_write_gamma_table(%struct.malidp_hw_device* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %41
  %64 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %65 = load i32, i32* @MALIDP_DISP_FUNC_GAMMA, align 4
  %66 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %67 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %19, %63, %27
  ret void
}

declare dso_local %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc*) #1

declare dso_local i32 @malidp_hw_clearbits(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local %struct.malidp_crtc_state* @to_malidp_crtc_state(%struct.TYPE_10__*) #1

declare dso_local i32 @malidp_write_gamma_table(%struct.malidp_hw_device*, i32) #1

declare dso_local i32 @malidp_hw_setbits(%struct.malidp_hw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
