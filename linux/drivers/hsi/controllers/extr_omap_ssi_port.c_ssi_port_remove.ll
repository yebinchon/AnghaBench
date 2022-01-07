; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hsi_port = type { i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.omap_ssi_port = type { i64, i32 }
%struct.hsi_controller = type { i32 }
%struct.omap_ssi_controller = type { i32** }

@hsi_dummy_msg = common dso_local global i32 0, align 4
@hsi_dummy_cl = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ssi_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_port_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hsi_port*, align 8
  %4 = alloca %struct.omap_ssi_port*, align 8
  %5 = alloca %struct.hsi_controller*, align 8
  %6 = alloca %struct.omap_ssi_controller*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.hsi_port* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.hsi_port* %8, %struct.hsi_port** %3, align 8
  %9 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %10 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %9)
  store %struct.omap_ssi_port* %10, %struct.omap_ssi_port** %4, align 8
  %11 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %12 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hsi_controller* @to_hsi_controller(i32 %14)
  store %struct.hsi_controller* %15, %struct.hsi_controller** %5, align 8
  %16 = load %struct.hsi_controller*, %struct.hsi_controller** %5, align 8
  %17 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %16)
  store %struct.omap_ssi_controller* %17, %struct.omap_ssi_controller** %6, align 8
  %18 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %19 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %18, i32 0, i32 1
  %20 = call i32 @cancel_delayed_work_sync(i32* %19)
  %21 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %22 = call i32 @hsi_port_unregister_clients(%struct.hsi_port* %21)
  %23 = load i32, i32* @hsi_dummy_msg, align 4
  %24 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %25 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @hsi_dummy_cl, align 8
  %27 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %28 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @hsi_dummy_cl, align 8
  %30 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %31 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @hsi_dummy_cl, align 8
  %33 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %34 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @hsi_dummy_cl, align 8
  %36 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %37 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @hsi_dummy_cl, align 8
  %39 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %40 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %6, align 8
  %42 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %45 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32*, i32** %43, i64 %46
  store i32* null, i32** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %49 = call i32 @platform_set_drvdata(%struct.platform_device* %48, i32* null)
  %50 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @pm_runtime_dont_use_autosuspend(i32* %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @pm_runtime_disable(i32* %54)
  ret i32 0
}

declare dso_local %struct.hsi_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local %struct.hsi_controller* @to_hsi_controller(i32) #1

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @hsi_port_unregister_clients(%struct.hsi_port*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
