; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }
%struct.komeda_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @komeda_crtc_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_crtc_mode_fixup(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.komeda_crtc*, align 8
  %8 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %10 = call %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc* %9)
  store %struct.komeda_crtc* %10, %struct.komeda_crtc** %7, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %12 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %11, i32 0)
  %13 = load %struct.komeda_crtc*, %struct.komeda_crtc** %7, align 8
  %14 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %21, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %25, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %29, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %33, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %19, %3
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 1000
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %8, align 8
  %46 = load %struct.komeda_crtc*, %struct.komeda_crtc** %7, align 8
  %47 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @clk_round_rate(i32 %50, i64 %51)
  %53 = sdiv i32 %52, 1000
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret i32 1
}

declare dso_local %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @clk_round_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
