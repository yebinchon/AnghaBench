; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_host_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_host_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32 }
%struct.exynos_dsi = type { %struct.TYPE_9__*, %struct.TYPE_6__, i32*, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @exynos_dsi_host_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_host_detach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca %struct.mipi_dsi_host*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.exynos_dsi*, align 8
  %6 = alloca %struct.drm_device*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %3, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %4, align 8
  %7 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %8 = call %struct.exynos_dsi* @host_to_dsi(%struct.mipi_dsi_host* %7)
  store %struct.exynos_dsi* %8, %struct.exynos_dsi** %5, align 8
  %9 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %10 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %14 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %23 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %22, i32 0, i32 3
  %24 = call i32 @exynos_dsi_disable(%struct.TYPE_10__* %23)
  %25 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %26 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @drm_panel_detach(i32* %27)
  %29 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %30 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @connector_status_disconnected, align 4
  %32 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %33 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %63

39:                                               ; preds = %2
  %40 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %41 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %45, align 8
  %47 = icmp ne i32 (%struct.TYPE_9__*)* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %50 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %54, align 8
  %56 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %57 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = call i32 %55(%struct.TYPE_9__* %58)
  br label %60

60:                                               ; preds = %48, %39
  %61 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %62 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %61, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %62, align 8
  br label %63

63:                                               ; preds = %60, %17
  %64 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %71 = call i32 @drm_kms_helper_hotplug_event(%struct.drm_device* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.exynos_dsi*, %struct.exynos_dsi** %5, align 8
  %74 = call i32 @exynos_dsi_unregister_te_irq(%struct.exynos_dsi* %73)
  ret i32 0
}

declare dso_local %struct.exynos_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @exynos_dsi_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @drm_panel_detach(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_kms_helper_hotplug_event(%struct.drm_device*) #1

declare dso_local i32 @exynos_dsi_unregister_te_irq(%struct.exynos_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
