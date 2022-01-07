; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_dw_hdmi.c_sun8i_dw_hdmi_find_connector_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_dw_hdmi.c_sun8i_dw_hdmi_find_connector_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hdmi-connector\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.platform_device**)* @sun8i_dw_hdmi_find_connector_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_dw_hdmi_find_connector_pdev(%struct.device* %0, %struct.platform_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device**, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.platform_device** %1, %struct.platform_device*** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device_node* @of_graph_get_remote_node(i32 %10, i32 1, i32 -1)
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %7, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = call i32 @of_device_is_compatible(%struct.device_node* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %17
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %27)
  store %struct.platform_device* %28, %struct.platform_device** %6, align 8
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %32 = icmp ne %struct.platform_device* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %26
  %37 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %38 = load %struct.platform_device**, %struct.platform_device*** %5, align 8
  store %struct.platform_device* %37, %struct.platform_device** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %33, %21, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
