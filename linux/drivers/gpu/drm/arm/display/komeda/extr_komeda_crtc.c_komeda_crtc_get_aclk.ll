; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_get_aclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_get_aclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.drm_crtc* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.komeda_dev* }
%struct.komeda_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @komeda_crtc_get_aclk(%struct.komeda_crtc_state* %0) #0 {
  %2 = alloca %struct.komeda_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.komeda_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.komeda_crtc_state* %0, %struct.komeda_crtc_state** %2, align 8
  %7 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %2, align 8
  %8 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  store %struct.drm_crtc* %10, %struct.drm_crtc** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.komeda_dev*, %struct.komeda_dev** %14, align 8
  store %struct.komeda_dev* %15, %struct.komeda_dev** %4, align 8
  %16 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %2, align 8
  %17 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 1000
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %24 = call i32 @to_kcrtc(%struct.drm_crtc* %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @komeda_calc_min_aclk_rate(i32 %24, i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %28 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @clk_round_rate(i32 %29, i64 %30)
  ret i64 %31
}

declare dso_local i64 @komeda_calc_min_aclk_rate(i32, i64) #1

declare dso_local i32 @to_kcrtc(%struct.drm_crtc*) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
