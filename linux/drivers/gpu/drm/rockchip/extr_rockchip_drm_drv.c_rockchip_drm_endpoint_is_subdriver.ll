; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_endpoint_is_subdriver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_endpoint_is_subdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_driver* }
%struct.device_driver = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@num_rockchip_sub_drivers = common dso_local global i32 0, align 4
@rockchip_sub_drivers = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rockchip_drm_endpoint_is_subdriver(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %8)
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %16)
  store %struct.platform_device* %17, %struct.platform_device** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_node_put(%struct.device_node* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = icmp ne %struct.platform_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.device_driver*, %struct.device_driver** %28, align 8
  store %struct.device_driver* %29, %struct.device_driver** %6, align 8
  %30 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %31 = icmp ne %struct.device_driver* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = call i32 @platform_device_put(%struct.platform_device* %33)
  store i32 0, i32* %2, align 4
  br label %59

35:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @num_rockchip_sub_drivers, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i64*, i64** @rockchip_sub_drivers, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %47 = call i64 @to_platform_driver(%struct.device_driver* %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = call i32 @platform_device_put(%struct.platform_device* %50)
  store i32 1, i32* %2, align 4
  br label %59

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %58 = call i32 @platform_device_put(%struct.platform_device* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %49, %32, %22, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i64 @to_platform_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
