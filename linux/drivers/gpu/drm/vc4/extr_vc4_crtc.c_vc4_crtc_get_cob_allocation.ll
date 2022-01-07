; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_get_cob_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_get_cob_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_crtc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }

@SCALER_DISPBASEX_TOP = common dso_local global i32 0, align 4
@SCALER_DISPBASEX_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_crtc*)* @vc4_crtc_get_cob_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_get_cob_allocation(%struct.vc4_crtc* %0) #0 {
  %2 = alloca %struct.vc4_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc4_crtc* %0, %struct.vc4_crtc** %2, align 8
  %8 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %12)
  store %struct.vc4_dev* %13, %struct.vc4_dev** %4, align 8
  %14 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SCALER_DISPBASEX(i32 %16)
  %18 = call i32 @HVS_READ(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SCALER_DISPBASEX_TOP, align 4
  %21 = call i32 @VC4_GET_FIELD(i32 %19, i32 %20)
  %22 = and i32 %21, -4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SCALER_DISPBASEX_BASE, align 4
  %25 = call i32 @VC4_GET_FIELD(i32 %23, i32 %24)
  %26 = and i32 %25, -4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 4
  %31 = load %struct.vc4_crtc*, %struct.vc4_crtc** %2, align 8
  %32 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @HVS_READ(i32) #1

declare dso_local i32 @SCALER_DISPBASEX(i32) #1

declare dso_local i32 @VC4_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
