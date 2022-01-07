; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.sx9500_data = type { %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@acpi_sx9500_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to add GPIO mapping table\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"gpio get irq failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"gpio get reset pin failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.sx9500_data*)* @sx9500_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx9500_gpio_probe(%struct.i2c_client* %0, %struct.sx9500_data* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.sx9500_data*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.sx9500_data* %1, %struct.sx9500_data** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = icmp ne %struct.i2c_client* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %61

11:                                               ; preds = %2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load i32, i32* @acpi_sx9500_gpios, align 4
  %16 = call i32 @devm_acpi_dev_add_driver_gpios(%struct.device* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* @GPIOD_IN, align 4
  %30 = call i8* @devm_gpiod_get(%struct.device* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = bitcast i8* %30 to %struct.gpio_desc*
  store %struct.gpio_desc* %31, %struct.gpio_desc** %5, align 8
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %33 = call i64 @IS_ERR(%struct.gpio_desc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %43

38:                                               ; preds = %27
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %40 = call i32 @gpiod_to_irq(%struct.gpio_desc* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %47 = call i8* @devm_gpiod_get(%struct.device* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = bitcast i8* %47 to %struct.gpio_desc*
  %49 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %50 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %49, i32 0, i32 0
  store %struct.gpio_desc* %48, %struct.gpio_desc** %50, align 8
  %51 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %52 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %51, i32 0, i32 0
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %52, align 8
  %54 = call i64 @IS_ERR(%struct.gpio_desc* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 @dev_warn(%struct.device* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %60 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %59, i32 0, i32 0
  store %struct.gpio_desc* null, %struct.gpio_desc** %60, align 8
  br label %61

61:                                               ; preds = %10, %56, %44
  ret void
}

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(%struct.device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
