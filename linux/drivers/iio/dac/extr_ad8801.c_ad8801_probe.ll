; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad8801.c_ad8801_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad8801.c_ad8801_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ad8801_state = type { i32, i32, i32*, i32*, %struct.spi_device* }
%struct.spi_device_id = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vrefh\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Vrefh regulator not specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to enable vrefh regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to read vrefh regulator: %d\0A\00", align 1
@ID_AD8803 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"vrefl\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Vrefl regulator not specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Failed to enable vrefl regulator: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to read vrefl regulator: %d\0A\00", align 1
@ad8801_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad8801_channels = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to register iio device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad8801_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad8801_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ad8801_state*, align 8
  %6 = alloca %struct.spi_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 32)
  store %struct.iio_dev* %10, %struct.iio_dev** %4, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = icmp eq %struct.iio_dev* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %185

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %18 = call %struct.ad8801_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad8801_state* %18, %struct.ad8801_state** %5, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %21 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %20, i32 0, i32 4
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %22)
  store %struct.spi_device_id* %23, %struct.spi_device_id** %6, align 8
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = call i8* @devm_regulator_get(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %29 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %31 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %16
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %40 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %2, align 4
  br label %185

43:                                               ; preds = %16
  %44 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %45 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @regulator_enable(i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %185

56:                                               ; preds = %43
  %57 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %58 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @regulator_get_voltage(i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %179

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = sdiv i32 %69, 1000
  %71 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %72 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %74 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ID_AD8803, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %127

78:                                               ; preds = %68
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = call i8* @devm_regulator_get(i32* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %84 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  %85 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %86 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @IS_ERR(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 0
  %93 = call i32 (i32*, i8*, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %95 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @PTR_ERR(i32* %96)
  store i32 %97, i32* %7, align 4
  br label %179

98:                                               ; preds = %78
  %99 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %100 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @regulator_enable(i32* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %107 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %106, i32 0, i32 0
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  br label %179

110:                                              ; preds = %98
  %111 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %112 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @regulator_get_voltage(i32* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %118, i32 0, i32 0
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  br label %168

122:                                              ; preds = %110
  %123 = load i32, i32* %7, align 4
  %124 = sdiv i32 %123, 1000
  %125 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %126 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %132

127:                                              ; preds = %68
  %128 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %129 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %131 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %134 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %135 = call i32 @spi_set_drvdata(%struct.spi_device* %133, %struct.iio_dev* %134)
  %136 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %137 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %136, i32 0, i32 0
  %138 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %139 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32* %137, i32** %140, align 8
  %141 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %142 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %141, i32 0, i32 4
  store i32* @ad8801_info, i32** %142, align 8
  %143 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %144 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %145 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @ad8801_channels, align 4
  %147 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %148 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @ad8801_channels, align 4
  %150 = call i32 @ARRAY_SIZE(i32 %149)
  %151 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %152 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %154 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %157 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %159 = call i32 @iio_device_register(%struct.iio_dev* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %132
  %163 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %164 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %163, i32 0, i32 0
  %165 = load i32, i32* %7, align 4
  %166 = call i32 (i32*, i8*, ...) @dev_err(i32* %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  br label %168

167:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %185

168:                                              ; preds = %162, %117
  %169 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %170 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %175 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @regulator_disable(i32* %176)
  br label %178

178:                                              ; preds = %173, %168
  br label %179

179:                                              ; preds = %178, %105, %90, %63
  %180 = load %struct.ad8801_state*, %struct.ad8801_state** %5, align 8
  %181 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @regulator_disable(i32* %182)
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %179, %167, %50, %35, %13
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad8801_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
