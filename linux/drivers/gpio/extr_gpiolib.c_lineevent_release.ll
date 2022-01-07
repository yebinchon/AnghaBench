; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_lineevent_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_lineevent_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.lineevent_state* }
%struct.lineevent_state = type { %struct.lineevent_state*, i32, i32, %struct.gpio_device* }
%struct.gpio_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @lineevent_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lineevent_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.lineevent_state*, align 8
  %6 = alloca %struct.gpio_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.lineevent_state*, %struct.lineevent_state** %8, align 8
  store %struct.lineevent_state* %9, %struct.lineevent_state** %5, align 8
  %10 = load %struct.lineevent_state*, %struct.lineevent_state** %5, align 8
  %11 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %10, i32 0, i32 3
  %12 = load %struct.gpio_device*, %struct.gpio_device** %11, align 8
  store %struct.gpio_device* %12, %struct.gpio_device** %6, align 8
  %13 = load %struct.lineevent_state*, %struct.lineevent_state** %5, align 8
  %14 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lineevent_state*, %struct.lineevent_state** %5, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.lineevent_state* %16)
  %18 = load %struct.lineevent_state*, %struct.lineevent_state** %5, align 8
  %19 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @gpiod_free(i32 %20)
  %22 = load %struct.lineevent_state*, %struct.lineevent_state** %5, align 8
  %23 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %22, i32 0, i32 0
  %24 = load %struct.lineevent_state*, %struct.lineevent_state** %23, align 8
  %25 = call i32 @kfree(%struct.lineevent_state* %24)
  %26 = load %struct.lineevent_state*, %struct.lineevent_state** %5, align 8
  %27 = call i32 @kfree(%struct.lineevent_state* %26)
  %28 = load %struct.gpio_device*, %struct.gpio_device** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %28, i32 0, i32 0
  %30 = call i32 @put_device(i32* %29)
  ret i32 0
}

declare dso_local i32 @free_irq(i32, %struct.lineevent_state*) #1

declare dso_local i32 @gpiod_free(i32) #1

declare dso_local i32 @kfree(%struct.lineevent_state*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
