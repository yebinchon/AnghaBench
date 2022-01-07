; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ti_sn_bridge = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ti_sn_bridge_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sn_bridge_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ti_sn_bridge*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = call %struct.ti_sn_bridge* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.ti_sn_bridge* %6, %struct.ti_sn_bridge** %4, align 8
  %7 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %4, align 8
  %8 = icmp ne %struct.ti_sn_bridge* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %4, align 8
  %14 = call i32 @ti_sn_debugfs_remove(%struct.ti_sn_bridge* %13)
  %15 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %4, align 8
  %16 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @of_node_put(i32 %17)
  %19 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %4, align 8
  %20 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_disable(i32 %21)
  %23 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %4, align 8
  %24 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %12
  %28 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %4, align 8
  %29 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mipi_dsi_detach(i64 %30)
  %32 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %4, align 8
  %33 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mipi_dsi_device_unregister(i64 %34)
  br label %36

36:                                               ; preds = %27, %12
  %37 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %4, align 8
  %38 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %37, i32 0, i32 0
  %39 = call i32 @drm_bridge_remove(i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.ti_sn_bridge* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ti_sn_debugfs_remove(%struct.ti_sn_bridge*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @mipi_dsi_detach(i64) #1

declare dso_local i32 @mipi_dsi_device_unregister(i64) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
