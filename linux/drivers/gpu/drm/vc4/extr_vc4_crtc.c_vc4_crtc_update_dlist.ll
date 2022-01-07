; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_update_dlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_update_dlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.drm_device* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_crtc = type { i32, %struct.TYPE_4__* }
%struct.vc4_crtc_state = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @vc4_crtc_update_dlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_update_dlist(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_crtc*, align 8
  %6 = alloca %struct.vc4_crtc_state*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %11)
  store %struct.vc4_dev* %12, %struct.vc4_dev** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = call %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc* %13)
  store %struct.vc4_crtc* %14, %struct.vc4_crtc** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call %struct.vc4_crtc_state* @to_vc4_crtc_state(%struct.TYPE_6__* %17)
  store %struct.vc4_crtc_state* %18, %struct.vc4_crtc_state** %6, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %78

25:                                               ; preds = %1
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %27 = call i32 @drm_crtc_index(%struct.drm_crtc* %26)
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %27, i32* %33, align 4
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %35 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %6, align 8
  %44 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %25
  %48 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %6, align 8
  %49 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47, %25
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %54 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %59 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %58, i32 0, i32 1
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %59, align 8
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %61 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %63, align 8
  br label %64

64:                                               ; preds = %52, %47
  %65 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %66 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @SCALER_DISPLISTX(i32 %67)
  %69 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %6, align 8
  %70 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @HVS_WRITE(i32 %68, i32 %72)
  %74 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %88

78:                                               ; preds = %1
  %79 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %80 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @SCALER_DISPLISTX(i32 %81)
  %83 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %6, align 8
  %84 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @HVS_WRITE(i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %78, %64
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.vc4_crtc_state* @to_vc4_crtc_state(%struct.TYPE_6__*) #1

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HVS_WRITE(i32, i32) #1

declare dso_local i32 @SCALER_DISPLISTX(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
