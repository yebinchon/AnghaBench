; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32, i32*, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.device* }
%struct.adxl372_state = type { i32, %struct.TYPE_10__*, %struct.regmap*, %struct.device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@adxl372_channels = common dso_local global i32 0, align 4
@adxl372_channel_masks = common dso_local global i32 0, align 4
@adxl372_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ADXL372 setup failed\0A\00", align 1
@adxl372_trigger_handler = common dso_local global i32 0, align 4
@adxl372_buffer_ops = common dso_local global i32 0, align 4
@adxl372_fifo_attributes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@adxl372_trigger_ops = common dso_local global i32 0, align 4
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adxl372_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.adxl372_state*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %13, i32 32)
  store %struct.iio_dev* %14, %struct.iio_dev** %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %16 = icmp ne %struct.iio_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %160

20:                                               ; preds = %4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %22 = call %struct.adxl372_state* @iio_priv(%struct.iio_dev* %21)
  store %struct.adxl372_state* %22, %struct.adxl372_state** %11, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.iio_dev* %24)
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %28 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %27, i32 0, i32 3
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %31 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %30, i32 0, i32 2
  store %struct.regmap* %29, %struct.regmap** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %34 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @adxl372_channels, align 4
  %36 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @adxl372_channels, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @adxl372_channel_masks, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store %struct.device* %45, %struct.device** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 5
  store i32* @adxl372_info, i32** %53, align 8
  %54 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %55 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %60 = call i32 @adxl372_setup(%struct.adxl372_state* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %20
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %160

67:                                               ; preds = %20
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %70 = load i32, i32* @adxl372_trigger_handler, align 4
  %71 = call i32 @devm_iio_triggered_buffer_setup(%struct.device* %68, %struct.iio_dev* %69, i32* null, i32 %70, i32* @adxl372_buffer_ops)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %160

76:                                               ; preds = %67
  %77 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @adxl372_fifo_attributes, align 4
  %81 = call i32 @iio_buffer_set_attrs(i32 %79, i32 %80)
  %82 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %83 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %156

86:                                               ; preds = %76
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.TYPE_10__* @devm_iio_trigger_alloc(%struct.device* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %90, i32 %93)
  %95 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %96 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %95, i32 0, i32 1
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %96, align 8
  %97 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %98 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = icmp eq %struct.TYPE_10__* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %160

104:                                              ; preds = %86
  %105 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %106 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32* @adxl372_trigger_ops, i32** %108, align 8
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %111 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store %struct.device* %109, %struct.device** %114, align 8
  %115 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %116 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %119 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_10__* %117, %struct.iio_dev* %118)
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %122 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = call i32 @devm_iio_trigger_register(%struct.device* %120, %struct.TYPE_10__* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %104
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %5, align 4
  br label %160

129:                                              ; preds = %104
  %130 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %131 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = call i32 @iio_trigger_get(%struct.TYPE_10__* %132)
  %134 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %135 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %138 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @iio_trigger_generic_data_rdy_poll, align 4
  %141 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %142 = load i32, i32* @IRQF_ONESHOT, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %145 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.adxl372_state*, %struct.adxl372_state** %11, align 8
  %148 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = call i32 @devm_request_threaded_irq(%struct.device* %136, i32 %139, i32 %140, i32* null, i32 %143, i8* %146, %struct.TYPE_10__* %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %129
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %5, align 4
  br label %160

155:                                              ; preds = %129
  br label %156

156:                                              ; preds = %155, %76
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %159 = call i32 @devm_iio_device_register(%struct.device* %157, %struct.iio_dev* %158)
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %156, %153, %127, %101, %74, %63, %17
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.adxl372_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @adxl372_setup(%struct.adxl372_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.device*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_buffer_set_attrs(i32, i32) #1

declare dso_local %struct.TYPE_10__* @devm_iio_trigger_alloc(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_10__*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.device*, %struct.TYPE_10__*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32*, i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
