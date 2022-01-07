; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.ad5360_state = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.spi_device* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ad5360_chip_info_tbl = common dso_local global %struct.TYPE_10__* null, align 8
@ad5360_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate channel spec: %d\0A\00", align 1
@ad5360_vref_name = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to request vref regulators: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to enable vref regulators: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register iio device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5360_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5360_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad5360_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %14, i32 24)
  store %struct.iio_dev* %15, %struct.iio_dev** %5, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = icmp eq %struct.iio_dev* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %162

24:                                               ; preds = %1
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = call %struct.ad5360_state* @iio_priv(%struct.iio_dev* %25)
  store %struct.ad5360_state* %26, %struct.ad5360_state** %6, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = call i32 @spi_set_drvdata(%struct.spi_device* %27, %struct.iio_dev* %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ad5360_chip_info_tbl, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %35 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %34, i32 0, i32 1
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %38 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %37, i32 0, i32 2
  store %struct.spi_device* %36, %struct.spi_device** %38, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 3
  store i32* @ad5360_info, i32** %51, align 8
  %52 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %56 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = call i32 @ad5360_alloc_channels(%struct.iio_dev* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %24
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 0
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %162

72:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %94, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %76 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ult i32 %74, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %73
  %82 = load i32*, i32** @ad5360_vref_name, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %88 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 4
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %73

97:                                               ; preds = %73
  %98 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %99 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %98, i32 0, i32 2
  %100 = load %struct.spi_device*, %struct.spi_device** %99, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 0
  %102 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %103 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %108 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = call i32 @devm_regulator_bulk_get(i32* %101, i32 %106, %struct.TYPE_9__* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %97
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %114, i32 0, i32 0
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %156

118:                                              ; preds = %97
  %119 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %120 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %119, i32 0, i32 1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %125 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = call i32 @regulator_bulk_enable(i32 %123, %struct.TYPE_9__* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %118
  %131 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %132 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %131, i32 0, i32 0
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %156

135:                                              ; preds = %118
  %136 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %137 = call i32 @iio_device_register(%struct.iio_dev* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 0
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %146

145:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %162

146:                                              ; preds = %140
  %147 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %148 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ad5360_state*, %struct.ad5360_state** %6, align 8
  %153 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 @regulator_bulk_disable(i32 %151, %struct.TYPE_9__* %154)
  br label %156

156:                                              ; preds = %146, %130, %113
  %157 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %158 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @kfree(i32 %159)
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %156, %145, %66, %18
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.ad5360_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ad5360_alloc_channels(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
