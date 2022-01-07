; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_find_spi_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_find_spi_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@CONFIG_SPI_MASTER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"spi-gpio\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.device*, i8*, i32*)* @of_find_spi_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @of_find_spi_gpio(%struct.device* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.gpio_desc*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %9, align 8
  %14 = load i32, i32* @CONFIG_SPI_MASTER, align 4
  %15 = call i32 @IS_ENABLED(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.gpio_desc* @ERR_PTR(i32 %19)
  store %struct.gpio_desc* %20, %struct.gpio_desc** %4, align 8
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.device_node*, %struct.device_node** %9, align 8
  %23 = call i32 @of_device_is_compatible(%struct.device_node* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.gpio_desc* @ERR_PTR(i32 %30)
  store %struct.gpio_desc* %31, %struct.gpio_desc** %4, align 8
  br label %41

32:                                               ; preds = %25
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @snprintf(i8* %33, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %38 = load i32*, i32** %7, align 8
  %39 = call %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %36, i8* %37, i32 0, i32* %38)
  store %struct.gpio_desc* %39, %struct.gpio_desc** %10, align 8
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %40, %struct.gpio_desc** %4, align 8
  br label %41

41:                                               ; preds = %32, %28, %17
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  ret %struct.gpio_desc* %42
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
