; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.drm_panel = type { i32 }
%struct.rockchip_dp_device = type { %struct.TYPE_2__, i32, %struct.device* }
%struct.TYPE_2__ = type { %struct.drm_panel* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@rockchip_dp_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_dp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.drm_panel*, align 8
  %6 = alloca %struct.rockchip_dp_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  store %struct.drm_panel* null, %struct.drm_panel** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @drm_of_find_panel_or_bridge(i32 %12, i32 1, i32 0, %struct.drm_panel** %5, i32* null)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.rockchip_dp_device* @devm_kzalloc(%struct.device* %19, i32 24, i32 %20)
  store %struct.rockchip_dp_device* %21, %struct.rockchip_dp_device** %6, align 8
  %22 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %6, align 8
  %23 = icmp ne %struct.rockchip_dp_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %6, align 8
  %30 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %29, i32 0, i32 2
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @ERR_PTR(i32 %32)
  %34 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %6, align 8
  %35 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.drm_panel*, %struct.drm_panel** %5, align 8
  %37 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %6, align 8
  %38 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.drm_panel* %36, %struct.drm_panel** %39, align 8
  %40 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %6, align 8
  %41 = call i32 @rockchip_dp_of_probe(%struct.rockchip_dp_device* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %27
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %6, align 8
  %49 = call i32 @platform_set_drvdata(%struct.platform_device* %47, %struct.rockchip_dp_device* %48)
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @component_add(%struct.device* %50, i32* @rockchip_dp_component_ops)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %44, %24, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, %struct.drm_panel**, i32*) #1

declare dso_local %struct.rockchip_dp_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @rockchip_dp_of_probe(%struct.rockchip_dp_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_dp_device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
