; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_rockchip_host_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_rockchip_host_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.dw_mipi_dsi_rockchip = type { %struct.device* }
%struct.device = type { i32 }

@dw_mipi_dsi_rockchip_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mipi_dsi_device*)* @dw_mipi_dsi_rockchip_host_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_rockchip_host_detach(i8* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.dw_mipi_dsi_rockchip*, align 8
  %6 = alloca %struct.device*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dw_mipi_dsi_rockchip*
  store %struct.dw_mipi_dsi_rockchip* %8, %struct.dw_mipi_dsi_rockchip** %5, align 8
  %9 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %5, align 8
  %10 = call %struct.device* @dw_mipi_dsi_rockchip_find_second(%struct.dw_mipi_dsi_rockchip* %9)
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @IS_ERR(%struct.device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @component_del(%struct.device* %18, i32* @dw_mipi_dsi_rockchip_ops)
  br label %20

20:                                               ; preds = %17, %13, %2
  %21 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %5, align 8
  %22 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  %24 = call i32 @component_del(%struct.device* %23, i32* @dw_mipi_dsi_rockchip_ops)
  ret i32 0
}

declare dso_local %struct.device* @dw_mipi_dsi_rockchip_find_second(%struct.dw_mipi_dsi_rockchip*) #1

declare dso_local i32 @IS_ERR(%struct.device*) #1

declare dso_local i32 @component_del(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
