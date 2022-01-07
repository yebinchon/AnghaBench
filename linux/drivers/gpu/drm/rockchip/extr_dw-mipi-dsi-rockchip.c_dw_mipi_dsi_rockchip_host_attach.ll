; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_rockchip_host_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_rockchip_host_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.dw_mipi_dsi_rockchip = type { %struct.device* }
%struct.device = type { i32 }

@dw_mipi_dsi_rockchip_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mipi_dsi_device*)* @dw_mipi_dsi_rockchip_host_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_rockchip_host_attach(i8* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.dw_mipi_dsi_rockchip*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dw_mipi_dsi_rockchip*
  store %struct.dw_mipi_dsi_rockchip* %10, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %11 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %12 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  %14 = call i32 @component_add(%struct.device* %13, i32* @dw_mipi_dsi_rockchip_ops)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %19 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @DRM_DEV_ERROR(%struct.device* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %26 = call %struct.device* @dw_mipi_dsi_rockchip_find_second(%struct.dw_mipi_dsi_rockchip* %25)
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call i64 @IS_ERR(%struct.device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = call i32 @PTR_ERR(%struct.device* %31)
  store i32 %32, i32* %3, align 4
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = icmp ne %struct.device* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = call i32 @component_add(%struct.device* %37, i32* @dw_mipi_dsi_rockchip_ops)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @DRM_DEV_ERROR(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %33
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %41, %30, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local %struct.device* @dw_mipi_dsi_rockchip_find_second(%struct.dw_mipi_dsi_rockchip*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
