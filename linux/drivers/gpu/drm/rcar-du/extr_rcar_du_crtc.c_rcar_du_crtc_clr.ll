; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_crtc*, i32, i32)* @rcar_du_crtc_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_clr(%struct.rcar_du_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rcar_du_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rcar_du_device*, align 8
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %9 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %8, i32 0, i32 1
  %10 = load %struct.rcar_du_device*, %struct.rcar_du_device** %9, align 8
  store %struct.rcar_du_device* %10, %struct.rcar_du_device** %7, align 8
  %11 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %12 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  %17 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %18 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %19 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @rcar_du_read(%struct.rcar_du_device* %17, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @rcar_du_write(%struct.rcar_du_device* %11, i32 %16, i32 %26)
  ret void
}

declare dso_local i32 @rcar_du_write(%struct.rcar_du_device*, i32, i32) #1

declare dso_local i32 @rcar_du_read(%struct.rcar_du_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
