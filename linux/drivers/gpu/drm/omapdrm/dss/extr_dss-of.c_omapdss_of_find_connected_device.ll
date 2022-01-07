; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss-of.c_omapdss_of_find_connected_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss-of.c_omapdss_of_find_connected_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.device_node = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_dss_device* @omapdss_of_find_connected_device(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %8, i32 %9, i32 0)
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %3, align 8
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call %struct.omap_dss_device* @omapdss_find_device_by_node(%struct.device_node* %15)
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @of_node_put(%struct.device_node* %17)
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %20 = icmp ne %struct.omap_dss_device* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  br label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @EPROBE_DEFER, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.omap_dss_device* @ERR_PTR(i32 %25)
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi %struct.omap_dss_device* [ %22, %21 ], [ %26, %23 ]
  store %struct.omap_dss_device* %28, %struct.omap_dss_device** %3, align 8
  br label %29

29:                                               ; preds = %27, %13
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  ret %struct.omap_dss_device* %30
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local %struct.omap_dss_device* @omapdss_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.omap_dss_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
