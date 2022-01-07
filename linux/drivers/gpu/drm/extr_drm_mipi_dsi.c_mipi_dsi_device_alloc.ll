; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { %struct.TYPE_2__, %struct.mipi_dsi_host* }
%struct.TYPE_2__ = type { i32*, i32, i32* }
%struct.mipi_dsi_host = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mipi_dsi_bus_type = common dso_local global i32 0, align 4
@mipi_dsi_device_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mipi_dsi_device* (%struct.mipi_dsi_host*)* @mipi_dsi_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mipi_dsi_device* @mipi_dsi_device_alloc(%struct.mipi_dsi_host* %0) #0 {
  %2 = alloca %struct.mipi_dsi_device*, align 8
  %3 = alloca %struct.mipi_dsi_host*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mipi_dsi_device* @kzalloc(i32 32, i32 %5)
  store %struct.mipi_dsi_device* %6, %struct.mipi_dsi_device** %4, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %8 = icmp ne %struct.mipi_dsi_device* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.mipi_dsi_device* @ERR_PTR(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %15 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %15, i32 0, i32 1
  store %struct.mipi_dsi_host* %14, %struct.mipi_dsi_host** %16, align 8
  %17 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %18 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32* @mipi_dsi_bus_type, i32** %19, align 8
  %20 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %21 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %24 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %27 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* @mipi_dsi_device_type, i32** %28, align 8
  %29 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %30 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %29, i32 0, i32 0
  %31 = call i32 @device_initialize(%struct.TYPE_2__* %30)
  %32 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  store %struct.mipi_dsi_device* %32, %struct.mipi_dsi_device** %2, align 8
  br label %33

33:                                               ; preds = %13, %9
  %34 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  ret %struct.mipi_dsi_device* %34
}

declare dso_local %struct.mipi_dsi_device* @kzalloc(i32, i32) #1

declare dso_local %struct.mipi_dsi_device* @ERR_PTR(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
