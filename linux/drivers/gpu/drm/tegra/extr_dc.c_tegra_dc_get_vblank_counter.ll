; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_get_vblank_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_get_vblank_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.tegra_dc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @tegra_dc_get_vblank_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_get_vblank_counter(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.tegra_dc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %6 = call %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc* %5)
  store %struct.tegra_dc* %6, %struct.tegra_dc** %4, align 8
  %7 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @host1x_syncpt_read(i64 %21)
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %11, %1
  %24 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %24, i32 0, i32 0
  %26 = call i32 @drm_crtc_vblank_count(i32* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc*) #1

declare dso_local i32 @host1x_syncpt_read(i64) #1

declare dso_local i32 @drm_crtc_vblank_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
