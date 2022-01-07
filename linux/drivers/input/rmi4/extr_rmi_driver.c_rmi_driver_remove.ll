; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_driver_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rmi_device = type { i32 }
%struct.rmi_driver_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rmi_driver_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_driver_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.rmi_device*, align 8
  %4 = alloca %struct.rmi_driver_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.rmi_device* @to_rmi_device(%struct.device* %5)
  store %struct.rmi_device* %6, %struct.rmi_device** %3, align 8
  %7 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %8 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %7, i32 0, i32 0
  %9 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %8)
  store %struct.rmi_driver_data* %9, %struct.rmi_driver_data** %4, align 8
  %10 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %11 = call i32 @rmi_disable_irq(%struct.rmi_device* %10, i32 0)
  %12 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %4, align 8
  %13 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @irq_domain_remove(i32* %14)
  %16 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %4, align 8
  %17 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %19 = call i32 @rmi_f34_remove_sysfs(%struct.rmi_device* %18)
  %20 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %21 = call i32 @rmi_free_function_list(%struct.rmi_device* %20)
  ret i32 0
}

declare dso_local %struct.rmi_device* @to_rmi_device(%struct.device*) #1

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_disable_irq(%struct.rmi_device*, i32) #1

declare dso_local i32 @irq_domain_remove(i32*) #1

declare dso_local i32 @rmi_f34_remove_sysfs(%struct.rmi_device*) #1

declare dso_local i32 @rmi_free_function_list(%struct.rmi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
