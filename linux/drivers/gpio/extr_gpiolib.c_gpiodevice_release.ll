; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiodevice_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiodevice_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpio_device = type { %struct.gpio_device*, i32, i32, i32 }

@gpio_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @gpiodevice_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiodevice_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gpio_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.gpio_device* @dev_get_drvdata(%struct.device* %4)
  store %struct.gpio_device* %5, %struct.gpio_device** %3, align 8
  %6 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %6, i32 0, i32 3
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %10 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ida_simple_remove(i32* @gpio_ida, i32 %11)
  %13 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @kfree_const(i32 %15)
  %17 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %18 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %17, i32 0, i32 0
  %19 = load %struct.gpio_device*, %struct.gpio_device** %18, align 8
  %20 = call i32 @kfree(%struct.gpio_device* %19)
  %21 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %22 = call i32 @kfree(%struct.gpio_device* %21)
  ret void
}

declare dso_local %struct.gpio_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @kfree(%struct.gpio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
