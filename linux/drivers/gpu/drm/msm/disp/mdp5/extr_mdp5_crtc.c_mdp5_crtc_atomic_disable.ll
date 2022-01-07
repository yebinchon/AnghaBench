; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.drm_crtc_state = type { i32 }
%struct.mdp5_crtc = type { i32, i32, i32, i32 }
%struct.mdp5_crtc_state = type { i64 }
%struct.mdp5_kms = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @mdp5_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.mdp5_crtc*, align 8
  %6 = alloca %struct.mdp5_crtc_state*, align 8
  %7 = alloca %struct.mdp5_kms*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %10)
  store %struct.mdp5_crtc* %11, %struct.mdp5_crtc** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.TYPE_6__* %14)
  store %struct.mdp5_crtc_state* %15, %struct.mdp5_crtc_state** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = call %struct.mdp5_kms* @get_kms(%struct.drm_crtc* %16)
  store %struct.mdp5_kms* %17, %struct.mdp5_kms** %7, align 8
  %18 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %19 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %8, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %100

35:                                               ; preds = %2
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %37 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %36)
  %38 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %39 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %44 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %43, i32 0, i32 1
  %45 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %46 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %45, i32 0, i32 3
  %47 = call i32 @mdp_irq_unregister(i32* %44, i32* %46)
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %50 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %49, i32 0, i32 1
  %51 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %52 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %51, i32 0, i32 2
  %53 = call i32 @mdp_irq_unregister(i32* %50, i32* %52)
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = call i32 @pm_runtime_put_sync(%struct.device* %54)
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %57 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %97

62:                                               ; preds = %48
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %62
  %70 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %71 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @WARN_ON(i32 %72)
  %74 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %75 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %81 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %82 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %80, i32* %85)
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %88 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %92 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %69, %62, %48
  %98 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %99 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %34
  ret void
}

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.TYPE_6__*) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @mdp_irq_unregister(i32*, i32*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
