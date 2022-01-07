; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_crtc* }
%struct.rcar_du_crtc_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VSP1_DU_CRC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @rcar_du_crtc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_reset(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.rcar_du_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @rcar_du_crtc_atomic_destroy_state(%struct.drm_crtc* %9, %struct.TYPE_4__* %12)
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.rcar_du_crtc_state* @kzalloc(i32 24, i32 %17)
  store %struct.rcar_du_crtc_state* %18, %struct.rcar_du_crtc_state** %3, align 8
  %19 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %3, align 8
  %20 = icmp eq %struct.rcar_du_crtc_state* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %39

22:                                               ; preds = %16
  %23 = load i32, i32* @VSP1_DU_CRC_NONE, align 4
  %24 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %3, align 8
  %25 = getelementptr inbounds %struct.rcar_du_crtc_state, %struct.rcar_du_crtc_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %3, align 8
  %28 = getelementptr inbounds %struct.rcar_du_crtc_state, %struct.rcar_du_crtc_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %3, align 8
  %31 = getelementptr inbounds %struct.rcar_du_crtc_state, %struct.rcar_du_crtc_state* %30, i32 0, i32 0
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 0
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.drm_crtc* %34, %struct.drm_crtc** %38, align 8
  br label %39

39:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @rcar_du_crtc_atomic_destroy_state(%struct.drm_crtc*, %struct.TYPE_4__*) #1

declare dso_local %struct.rcar_du_crtc_state* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
