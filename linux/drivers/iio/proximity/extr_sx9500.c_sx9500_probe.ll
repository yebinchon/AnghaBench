; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.sx9500_data = type { i32, %struct.TYPE_9__*, i32, i32, i32, %struct.i2c_client* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@sx9500_regmap_config = common dso_local global i32 0, align 4
@SX9500_DRIVER_NAME = common dso_local global i32 0, align 4
@sx9500_channels = common dso_local global i32 0, align 4
@sx9500_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no valid irq found\0A\00", align 1
@sx9500_irq_handler = common dso_local global i32 0, align 4
@sx9500_irq_thread_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@SX9500_IRQ_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@sx9500_trigger_ops = common dso_local global i32 0, align 4
@sx9500_trigger_handler = common dso_local global i32 0, align 4
@sx9500_buffer_setup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sx9500_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.sx9500_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 40)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp eq %struct.iio_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %179

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.sx9500_data* %19, %struct.sx9500_data** %8, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %22 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %21, i32 0, i32 5
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %24 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %23, i32 0, i32 4
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %27 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %26, i32 0, i32 3
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %30 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @sx9500_regmap_config)
  %33 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %34 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %36 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %17
  %41 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %42 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %179

45:                                               ; preds = %17
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load i32, i32* @SX9500_DRIVER_NAME, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @sx9500_channels, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @sx9500_channels, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 3
  store i32* @sx9500_info, i32** %62, align 8
  %63 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %68 = call i32 @i2c_set_clientdata(%struct.i2c_client* %66, %struct.iio_dev* %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %71 = call i32 @sx9500_gpio_probe(%struct.i2c_client* %69, %struct.sx9500_data* %70)
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = call i32 @sx9500_init_device(%struct.iio_dev* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %45
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %179

78:                                               ; preds = %45
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 1
  %86 = call i32 @dev_warn(i32* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %150

87:                                               ; preds = %78
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 1
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @sx9500_irq_handler, align 4
  %94 = load i32, i32* @sx9500_irq_thread_handler, align 4
  %95 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %96 = load i32, i32* @IRQF_ONESHOT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SX9500_IRQ_NAME, align 4
  %99 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %100 = call i32 @devm_request_threaded_irq(i32* %89, i64 %92, i32 %93, i32 %94, i32 %97, i32 %98, %struct.iio_dev* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %179

105:                                              ; preds = %87
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 1
  %108 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %112 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.TYPE_9__* @devm_iio_trigger_alloc(i32* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %113)
  %115 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %116 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %115, i32 0, i32 1
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %116, align 8
  %117 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %118 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %105
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %179

124:                                              ; preds = %105
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 1
  %127 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %128 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32* %126, i32** %131, align 8
  %132 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %133 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32* @sx9500_trigger_ops, i32** %135, align 8
  %136 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %137 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %140 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_9__* %138, %struct.iio_dev* %139)
  %141 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %142 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %141, i32 0, i32 1
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = call i32 @iio_trigger_register(%struct.TYPE_9__* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %124
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %3, align 4
  br label %179

149:                                              ; preds = %124
  br label %150

150:                                              ; preds = %149, %83
  %151 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %152 = load i32, i32* @sx9500_trigger_handler, align 4
  %153 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %151, i32* null, i32 %152, i32* @sx9500_buffer_setup_ops)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %167

157:                                              ; preds = %150
  %158 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %159 = call i32 @iio_device_register(%struct.iio_dev* %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %164

163:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %179

164:                                              ; preds = %162
  %165 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %166 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %165)
  br label %167

167:                                              ; preds = %164, %156
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.sx9500_data*, %struct.sx9500_data** %8, align 8
  %174 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = call i32 @iio_trigger_unregister(%struct.TYPE_9__* %175)
  br label %177

177:                                              ; preds = %172, %167
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %163, %147, %121, %103, %76, %40, %14
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @sx9500_gpio_probe(%struct.i2c_client*, %struct.sx9500_data*) #1

declare dso_local i32 @sx9500_init_device(%struct.iio_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_9__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_9__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_9__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
