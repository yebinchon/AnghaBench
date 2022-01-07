; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31722.c_max31722_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31722.c_max31722_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.max31722_data = type { i32, i32, %struct.spi_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX31722_MODE_CONTINUOUS = common dso_local global i32 0, align 4
@MAX31722_RESOLUTION_12BIT = common dso_local global i32 0, align 4
@max31722_groups = common dso_local global i32 0, align 4
@MAX31722_MODE_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max31722_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31722_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max31722_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.max31722_data* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.max31722_data* %9, %struct.max31722_data** %5, align 8
  %10 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %11 = icmp ne %struct.max31722_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.max31722_data* %17)
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %21 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %20, i32 0, i32 2
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load i32, i32* @MAX31722_MODE_CONTINUOUS, align 4
  %23 = load i32, i32* @MAX31722_RESOLUTION_12BIT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %26 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %28 = load i32, i32* @MAX31722_MODE_CONTINUOUS, align 4
  %29 = call i32 @max31722_set_mode(%struct.max31722_data* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %15
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 1
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %41 = load i32, i32* @max31722_groups, align 4
  %42 = call i32 @hwmon_device_register_with_groups(i32* %36, i32 %39, %struct.max31722_data* %40, i32 %41)
  %43 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %44 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %46 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %34
  %51 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %52 = load i32, i32* @MAX31722_MODE_STANDBY, align 4
  %53 = call i32 @max31722_set_mode(%struct.max31722_data* %51, i32 %52)
  %54 = load %struct.max31722_data*, %struct.max31722_data** %5, align 8
  %55 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %50, %32, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.max31722_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.max31722_data*) #1

declare dso_local i32 @max31722_set_mode(%struct.max31722_data*, i32) #1

declare dso_local i32 @hwmon_device_register_with_groups(i32*, i32, %struct.max31722_data*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
