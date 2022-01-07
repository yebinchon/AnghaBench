; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_add_hogs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_add_hogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiod_hog = type { i64, i32 }
%struct.gpio_chip = type { i32 }

@gpio_machine_hogs_mutex = common dso_local global i32 0, align 4
@gpio_machine_hogs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpiod_add_hogs(%struct.gpiod_hog* %0) #0 {
  %2 = alloca %struct.gpiod_hog*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.gpiod_hog*, align 8
  store %struct.gpiod_hog* %0, %struct.gpiod_hog** %2, align 8
  %5 = call i32 @mutex_lock(i32* @gpio_machine_hogs_mutex)
  %6 = load %struct.gpiod_hog*, %struct.gpiod_hog** %2, align 8
  %7 = getelementptr inbounds %struct.gpiod_hog, %struct.gpiod_hog* %6, i64 0
  store %struct.gpiod_hog* %7, %struct.gpiod_hog** %4, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load %struct.gpiod_hog*, %struct.gpiod_hog** %4, align 8
  %10 = getelementptr inbounds %struct.gpiod_hog, %struct.gpiod_hog* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.gpiod_hog*, %struct.gpiod_hog** %4, align 8
  %15 = getelementptr inbounds %struct.gpiod_hog, %struct.gpiod_hog* %14, i32 0, i32 1
  %16 = call i32 @list_add_tail(i32* %15, i32* @gpio_machine_hogs)
  %17 = load %struct.gpiod_hog*, %struct.gpiod_hog** %4, align 8
  %18 = getelementptr inbounds %struct.gpiod_hog, %struct.gpiod_hog* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.gpio_chip* @find_chip_by_name(i64 %19)
  store %struct.gpio_chip* %20, %struct.gpio_chip** %3, align 8
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %22 = icmp ne %struct.gpio_chip* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %25 = load %struct.gpiod_hog*, %struct.gpiod_hog** %4, align 8
  %26 = call i32 @gpiochip_machine_hog(%struct.gpio_chip* %24, %struct.gpiod_hog* %25)
  br label %27

27:                                               ; preds = %23, %13
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.gpiod_hog*, %struct.gpiod_hog** %4, align 8
  %30 = getelementptr inbounds %struct.gpiod_hog, %struct.gpiod_hog* %29, i32 1
  store %struct.gpiod_hog* %30, %struct.gpiod_hog** %4, align 8
  br label %8

31:                                               ; preds = %8
  %32 = call i32 @mutex_unlock(i32* @gpio_machine_hogs_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.gpio_chip* @find_chip_by_name(i64) #1

declare dso_local i32 @gpiochip_machine_hog(%struct.gpio_chip*, %struct.gpiod_hog*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
