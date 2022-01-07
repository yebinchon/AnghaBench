; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpiochip_sysfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpiochip_sysfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.gpio_device = type { %struct.device*, %struct.device, %struct.gpio_chip* }
%struct.device = type { i32 }
%struct.gpio_chip = type { i32, %struct.device* }

@gpio_class = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@gpiochip_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gpiochip%d\00", align 1
@sysfs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiochip_sysfs_register(%struct.gpio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  store %struct.gpio_device* %0, %struct.gpio_device** %3, align 8
  %7 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %8 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %7, i32 0, i32 2
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  store %struct.gpio_chip* %9, %struct.gpio_chip** %6, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gpio_class, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 1
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %5, align 8
  br label %25

22:                                               ; preds = %13
  %23 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %24 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %23, i32 0, i32 1
  store %struct.device* %24, %struct.device** %5, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @MKDEV(i32 0, i32 0)
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %29 = load i32, i32* @gpiochip_groups, align 4
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %31 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.device* @device_create_with_groups(%struct.TYPE_3__* @gpio_class, %struct.device* %26, i32 %27, %struct.gpio_chip* %28, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %32)
  store %struct.device* %33, %struct.device** %4, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i64 @IS_ERR(%struct.device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @PTR_ERR(%struct.device* %38)
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %25
  %41 = call i32 @mutex_lock(i32* @sysfs_lock)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %44 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %43, i32 0, i32 0
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = call i32 @mutex_unlock(i32* @sysfs_lock)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %37, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.device* @device_create_with_groups(%struct.TYPE_3__*, %struct.device*, i32, %struct.gpio_chip*, i32, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
