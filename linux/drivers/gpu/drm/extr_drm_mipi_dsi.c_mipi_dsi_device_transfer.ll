; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_device_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_device_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mipi_dsi_host_ops* }
%struct.mipi_dsi_host_ops = type { i32 (%struct.TYPE_2__*, %struct.mipi_dsi_msg*)* }
%struct.mipi_dsi_msg = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@MIPI_DSI_MSG_USE_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*, %struct.mipi_dsi_msg*)* @mipi_dsi_device_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_dsi_device_transfer(%struct.mipi_dsi_device* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.mipi_dsi_host_ops*, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mipi_dsi_host_ops*, %struct.mipi_dsi_host_ops** %10, align 8
  store %struct.mipi_dsi_host_ops* %11, %struct.mipi_dsi_host_ops** %6, align 8
  %12 = load %struct.mipi_dsi_host_ops*, %struct.mipi_dsi_host_ops** %6, align 8
  %13 = icmp ne %struct.mipi_dsi_host_ops* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.mipi_dsi_host_ops*, %struct.mipi_dsi_host_ops** %6, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_host_ops, %struct.mipi_dsi_host_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_2__*, %struct.mipi_dsi_msg*)*, i32 (%struct.TYPE_2__*, %struct.mipi_dsi_msg*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_2__*, %struct.mipi_dsi_msg*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %14
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %24 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @MIPI_DSI_MSG_USE_LPM, align 4
  %31 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %32 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.mipi_dsi_host_ops*, %struct.mipi_dsi_host_ops** %6, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_host_ops, %struct.mipi_dsi_host_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_2__*, %struct.mipi_dsi_msg*)*, i32 (%struct.TYPE_2__*, %struct.mipi_dsi_msg*)** %37, align 8
  %39 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %40 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %43 = call i32 %38(%struct.TYPE_2__* %41, %struct.mipi_dsi_msg* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
