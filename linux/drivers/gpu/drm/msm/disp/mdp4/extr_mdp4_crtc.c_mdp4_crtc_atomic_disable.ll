; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.mdp4_crtc = type { i32, i32, i32 }
%struct.mdp4_kms = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @mdp4_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.mdp4_crtc*, align 8
  %6 = alloca %struct.mdp4_kms*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc* %7)
  store %struct.mdp4_crtc* %8, %struct.mdp4_crtc** %5, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.mdp4_kms* @get_kms(%struct.drm_crtc* %9)
  store %struct.mdp4_kms* %10, %struct.mdp4_kms** %6, align 8
  %11 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %5, align 8
  %12 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %26 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %25)
  %27 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %28 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %27, i32 0, i32 0
  %29 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %29, i32 0, i32 1
  %31 = call i32 @mdp_irq_unregister(i32* %28, i32* %30)
  %32 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %33 = call i32 @mdp4_disable(%struct.mdp4_kms* %32)
  %34 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %5, align 8
  %35 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @mdp_irq_unregister(i32*, i32*) #1

declare dso_local i32 @mdp4_disable(%struct.mdp4_kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
