; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4922.c_mcp4922_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4922.c_mcp4922_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.mcp4922_state = type { i32, i32, %struct.spi_device* }
%struct.spi_device_id = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Vref regulator not specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to enable vref regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to read vref regulator: %d\0A\00", align 1
@mcp4922_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mcp4922_channels = common dso_local global i32* null, align 8
@MCP4922_NUM_CHANNELS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register iio device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mcp4922_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4922_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.mcp4922_state*, align 8
  %6 = alloca %struct.spi_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 16)
  store %struct.iio_dev* %10, %struct.iio_dev** %4, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = icmp eq %struct.iio_dev* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %117

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %18 = call %struct.mcp4922_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.mcp4922_state* %18, %struct.mcp4922_state** %5, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.mcp4922_state*, %struct.mcp4922_state** %5, align 8
  %21 = getelementptr inbounds %struct.mcp4922_state, %struct.mcp4922_state* %20, i32 0, i32 2
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = call i32 @devm_regulator_get(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mcp4922_state*, %struct.mcp4922_state** %5, align 8
  %26 = getelementptr inbounds %struct.mcp4922_state, %struct.mcp4922_state* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mcp4922_state*, %struct.mcp4922_state** %5, align 8
  %28 = getelementptr inbounds %struct.mcp4922_state, %struct.mcp4922_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %16
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.mcp4922_state*, %struct.mcp4922_state** %5, align 8
  %37 = getelementptr inbounds %struct.mcp4922_state, %struct.mcp4922_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %117

40:                                               ; preds = %16
  %41 = load %struct.mcp4922_state*, %struct.mcp4922_state** %5, align 8
  %42 = getelementptr inbounds %struct.mcp4922_state, %struct.mcp4922_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regulator_enable(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %117

53:                                               ; preds = %40
  %54 = load %struct.mcp4922_state*, %struct.mcp4922_state** %5, align 8
  %55 = getelementptr inbounds %struct.mcp4922_state, %struct.mcp4922_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regulator_get_voltage(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %111

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = sdiv i32 %66, 1000
  %68 = load %struct.mcp4922_state*, %struct.mcp4922_state** %5, align 8
  %69 = getelementptr inbounds %struct.mcp4922_state, %struct.mcp4922_state* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %71 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %72 = call i32 @spi_set_drvdata(%struct.spi_device* %70, %struct.iio_dev* %71)
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %73)
  store %struct.spi_device_id* %74, %struct.spi_device_id** %6, align 8
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  %80 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 4
  store i32* @mcp4922_info, i32** %81, align 8
  %82 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %83 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** @mcp4922_channels, align 8
  %86 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %87 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @MCP4922_NUM_CHANNELS, align 4
  %94 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %95 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %97 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %102 = call i32 @iio_device_register(%struct.iio_dev* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %65
  %106 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %107 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %106, i32 0, i32 0
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  br label %111

110:                                              ; preds = %65
  store i32 0, i32* %2, align 4
  br label %117

111:                                              ; preds = %105, %60
  %112 = load %struct.mcp4922_state*, %struct.mcp4922_state** %5, align 8
  %113 = getelementptr inbounds %struct.mcp4922_state, %struct.mcp4922_state* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @regulator_disable(i32 %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %110, %47, %32, %13
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.mcp4922_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
