; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ingenic_drm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)* @ingenic_drm_crtc_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_drm_crtc_atomic_check(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.ingenic_drm*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %9 = call %struct.ingenic_drm* @drm_crtc_get_priv(%struct.drm_crtc* %8)
  store %struct.ingenic_drm* %9, %struct.ingenic_drm** %6, align 8
  %10 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %11 = call i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.ingenic_drm*, %struct.ingenic_drm** %6, align 8
  %16 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %19 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = call i64 @clk_round_rate(i32 %17, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.ingenic_drm* @drm_crtc_get_priv(%struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local i64 @clk_round_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
