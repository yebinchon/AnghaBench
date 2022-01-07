; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_rockchip_find_second.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_rockchip_find_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dw_mipi_dsi_rockchip = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device_node*, %struct.TYPE_3__* }
%struct.device_node = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.of_device_id = type { i32 }
%struct.platform_device = type { %struct.device }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.dw_mipi_dsi_rockchip*)* @dw_mipi_dsi_rockchip_find_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @dw_mipi_dsi_rockchip_find_second(%struct.dw_mipi_dsi_rockchip* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dw_mipi_dsi_rockchip*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.dw_mipi_dsi_rockchip*, align 8
  %9 = alloca %struct.platform_device*, align 8
  store %struct.dw_mipi_dsi_rockchip* %0, %struct.dw_mipi_dsi_rockchip** %3, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  %10 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %3, align 8
  %11 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %3, align 8
  %18 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.of_device_id* @of_match_device(i32 %16, %struct.TYPE_4__* %19)
  store %struct.of_device_id* %20, %struct.of_device_id** %4, align 8
  %21 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %3, align 8
  %22 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  %26 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %25, i32 1, i32 0)
  store %struct.device_node* %26, %struct.device_node** %6, align 8
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %92

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %86, %52, %46, %30
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.device_node* @of_find_compatible_node(%struct.device_node* %32, i32* null, i32 %35)
  store %struct.device_node* %36, %struct.device_node** %5, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %38, label %89

38:                                               ; preds = %31
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %3, align 8
  %41 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.device_node*, %struct.device_node** %43, align 8
  %45 = icmp eq %struct.device_node* %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %31

47:                                               ; preds = %38
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %48, i32 1, i32 0)
  store %struct.device_node* %49, %struct.device_node** %7, align 8
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = icmp ne %struct.device_node* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %31

53:                                               ; preds = %47
  %54 = load %struct.device_node*, %struct.device_node** %7, align 8
  %55 = load %struct.device_node*, %struct.device_node** %6, align 8
  %56 = icmp eq %struct.device_node* %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %58)
  store %struct.platform_device* %59, %struct.platform_device** %9, align 8
  %60 = load %struct.device_node*, %struct.device_node** %7, align 8
  %61 = call i32 @of_node_put(%struct.device_node* %60)
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = call i32 @of_node_put(%struct.device_node* %62)
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i32 @of_node_put(%struct.device_node* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %67 = icmp ne %struct.platform_device* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* @EPROBE_DEFER, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.device* @ERR_PTR(i32 %70)
  store %struct.device* %71, %struct.device** %2, align 8
  br label %92

72:                                               ; preds = %57
  %73 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %74 = call %struct.dw_mipi_dsi_rockchip* @platform_get_drvdata(%struct.platform_device* %73)
  store %struct.dw_mipi_dsi_rockchip* %74, %struct.dw_mipi_dsi_rockchip** %8, align 8
  %75 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %8, align 8
  %76 = icmp ne %struct.dw_mipi_dsi_rockchip* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %79 = call i32 @platform_device_put(%struct.platform_device* %78)
  %80 = load i32, i32* @EPROBE_DEFER, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.device* @ERR_PTR(i32 %81)
  store %struct.device* %82, %struct.device** %2, align 8
  br label %92

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  store %struct.device* %85, %struct.device** %2, align 8
  br label %92

86:                                               ; preds = %53
  %87 = load %struct.device_node*, %struct.device_node** %7, align 8
  %88 = call i32 @of_node_put(%struct.device_node* %87)
  br label %31

89:                                               ; preds = %31
  %90 = load %struct.device_node*, %struct.device_node** %6, align 8
  %91 = call i32 @of_node_put(%struct.device_node* %90)
  store %struct.device* null, %struct.device** %2, align 8
  br label %92

92:                                               ; preds = %89, %83, %77, %68, %29
  %93 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %93
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_4__*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local %struct.device_node* @of_find_compatible_node(%struct.device_node*, i32*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local %struct.dw_mipi_dsi_rockchip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
