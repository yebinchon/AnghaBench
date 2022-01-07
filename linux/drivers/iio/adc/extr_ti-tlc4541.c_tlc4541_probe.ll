; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-tlc4541.c_tlc4541_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-tlc4541.c_tlc4541_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlc4541_chip_info = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.tlc4541_state = type { i32, %struct.TYPE_5__*, i32, i32*, %struct.spi_device* }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@tlc4541_chip_info = common dso_local global %struct.tlc4541_chip_info* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@tlc4541_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@tlc4541_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tlc4541_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlc4541_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tlc4541_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.tlc4541_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 40)
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = icmp eq %struct.iio_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %145

17:                                               ; preds = %1
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = call %struct.tlc4541_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.tlc4541_state* %19, %struct.tlc4541_state** %4, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %22 = call i32 @spi_set_drvdata(%struct.spi_device* %20, %struct.iio_dev* %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %25 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %24, i32 0, i32 4
  store %struct.spi_device* %23, %struct.spi_device** %25, align 8
  %26 = load %struct.tlc4541_chip_info*, %struct.tlc4541_chip_info** @tlc4541_chip_info, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.tlc4541_chip_info, %struct.tlc4541_chip_info* %26, i64 %30
  store %struct.tlc4541_chip_info* %31, %struct.tlc4541_chip_info** %6, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tlc4541_chip_info*, %struct.tlc4541_chip_info** %6, align 8
  %47 = getelementptr inbounds %struct.tlc4541_chip_info, %struct.tlc4541_chip_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tlc4541_chip_info*, %struct.tlc4541_chip_info** %6, align 8
  %52 = getelementptr inbounds %struct.tlc4541_chip_info, %struct.tlc4541_chip_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 0
  store i32* @tlc4541_info, i32** %57, align 8
  %58 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %59 = call i32 @spi_write(%struct.spi_device* %58, i32* %8, i32 1)
  %60 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %61 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %65 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32* %63, i32** %68, align 8
  %69 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %70 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 3, i32* %73, align 8
  %74 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %75 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 3, i32* %78, align 4
  %79 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %80 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %84 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i32* %82, i32** %87, align 8
  %88 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %89 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 2, i32* %92, align 8
  %93 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %94 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %93, i32 0, i32 2
  %95 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %96 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = call i32 @spi_message_init_with_transfers(i32* %94, %struct.TYPE_5__* %97, i32 3)
  %99 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %100 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %99, i32 0, i32 0
  %101 = call i32 @devm_regulator_get(i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %103 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %105 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @IS_ERR(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %17
  %110 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %111 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @PTR_ERR(i32 %112)
  store i32 %113, i32* %2, align 4
  br label %145

114:                                              ; preds = %17
  %115 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %116 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @regulator_enable(i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %145

123:                                              ; preds = %114
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %124, i32* null, i32* @tlc4541_trigger_handler, i32* null)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %139

129:                                              ; preds = %123
  %130 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %131 = call i32 @iio_device_register(%struct.iio_dev* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %136

135:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %145

136:                                              ; preds = %134
  %137 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %138 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %137)
  br label %139

139:                                              ; preds = %136, %128
  %140 = load %struct.tlc4541_state*, %struct.tlc4541_state** %4, align 8
  %141 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @regulator_disable(i32 %142)
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %135, %121, %109, %14
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.tlc4541_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @spi_message_init_with_transfers(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
