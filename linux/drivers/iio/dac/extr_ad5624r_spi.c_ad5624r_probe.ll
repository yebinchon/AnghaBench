; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5624r_spi.c_ad5624r_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5624r_spi.c_ad5624r_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.ad5624r_state = type { i32, i32, %struct.TYPE_6__*, %struct.spi_device* }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@ad5624r_chip_info_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@ad5624r_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD5624R_DAC_CHANNELS = common dso_local global i32 0, align 4
@AD5624R_CMD_INTERNAL_REFER_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5624r_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5624r_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad5624r_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 24)
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %136

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call %struct.ad5624r_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad5624r_state* %18, %struct.ad5624r_state** %4, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = call i32 @devm_regulator_get(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %23 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IS_ERR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %16
  %30 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %31 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_enable(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %136

38:                                               ; preds = %29
  %39 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %40 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regulator_get_voltage(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %123

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %16
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = call i32 @spi_set_drvdata(%struct.spi_device* %49, %struct.iio_dev* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ad5624r_chip_info_tbl, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %56
  %58 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %59 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %58, i32 0, i32 2
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load i32, i32* %7, align 4
  %64 = sdiv i32 %63, 1000
  %65 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %66 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %75

67:                                               ; preds = %48
  %68 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %69 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %74 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %78 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %77, i32 0, i32 3
  store %struct.spi_device* %76, %struct.spi_device** %78, align 8
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %82 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %84)
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 3
  store i32* @ad5624r_info, i32** %91, align 8
  %92 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %93 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %94 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %96 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @AD5624R_DAC_CHANNELS, align 4
  %103 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %106 = load i32, i32* @AD5624R_CMD_INTERNAL_REFER_SETUP, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @ad5624r_spi_write(%struct.spi_device* %105, i32 %106, i32 0, i32 %111, i32 16)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %75
  br label %123

116:                                              ; preds = %75
  %117 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %118 = call i32 @iio_device_register(%struct.iio_dev* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %123

122:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %136

123:                                              ; preds = %121, %115, %45
  %124 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %125 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @IS_ERR(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load %struct.ad5624r_state*, %struct.ad5624r_state** %4, align 8
  %131 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @regulator_disable(i32 %132)
  br label %134

134:                                              ; preds = %129, %123
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %122, %36, %13
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad5624r_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad5624r_spi_write(%struct.spi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
