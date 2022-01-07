; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.tiadc_device = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Could not find valid DT data.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@tiadc_info = common dso_local global i32 0, align 4
@REG_FIFO1THR = common dso_local global i32 0, align 4
@FIFO1_THRESHOLD = common dso_local global i32 0, align 4
@tiadc_worker_h = common dso_local global i32 0, align 4
@tiadc_irq_h = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@tiadc_buffer_setup_ops = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tiadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.tiadc_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %119

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__* %22, i32 16)
  store %struct.iio_dev* %23, %struct.iio_dev** %4, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %25 = icmp eq %struct.iio_dev* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_8__* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %119

32:                                               ; preds = %20
  %33 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %34 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %33)
  store %struct.tiadc_device* %34, %struct.tiadc_device** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call %struct.TYPE_7__* @ti_tscadc_dev_get(%struct.platform_device* %35)
  %37 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %38 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %37, i32 0, i32 0
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %41 = call i32 @tiadc_parse_dt(%struct.platform_device* %39, %struct.tiadc_device* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_name(%struct.TYPE_8__* %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 0
  store i32* @tiadc_info, i32** %56, align 8
  %57 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %58 = call i32 @tiadc_step_config(%struct.iio_dev* %57)
  %59 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %60 = load i32, i32* @REG_FIFO1THR, align 4
  %61 = load i32, i32* @FIFO1_THRESHOLD, align 4
  %62 = call i32 @tiadc_writel(%struct.tiadc_device* %59, i32 %60, i32 %61)
  %63 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %64 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %63, i32 0, i32 2
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %67 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %68 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @tiadc_channel_init(%struct.iio_dev* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %32
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %119

75:                                               ; preds = %32
  %76 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %77 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %78 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IRQF_SHARED, align 4
  %83 = call i32 @tiadc_iio_buffered_hardware_setup(%struct.iio_dev* %76, i32* @tiadc_worker_h, i32* @tiadc_irq_h, i32 %81, i32 %82, i32* @tiadc_buffer_setup_ops)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %115

87:                                               ; preds = %75
  %88 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %89 = call i32 @iio_device_register(%struct.iio_dev* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %112

93:                                               ; preds = %87
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.iio_dev* %95)
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load %struct.tiadc_device*, %struct.tiadc_device** %5, align 8
  %99 = call i32 @tiadc_request_dma(%struct.platform_device* %97, %struct.tiadc_device* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @EPROBE_DEFER, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %109

108:                                              ; preds = %102, %93
  store i32 0, i32* %2, align 4
  br label %119

109:                                              ; preds = %107
  %110 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %111 = call i32 @iio_device_unregister(%struct.iio_dev* %110)
  br label %112

112:                                              ; preds = %109, %92
  %113 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %114 = call i32 @tiadc_iio_buffered_hardware_remove(%struct.iio_dev* %113)
  br label %115

115:                                              ; preds = %112, %86
  %116 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %117 = call i32 @tiadc_channels_remove(%struct.iio_dev* %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %108, %73, %26, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_7__* @ti_tscadc_dev_get(%struct.platform_device*) #1

declare dso_local i32 @tiadc_parse_dt(%struct.platform_device*, %struct.tiadc_device*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @tiadc_step_config(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_writel(%struct.tiadc_device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tiadc_channel_init(%struct.iio_dev*, i32) #1

declare dso_local i32 @tiadc_iio_buffered_hardware_setup(%struct.iio_dev*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @tiadc_request_dma(%struct.platform_device*, %struct.tiadc_device*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_iio_buffered_hardware_remove(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_channels_remove(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
