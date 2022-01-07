; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_dsysr_clr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_dsysr_clr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, i64, %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32 }

@DSYSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcar_du_crtc_dsysr_clr_set(%struct.rcar_du_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rcar_du_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rcar_du_device*, align 8
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %9 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %8, i32 0, i32 2
  %10 = load %struct.rcar_du_device*, %struct.rcar_du_device** %9, align 8
  store %struct.rcar_du_device* %10, %struct.rcar_du_device** %7, align 8
  %11 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %22 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %23 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DSYSR, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %28 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rcar_du_write(%struct.rcar_du_device* %21, i64 %26, i32 %29)
  ret void
}

declare dso_local i32 @rcar_du_write(%struct.rcar_du_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
