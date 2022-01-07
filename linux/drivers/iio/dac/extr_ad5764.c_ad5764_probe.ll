; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5764.c_ad5764_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5764.c_ad5764_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.ad5764_state = type { %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.spi_device* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ad5764_chip_infos = common dso_local global %struct.TYPE_11__* null, align 8
@ad5764_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD5764_NUM_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vrefAB\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vrefCD\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to request vref regulators: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to enable vref regulators: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to register iio device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5764_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5764_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad5764_state*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %13, i32 24)
  store %struct.iio_dev* %14, %struct.iio_dev** %5, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %16 = icmp eq %struct.iio_dev* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %148

23:                                               ; preds = %1
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = call %struct.ad5764_state* @iio_priv(%struct.iio_dev* %24)
  store %struct.ad5764_state* %25, %struct.ad5764_state** %6, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %28 = call i32 @spi_set_drvdata(%struct.spi_device* %26, %struct.iio_dev* %27)
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %31 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %30, i32 0, i32 2
  store %struct.spi_device* %29, %struct.spi_device** %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ad5764_chip_infos, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %34
  %36 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %37 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %36, i32 0, i32 1
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %37, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 3
  store i32* @ad5764_info, i32** %50, align 8
  %51 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @AD5764_NUM_CHANNELS, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %58 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %65 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %119

70:                                               ; preds = %23
  %71 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %72 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %75, align 8
  %76 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %77 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %80, align 8
  %81 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %82 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %81, i32 0, i32 2
  %83 = load %struct.spi_device*, %struct.spi_device** %82, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 0
  %85 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %86 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %87)
  %89 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %90 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @devm_regulator_bulk_get(i32* %84, i32 %88, %struct.TYPE_10__* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %70
  %96 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 0
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %148

101:                                              ; preds = %70
  %102 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %103 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %104)
  %106 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %107 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @regulator_bulk_enable(i32 %105, %struct.TYPE_10__* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %101
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 0
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %148

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %23
  %120 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %121 = call i32 @iio_device_register(%struct.iio_dev* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %125, i32 0, i32 0
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  br label %130

129:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %148

130:                                              ; preds = %124
  %131 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %132 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %139 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %140)
  %142 = load %struct.ad5764_state*, %struct.ad5764_state** %6, align 8
  %143 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = call i32 @regulator_bulk_disable(i32 %141, %struct.TYPE_10__* %144)
  br label %146

146:                                              ; preds = %137, %130
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %129, %112, %95, %17
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.ad5764_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
