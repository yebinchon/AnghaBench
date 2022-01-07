; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp41010.c_mcp41010_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp41010.c_mcp41010_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mcp41010_data = type { %struct.TYPE_7__*, i32, %struct.spi_device* }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.TYPE_6__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@mcp41010_cfg = common dso_local global %struct.TYPE_7__* null, align 8
@mcp41010_info = common dso_local global i32 0, align 4
@mcp41010_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mcp41010_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp41010_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mcp41010_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %10, i32 24)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.mcp41010_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.mcp41010_data* %19, %struct.mcp41010_data** %6, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @spi_set_drvdata(%struct.spi_device* %20, %struct.iio_dev* %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = load %struct.mcp41010_data*, %struct.mcp41010_data** %6, align 8
  %25 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %24, i32 0, i32 2
  store %struct.spi_device* %23, %struct.spi_device** %25, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = call %struct.TYPE_7__* @of_device_get_match_data(%struct.device* %27)
  %29 = load %struct.mcp41010_data*, %struct.mcp41010_data** %6, align 8
  %30 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %29, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.mcp41010_data*, %struct.mcp41010_data** %6, align 8
  %32 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %17
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mcp41010_cfg, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %40
  %42 = load %struct.mcp41010_data*, %struct.mcp41010_data** %6, align 8
  %43 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %42, i32 0, i32 0
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %43, align 8
  br label %44

44:                                               ; preds = %35, %17
  %45 = load %struct.mcp41010_data*, %struct.mcp41010_data** %6, align 8
  %46 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store %struct.device* %48, %struct.device** %51, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32* @mcp41010_info, i32** %53, align 8
  %54 = load i32, i32* @mcp41010_channels, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mcp41010_data*, %struct.mcp41010_data** %6, align 8
  %58 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mcp41010_data*, %struct.mcp41010_data** %6, align 8
  %65 = getelementptr inbounds %struct.mcp41010_data, %struct.mcp41010_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = call i32 @devm_iio_device_register(%struct.device* %71, %struct.iio_dev* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %44
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 0
  %79 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_info(%struct.device* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %76, %44
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.mcp41010_data* @iio_priv(%struct.iio_dev*) #1

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
