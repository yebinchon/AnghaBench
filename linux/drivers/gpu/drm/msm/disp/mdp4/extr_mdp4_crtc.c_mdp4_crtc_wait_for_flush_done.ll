; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_wait_for_flush_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_wait_for_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mdp4_crtc = type { i32, i32 }
%struct.mdp4_kms = type { i32 }

@REG_MDP4_OVERLAY_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"vblank time out, crtc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mdp4_crtc_wait_for_flush_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_crtc_wait_for_flush_done(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mdp4_crtc*, align 8
  %5 = alloca %struct.mdp4_kms*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc* %10)
  store %struct.mdp4_crtc* %11, %struct.mdp4_crtc** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = call %struct.mdp4_kms* @get_kms(%struct.drm_crtc* %12)
  store %struct.mdp4_kms* %13, %struct.mdp4_kms** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = call i32 @drm_crtc_vblank_get(%struct.drm_crtc* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %24 = call i64 @drm_crtc_index(%struct.drm_crtc* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %29 = load i32, i32* @REG_MDP4_OVERLAY_FLUSH, align 4
  %30 = call i32 @mdp4_read(%struct.mdp4_kms* %28, i32 %29)
  %31 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %4, align 8
  %32 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @msecs_to_jiffies(i32 50)
  %39 = call i32 @wait_event_timeout(i32 %27, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %19
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %4, align 8
  %47 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_warn(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %42, %19
  %51 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %4, align 8
  %52 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %54 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %53)
  br label %55

55:                                               ; preds = %50, %18
  ret void
}

declare dso_local %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i32 @mdp4_read(%struct.mdp4_kms*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
