; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_find_spi_cs_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_find_spi_cs_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@CONFIG_SPI_MASTER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fsl,spi\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"aeroflexgaisler,spictrl\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.device*, i8*, i32, i64*)* @of_find_spi_cs_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @of_find_spi_cs_gpio(%struct.device* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %10, align 8
  %14 = load i32, i32* @CONFIG_SPI_MASTER, align 4
  %15 = call i32 @IS_ENABLED(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.gpio_desc* @ERR_PTR(i32 %19)
  store %struct.gpio_desc* %20, %struct.gpio_desc** %5, align 8
  br label %49

21:                                               ; preds = %4
  %22 = load %struct.device_node*, %struct.device_node** %10, align 8
  %23 = call i32 @of_device_is_compatible(%struct.device_node* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load %struct.device_node*, %struct.device_node** %10, align 8
  %27 = call i32 @of_device_is_compatible(%struct.device_node* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.gpio_desc* @ERR_PTR(i32 %31)
  store %struct.gpio_desc* %32, %struct.gpio_desc** %5, align 8
  br label %49

33:                                               ; preds = %25, %21
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.gpio_desc* @ERR_PTR(i32 %42)
  store %struct.gpio_desc* %43, %struct.gpio_desc** %5, align 8
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i64*, i64** %9, align 8
  %48 = call %struct.gpio_desc* @of_find_gpio(%struct.device* %45, i32* null, i32 %46, i64* %47)
  store %struct.gpio_desc* %48, %struct.gpio_desc** %5, align 8
  br label %49

49:                                               ; preds = %44, %40, %29, %17
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  ret %struct.gpio_desc* %50
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.gpio_desc* @of_find_gpio(%struct.device*, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
