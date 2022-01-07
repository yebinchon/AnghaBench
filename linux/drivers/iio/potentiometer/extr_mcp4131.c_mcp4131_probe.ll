; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4131.c_mcp4131_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4131.c_mcp4131_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mcp4131_data = type { %struct.TYPE_7__*, i32, %struct.spi_device* }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.TYPE_6__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@mcp4131_cfg = common dso_local global %struct.TYPE_7__* null, align 8
@mcp4131_info = common dso_local global i32 0, align 4
@mcp4131_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mcp4131_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4131_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mcp4131_data*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 24)
  store %struct.iio_dev* %12, %struct.iio_dev** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %86

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %20 = call %struct.mcp4131_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.mcp4131_data* %20, %struct.mcp4131_data** %7, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %23 = call i32 @spi_set_drvdata(%struct.spi_device* %21, %struct.iio_dev* %22)
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.mcp4131_data*, %struct.mcp4131_data** %7, align 8
  %26 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %25, i32 0, i32 2
  store %struct.spi_device* %24, %struct.spi_device** %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = call %struct.TYPE_7__* @of_device_get_match_data(%struct.device* %28)
  %30 = load %struct.mcp4131_data*, %struct.mcp4131_data** %7, align 8
  %31 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %30, i32 0, i32 0
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %31, align 8
  %32 = load %struct.mcp4131_data*, %struct.mcp4131_data** %7, align 8
  %33 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %18
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mcp4131_cfg, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %42
  %44 = load %struct.mcp4131_data*, %struct.mcp4131_data** %7, align 8
  %45 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %44, i32 0, i32 0
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %45, align 8
  br label %46

46:                                               ; preds = %36, %18
  %47 = load %struct.mcp4131_data*, %struct.mcp4131_data** %7, align 8
  %48 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.device* %50, %struct.device** %53, align 8
  %54 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 3
  store i32* @mcp4131_info, i32** %55, align 8
  %56 = load i32, i32* @mcp4131_channels, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.mcp4131_data*, %struct.mcp4131_data** %7, align 8
  %60 = getelementptr inbounds %struct.mcp4131_data, %struct.mcp4131_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %74 = call i32 @devm_iio_device_register(%struct.device* %72, %struct.iio_dev* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %46
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_info(%struct.device* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %77, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.mcp4131_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_7__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
