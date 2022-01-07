; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.exynos_dpi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @exynos_dpi_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dpi_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_dpi*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = call %struct.exynos_dpi* @connector_to_dpi(%struct.drm_connector* %6)
  store %struct.exynos_dpi* %7, %struct.exynos_dpi** %5, align 8
  %8 = load %struct.exynos_dpi*, %struct.exynos_dpi** %5, align 8
  %9 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.exynos_dpi*, %struct.exynos_dpi** %5, align 8
  %14 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.exynos_dpi*, %struct.exynos_dpi** %5, align 8
  %21 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.exynos_dpi*, %struct.exynos_dpi** %5, align 8
  %24 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %23, i32 0, i32 0
  %25 = call i32 @drm_panel_attach(%struct.TYPE_2__* %22, i32* %24)
  br label %26

26:                                               ; preds = %19, %12, %2
  %27 = load i32, i32* @connector_status_connected, align 4
  ret i32 %27
}

declare dso_local %struct.exynos_dpi* @connector_to_dpi(%struct.drm_connector*) #1

declare dso_local i32 @drm_panel_attach(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
