; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_host_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_host_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mipi_dsi_device = type { i32 }
%struct.dw_mipi_dsi = type { i32, %struct.dw_mipi_dsi_plat_data* }
%struct.dw_mipi_dsi_plat_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.mipi_dsi_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @dw_mipi_dsi_host_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_host_detach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.dw_mipi_dsi*, align 8
  %7 = alloca %struct.dw_mipi_dsi_plat_data*, align 8
  %8 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %9 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %10 = call %struct.dw_mipi_dsi* @host_to_dsi(%struct.mipi_dsi_host* %9)
  store %struct.dw_mipi_dsi* %10, %struct.dw_mipi_dsi** %6, align 8
  %11 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %12 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %11, i32 0, i32 1
  %13 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %12, align 8
  store %struct.dw_mipi_dsi_plat_data* %13, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %14 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %15 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %20 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.mipi_dsi_device*)*, i32 (i32, %struct.mipi_dsi_device*)** %22, align 8
  %24 = icmp ne i32 (i32, %struct.mipi_dsi_device*)* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %27 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.mipi_dsi_device*)*, i32 (i32, %struct.mipi_dsi_device*)** %29, align 8
  %31 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %32 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %35 = call i32 %30(i32 %33, %struct.mipi_dsi_device* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %18, %2
  %42 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %43 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @drm_of_panel_bridge_remove(i32 %46, i32 1, i32 0)
  %48 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %49 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %48, i32 0, i32 0
  %50 = call i32 @drm_bridge_remove(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.dw_mipi_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @drm_of_panel_bridge_remove(i32, i32, i32) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
