; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_8__*, i32, %struct.drm_device* }
%struct.TYPE_8__ = type { i32* }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.mdp5_crtc = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mdp5_crtc_state = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s: event: %p\00", align 1
@PENDING_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @mdp5_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.mdp5_crtc*, align 8
  %6 = alloca %struct.mdp5_crtc_state*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %9)
  store %struct.mdp5_crtc* %10, %struct.mdp5_crtc** %5, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.TYPE_8__* %13)
  store %struct.mdp5_crtc_state* %14, %struct.mdp5_crtc_state** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 2
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20, i32* %25)
  %27 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @WARN_ON(i32* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %41 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %51 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %2
  br label %95

59:                                               ; preds = %2
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %61 = call i32 @blend_setup(%struct.drm_crtc* %60)
  %62 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %63 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %68 = call i32 @request_pp_done_pending(%struct.drm_crtc* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %71 = call i32 @crtc_flush_all(%struct.drm_crtc* %70)
  %72 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %73 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %75 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %78 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %81 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %84 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %87 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %90 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %93 = load i32, i32* @PENDING_FLIP, align 4
  %94 = call i32 @request_pending(%struct.drm_crtc* %92, i32 %93)
  br label %95

95:                                               ; preds = %69, %58
  ret void
}

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.TYPE_8__*) #1

declare dso_local i32 @DBG(i8*, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blend_setup(%struct.drm_crtc*) #1

declare dso_local i32 @request_pp_done_pending(%struct.drm_crtc*) #1

declare dso_local i32 @crtc_flush_all(%struct.drm_crtc*) #1

declare dso_local i32 @request_pending(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
