; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpiochip_sysfs_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpiochip_sysfs_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_device = type { %struct.gpio_desc*, i32*, %struct.gpio_chip* }
%struct.gpio_desc = type { i32 }
%struct.gpio_chip = type { i32 }

@sysfs_lock = common dso_local global i32 0, align 4
@FLAG_SYSFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpiochip_sysfs_unregister(%struct.gpio_device* %0) #0 {
  %2 = alloca %struct.gpio_device*, align 8
  %3 = alloca %struct.gpio_desc*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.gpio_device* %0, %struct.gpio_device** %2, align 8
  %6 = load %struct.gpio_device*, %struct.gpio_device** %2, align 8
  %7 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %6, i32 0, i32 2
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  store %struct.gpio_chip* %8, %struct.gpio_chip** %4, align 8
  %9 = load %struct.gpio_device*, %struct.gpio_device** %2, align 8
  %10 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.gpio_device*, %struct.gpio_device** %2, align 8
  %16 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @device_unregister(i32* %17)
  %19 = call i32 @mutex_lock(i32* @sysfs_lock)
  %20 = load %struct.gpio_device*, %struct.gpio_device** %2, align 8
  %21 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = call i32 @mutex_unlock(i32* @sysfs_lock)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %45, %14
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.gpio_device*, %struct.gpio_device** %2, align 8
  %31 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %30, i32 0, i32 0
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %32, i64 %34
  store %struct.gpio_desc* %35, %struct.gpio_desc** %3, align 8
  %36 = load i32, i32* @FLAG_SYSFS, align 4
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %38 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %37, i32 0, i32 0
  %39 = call i64 @test_and_clear_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %43 = call i32 @gpiod_free(%struct.gpio_desc* %42)
  br label %44

44:                                               ; preds = %41, %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %23

48:                                               ; preds = %13, %23
  ret void
}

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @gpiod_free(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
