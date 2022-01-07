; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_spi.c_bme680_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_spi.c_bme680_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_device_id = type { i32 }
%struct.bme680_spi_bus_context = type { i32, %struct.spi_device* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"spi_setup failed!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bme680_regmap_bus = common dso_local global i32 0, align 4
@bme680_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to register spi regmap %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @bme680_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.bme680_spi_bus_context*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  store i32 8, i32* %11, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call i32 @spi_setup(%struct.spi_device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.bme680_spi_bus_context* @devm_kzalloc(i32* %23, i32 16, i32 %24)
  store %struct.bme680_spi_bus_context* %25, %struct.bme680_spi_bus_context** %5, align 8
  %26 = load %struct.bme680_spi_bus_context*, %struct.bme680_spi_bus_context** %5, align 8
  %27 = icmp ne %struct.bme680_spi_bus_context* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %60

31:                                               ; preds = %21
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = load %struct.bme680_spi_bus_context*, %struct.bme680_spi_bus_context** %5, align 8
  %34 = getelementptr inbounds %struct.bme680_spi_bus_context, %struct.bme680_spi_bus_context* %33, i32 0, i32 1
  store %struct.spi_device* %32, %struct.spi_device** %34, align 8
  %35 = load %struct.bme680_spi_bus_context*, %struct.bme680_spi_bus_context** %5, align 8
  %36 = getelementptr inbounds %struct.bme680_spi_bus_context, %struct.bme680_spi_bus_context* %35, i32 0, i32 0
  store i32 255, i32* %36, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 1
  %39 = load %struct.bme680_spi_bus_context*, %struct.bme680_spi_bus_context** %5, align 8
  %40 = call %struct.regmap* @devm_regmap_init(i32* %38, i32* @bme680_regmap_bus, %struct.bme680_spi_bus_context* %39, i32* @bme680_regmap_config)
  store %struct.regmap* %40, %struct.regmap** %6, align 8
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = call i64 @IS_ERR(%struct.regmap* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 1
  %47 = load %struct.regmap*, %struct.regmap** %6, align 8
  %48 = call i32 @PTR_ERR(%struct.regmap* %47)
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.regmap*, %struct.regmap** %6, align 8
  %51 = call i32 @PTR_ERR(%struct.regmap* %50)
  store i32 %51, i32* %2, align 4
  br label %60

52:                                               ; preds = %31
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 1
  %55 = load %struct.regmap*, %struct.regmap** %6, align 8
  %56 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %57 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bme680_core_probe(i32* %54, %struct.regmap* %55, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %44, %28, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.bme680_spi_bus_context* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init(i32*, i32*, %struct.bme680_spi_bus_context*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @bme680_core_probe(i32*, %struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
