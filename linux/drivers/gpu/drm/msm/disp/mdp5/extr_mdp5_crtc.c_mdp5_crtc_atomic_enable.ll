; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32 }
%struct.drm_crtc_state = type { i32 }
%struct.mdp5_crtc = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.mdp5_crtc_state = type { i64, i32, i32 }
%struct.mdp5_kms = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @mdp5_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
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
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %14)
  store %struct.mdp5_crtc_state* %15, %struct.mdp5_crtc_state** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = call %struct.mdp5_kms* @get_kms(%struct.drm_crtc* %16)
  store %struct.mdp5_kms* %17, %struct.mdp5_kms** %7, align 8
  %18 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %19 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %8, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %95

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = call i32 @pm_runtime_get_sync(%struct.device* %33)
  %35 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %36 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %32
  %40 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %41 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %52 = call i32 @mdp5_crtc_restore_cursor(%struct.drm_crtc* %51)
  %53 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %54 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %59 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %62 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %61, i32 0, i32 1
  %63 = call i32 @mdp5_ctl_set_cursor(i32 %60, i32* %62, i32 0, i32 1)
  br label %71

64:                                               ; preds = %39
  %65 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %66 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %69 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %68, i32 0, i32 1
  %70 = call i32 @mdp5_ctl_set_cursor(i32 %67, i32* %69, i32 0, i32 0)
  br label %71

71:                                               ; preds = %64, %45
  br label %72

72:                                               ; preds = %71, %32
  %73 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %74 = call i32 @mdp5_crtc_vblank_on(%struct.drm_crtc* %73)
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %76 = call i32 @mdp5_crtc_mode_set_nofb(%struct.drm_crtc* %75)
  %77 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %78 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %77, i32 0, i32 0
  %79 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %80 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %79, i32 0, i32 2
  %81 = call i32 @mdp_irq_register(i32* %78, i32* %80)
  %82 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %6, align 8
  %83 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %72
  %87 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %88 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %87, i32 0, i32 0
  %89 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %90 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %89, i32 0, i32 1
  %91 = call i32 @mdp_irq_register(i32* %88, i32* %90)
  br label %92

92:                                               ; preds = %86, %72
  %93 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %94 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %31
  ret void
}

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdp5_crtc_restore_cursor(%struct.drm_crtc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp5_ctl_set_cursor(i32, i32*, i32, i32) #1

declare dso_local i32 @mdp5_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @mdp5_crtc_mode_set_nofb(%struct.drm_crtc*) #1

declare dso_local i32 @mdp_irq_register(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
