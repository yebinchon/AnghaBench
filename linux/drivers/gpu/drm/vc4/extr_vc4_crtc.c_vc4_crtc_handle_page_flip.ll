; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_handle_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_handle_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_crtc = type { i32, i32*, %struct.drm_crtc }
%struct.drm_crtc = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_crtc_state = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_crtc*)* @vc4_crtc_handle_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_handle_page_flip(%struct.vc4_crtc* %0) #0 {
  %2 = alloca %struct.vc4_crtc*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.vc4_dev*, align 8
  %6 = alloca %struct.vc4_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vc4_crtc* %0, %struct.vc4_crtc** %2, align 8
  %9 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %9, i32 0, i32 2
  store %struct.drm_crtc* %10, %struct.drm_crtc** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %14)
  store %struct.vc4_dev* %15, %struct.vc4_dev** %5, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.vc4_crtc_state* @to_vc4_crtc_state(i32 %18)
  store %struct.vc4_crtc_state* %19, %struct.vc4_crtc_state** %6, align 8
  %20 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %21 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %28 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %1
  %32 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %6, align 8
  %33 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @SCALER_DISPLACTX(i32 %36)
  %38 = call i64 @HVS_READ(i32 %37)
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %6, align 8
  %42 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40, %31
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %47 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %48 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %46, i32* %49)
  %51 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %52 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %54 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %53)
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %57 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @vc4_hvs_unmask_underrun(%struct.drm_device* %55, i32 %58)
  br label %60

60:                                               ; preds = %45, %40, %1
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_crtc_state* @to_vc4_crtc_state(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @HVS_READ(i32) #1

declare dso_local i32 @SCALER_DISPLACTX(i32) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

declare dso_local i32 @vc4_hvs_unmask_underrun(%struct.drm_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
