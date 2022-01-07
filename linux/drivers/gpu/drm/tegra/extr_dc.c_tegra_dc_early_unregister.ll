; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_early_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_early_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_minor* }
%struct.drm_minor = type { i32 }
%struct.tegra_dc = type { i32* }

@debugfs_files = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @tegra_dc_early_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dc_early_unregister(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_minor*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load i32, i32* @debugfs_files, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.drm_minor*, %struct.drm_minor** %11, align 8
  store %struct.drm_minor* %12, %struct.drm_minor** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = call %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc* %13)
  store %struct.tegra_dc* %14, %struct.tegra_dc** %5, align 8
  %15 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %20 = call i32 @drm_debugfs_remove_files(i32* %17, i32 %18, %struct.drm_minor* %19)
  %21 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_debugfs_remove_files(i32*, i32, %struct.drm_minor*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
