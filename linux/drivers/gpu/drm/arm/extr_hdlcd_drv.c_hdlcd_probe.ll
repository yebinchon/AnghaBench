; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }
%struct.component_match = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@compare_dev = common dso_local global i32 0, align 4
@hdlcd_master_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hdlcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlcd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.component_match*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.component_match* null, %struct.component_match** %5, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device_node* @of_graph_get_remote_node(i32 %9, i32 0, i32 0)
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @compare_dev, align 4
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i32 @drm_of_component_match_add(%struct.TYPE_3__* %18, %struct.component_match** %5, i32 %19, %struct.device_node* %20)
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.component_match*, %struct.component_match** %5, align 8
  %27 = call i32 @component_master_add_with_match(%struct.TYPE_3__* %25, i32* @hdlcd_master_ops, %struct.component_match* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %16, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local i32 @drm_of_component_match_add(%struct.TYPE_3__*, %struct.component_match**, i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @component_master_add_with_match(%struct.TYPE_3__*, i32*, %struct.component_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
