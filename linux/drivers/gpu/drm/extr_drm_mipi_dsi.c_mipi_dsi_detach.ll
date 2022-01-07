; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mipi_dsi_host_ops* }
%struct.mipi_dsi_host_ops = type { i32 (%struct.TYPE_2__*, %struct.mipi_dsi_device.0*)* }
%struct.mipi_dsi_device.0 = type opaque

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mipi_dsi_detach(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.mipi_dsi_host_ops*, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %5 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mipi_dsi_host_ops*, %struct.mipi_dsi_host_ops** %8, align 8
  store %struct.mipi_dsi_host_ops* %9, %struct.mipi_dsi_host_ops** %4, align 8
  %10 = load %struct.mipi_dsi_host_ops*, %struct.mipi_dsi_host_ops** %4, align 8
  %11 = icmp ne %struct.mipi_dsi_host_ops* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mipi_dsi_host_ops*, %struct.mipi_dsi_host_ops** %4, align 8
  %14 = getelementptr inbounds %struct.mipi_dsi_host_ops, %struct.mipi_dsi_host_ops* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_2__*, %struct.mipi_dsi_device.0*)*, i32 (%struct.TYPE_2__*, %struct.mipi_dsi_device.0*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_2__*, %struct.mipi_dsi_device.0*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %12
  %21 = load %struct.mipi_dsi_host_ops*, %struct.mipi_dsi_host_ops** %4, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_host_ops, %struct.mipi_dsi_host_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_2__*, %struct.mipi_dsi_device.0*)*, i32 (%struct.TYPE_2__*, %struct.mipi_dsi_device.0*)** %22, align 8
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %28 = bitcast %struct.mipi_dsi_device* %27 to %struct.mipi_dsi_device.0*
  %29 = call i32 %23(%struct.TYPE_2__* %26, %struct.mipi_dsi_device.0* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
