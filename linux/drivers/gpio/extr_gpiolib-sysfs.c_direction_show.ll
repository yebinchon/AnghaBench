; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_direction_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_direction_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gpiod_data = type { i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FLAG_IS_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @direction_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direction_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gpiod_data*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.gpiod_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.gpiod_data* %11, %struct.gpiod_data** %7, align 8
  %12 = load %struct.gpiod_data*, %struct.gpiod_data** %7, align 8
  %13 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %12, i32 0, i32 1
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %14, %struct.gpio_desc** %8, align 8
  %15 = load %struct.gpiod_data*, %struct.gpiod_data** %7, align 8
  %16 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %19 = call i32 @gpiod_get_direction(%struct.gpio_desc* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @FLAG_IS_OUT, align 4
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %23 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.gpiod_data*, %struct.gpiod_data** %7, align 8
  %30 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local %struct.gpiod_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_get_direction(%struct.gpio_desc*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
