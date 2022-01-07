; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rmi_device_platform_data = type { i32 }
%struct.rmi_driver_data = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to disable irq for wake: %d\0A\00", align 1
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmi_enable_irq(%struct.rmi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rmi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmi_device_platform_data*, align 8
  %6 = alloca %struct.rmi_driver_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rmi_device* %0, %struct.rmi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %11 = call %struct.rmi_device_platform_data* @rmi_get_platform_data(%struct.rmi_device* %10)
  store %struct.rmi_device_platform_data* %11, %struct.rmi_device_platform_data** %5, align 8
  %12 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %13 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %12, i32 0, i32 0
  %14 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %13)
  store %struct.rmi_driver_data* %14, %struct.rmi_driver_data** %6, align 8
  %15 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %19 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %22 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %65

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @enable_irq(i32 %27)
  %29 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %30 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %35 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @device_may_wakeup(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @disable_irq_wake(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %48 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %33, %26
  %53 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %54 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @irq_get_trigger_type(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %63 = call i32 @rmi_process_interrupt_requests(%struct.rmi_device* %62)
  br label %64

64:                                               ; preds = %61, %52
  br label %65

65:                                               ; preds = %64, %25
  %66 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %67 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  ret void
}

declare dso_local %struct.rmi_device_platform_data* @rmi_get_platform_data(%struct.rmi_device*) #1

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i64 @device_may_wakeup(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @rmi_process_interrupt_requests(%struct.rmi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
