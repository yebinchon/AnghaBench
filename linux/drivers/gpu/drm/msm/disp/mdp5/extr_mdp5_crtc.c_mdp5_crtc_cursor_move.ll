; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_cursor_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_cursor_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_8__*, %struct.drm_device* }
%struct.TYPE_8__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.mdp5_kms = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mdp5_crtc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }
%struct.mdp5_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"cursor_move is deprecated with cursor planes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32)* @mdp5_crtc_cursor_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_crtc_cursor_move(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp5_kms*, align 8
  %9 = alloca %struct.mdp5_crtc*, align 8
  %10 = alloca %struct.mdp5_crtc_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %17 = call %struct.mdp5_kms* @get_kms(%struct.drm_crtc* %16)
  store %struct.mdp5_kms* %17, %struct.mdp5_kms** %8, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %19 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %18)
  store %struct.mdp5_crtc* %19, %struct.mdp5_crtc** %9, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.TYPE_8__* %22)
  store %struct.mdp5_crtc_state* %23, %struct.mdp5_crtc_state** %10, align 8
  %24 = call i32 @mdp_ctl_flush_mask_cursor(i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 1
  %27 = load %struct.drm_device*, %struct.drm_device** %26, align 8
  store %struct.drm_device* %27, %struct.drm_device** %12, align 8
  %28 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %9, align 8
  %29 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %110

39:                                               ; preds = %3
  %40 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %10, align 8
  %41 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %110

48:                                               ; preds = %39
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %50 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %110

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %9, align 8
  %63 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = sub nsw i32 0, %66
  %68 = call i32 @max(i32 %61, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %9, align 8
  %70 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %9, align 8
  %74 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = sub nsw i32 0, %77
  %79 = call i32 @max(i32 %72, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %9, align 8
  %81 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %84 = call i32 @get_roi(%struct.drm_crtc* %83, i32* %13, i32* %14)
  %85 = load %struct.mdp5_kms*, %struct.mdp5_kms** %8, align 8
  %86 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @pm_runtime_get_sync(i32* %88)
  %90 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %9, align 8
  %91 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %15, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %96 = call i32 @mdp5_crtc_restore_cursor(%struct.drm_crtc* %95)
  %97 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %9, align 8
  %98 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @crtc_flush(%struct.drm_crtc* %102, i32 %103)
  %105 = load %struct.mdp5_kms*, %struct.mdp5_kms** %8, align 8
  %106 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = call i32 @pm_runtime_put_sync(i32* %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %60, %59, %45, %32
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.TYPE_8__*) #1

declare dso_local i32 @mdp_ctl_flush_mask_cursor(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @get_roi(%struct.drm_crtc*, i32*, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdp5_crtc_restore_cursor(%struct.drm_crtc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @crtc_flush(%struct.drm_crtc*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
