; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_encoder-tpd12s015.c_tpd_register_hpd_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_encoder-tpd12s015.c_tpd_register_hpd_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.panel_drv_data = type { void (i8*, i32)*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, {}*, i8*)* @tpd_register_hpd_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpd_register_hpd_cb(%struct.omap_dss_device* %0, {}* %1, i8* %2) #0 {
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca {}*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.panel_drv_data*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store {}* %1, {}** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %9 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %8)
  store %struct.panel_drv_data* %9, %struct.panel_drv_data** %7, align 8
  %10 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %11 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load {}*, {}** %5, align 8
  %14 = bitcast {}* %13 to void (i8*, i32)*
  %15 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %16 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %15, i32 0, i32 0
  store void (i8*, i32)* %14, void (i8*, i32)** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %19 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %21 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
