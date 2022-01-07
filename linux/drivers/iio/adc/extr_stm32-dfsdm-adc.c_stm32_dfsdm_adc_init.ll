; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_adc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_adc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, %struct.TYPE_7__, %struct.iio_chan_spec* }
%struct.TYPE_7__ = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_dfsdm_adc = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@DFSDM_DEFAULT_OVERSAMPLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"st,adc-channels\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad st,adc-channels\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Channels init failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"No DMA support\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@stm32_dfsdm_adc_trigger_handler = common dso_local global i32 0, align 4
@stm32_dfsdm_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"buffer setup failed\0A\00", align 1
@INDIO_HARDWARE_TRIGGERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @stm32_dfsdm_adc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_adc_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca %struct.stm32_dfsdm_adc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %9)
  store %struct.stm32_dfsdm_adc* %10, %struct.stm32_dfsdm_adc** %5, align 8
  %11 = load i32, i32* @DFSDM_DEFAULT_OVERSAMPLING, align 4
  %12 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %13 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %15 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @stm32_dfsdm_compute_all_osrs(%struct.iio_dev* %14, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %141

23:                                               ; preds = %1
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @of_property_count_u32_elems(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %32, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %31, %23
  %40 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 2
  %42 = call i32 @dev_err(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %49, %47 ]
  store i32 %51, i32* %2, align 4
  br label %141

52:                                               ; preds = %31
  %53 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 2
  %55 = call i32 @devm_iio_hw_consumer_alloc(%struct.TYPE_7__* %54)
  %56 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %57 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %59 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @EPROBE_DEFER, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %141

66:                                               ; preds = %52
  %67 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.iio_chan_spec* @devm_kcalloc(%struct.TYPE_7__* %68, i32 %69, i32 4, i32 %70)
  store %struct.iio_chan_spec* %71, %struct.iio_chan_spec** %4, align 8
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %73 = icmp ne %struct.iio_chan_spec* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %141

77:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %103, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i64 %86
  %88 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 4
  %89 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %90 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %90, i64 %92
  %94 = call i32 @stm32_dfsdm_adc_chan_init_one(%struct.iio_dev* %89, %struct.iio_chan_spec* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 2
  %100 = call i32 @dev_err(%struct.TYPE_7__* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %141

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %78

106:                                              ; preds = %78
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %111 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %112 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %111, i32 0, i32 3
  store %struct.iio_chan_spec* %110, %struct.iio_chan_spec** %112, align 8
  %113 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %114 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %113, i32 0, i32 0
  %115 = call i32 @init_completion(i32* %114)
  %116 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %117 = call i64 @stm32_dfsdm_dma_request(%struct.iio_dev* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %106
  %120 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %121 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %120, i32 0, i32 2
  %122 = call i32 @dev_dbg(%struct.TYPE_7__* %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %141

123:                                              ; preds = %106
  %124 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %125 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %124, i32* @iio_pollfunc_store_time, i32* @stm32_dfsdm_adc_trigger_handler, i32* @stm32_dfsdm_buffer_setup_ops)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %130 = call i32 @stm32_dfsdm_dma_release(%struct.iio_dev* %129)
  %131 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %132 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %131, i32 0, i32 2
  %133 = call i32 @dev_err(%struct.TYPE_7__* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %141

135:                                              ; preds = %123
  %136 = load i32, i32* @INDIO_HARDWARE_TRIGGERED, align 4
  %137 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %138 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %135, %128, %119, %97, %74, %63, %50, %21
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stm32_dfsdm_compute_all_osrs(%struct.iio_dev*, i32) #1

declare dso_local i32 @of_property_count_u32_elems(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @devm_iio_hw_consumer_alloc(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.iio_chan_spec* @devm_kcalloc(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @stm32_dfsdm_adc_chan_init_one(%struct.iio_dev*, %struct.iio_chan_spec*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @stm32_dfsdm_dma_request(%struct.iio_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @stm32_dfsdm_dma_release(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
