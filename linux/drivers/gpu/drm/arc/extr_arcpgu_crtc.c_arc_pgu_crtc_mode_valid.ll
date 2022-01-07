; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_crtc.c_arc_pgu_crtc_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_crtc.c_arc_pgu_crtc_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.arcpgu_drm_private = type { i32 }

@MODE_OK = common dso_local global i32 0, align 4
@MODE_NOCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @arc_pgu_crtc_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_pgu_crtc_mode_valid(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.arcpgu_drm_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %11 = call %struct.arcpgu_drm_private* @crtc_to_arcpgu_priv(%struct.drm_crtc* %10)
  store %struct.arcpgu_drm_private* %11, %struct.arcpgu_drm_private** %6, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sdiv i64 %17, 200
  store i64 %18, i64* %9, align 8
  %19 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %6, align 8
  %20 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @clk_round_rate(i32 %21, i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @max(i64 %24, i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @min(i64 %27, i64 %28)
  %30 = sub nsw i64 %26, %29
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i64, i64* %7, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @MODE_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %33, %2
  %39 = load i32, i32* @MODE_NOCLOCK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.arcpgu_drm_private* @crtc_to_arcpgu_priv(%struct.drm_crtc*) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
