; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rmi_device_platform_data = type { i32 }
%struct.rmi_driver_data = type { i32 }

@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@rmi_irq_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register interrupt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_device*)* @rmi_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_irq_init(%struct.rmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_device*, align 8
  %4 = alloca %struct.rmi_device_platform_data*, align 8
  %5 = alloca %struct.rmi_driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rmi_device* %0, %struct.rmi_device** %3, align 8
  %8 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %9 = call %struct.rmi_device_platform_data* @rmi_get_platform_data(%struct.rmi_device* %8)
  store %struct.rmi_device_platform_data* %9, %struct.rmi_device_platform_data** %4, align 8
  %10 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %11 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %10, i32 0, i32 0
  %12 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %11)
  store %struct.rmi_driver_data* %12, %struct.rmi_driver_data** %5, align 8
  %13 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %4, align 8
  %14 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @irq_get_trigger_type(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %23 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %22, i32 0, i32 0
  %24 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @rmi_irq_fn, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IRQF_ONESHOT, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %32 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_driver_string(i32 %35)
  %37 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %38 = call i32 @devm_request_threaded_irq(i32* %23, i32 %26, i32* null, i32 %27, i32 %30, i32 %36, %struct.rmi_device* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %21
  %42 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %43 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %42, i32 0, i32 0
  %44 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %4, align 8
  %45 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %21
  %50 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %5, align 8
  %51 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %41
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.rmi_device_platform_data* @rmi_get_platform_data(%struct.rmi_device*) #1

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.rmi_device*) #1

declare dso_local i32 @dev_driver_string(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
