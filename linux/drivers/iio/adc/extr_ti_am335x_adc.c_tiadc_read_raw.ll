; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.tiadc_device = type { i32, i32*, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_FIFO1CNT = common dso_local global i32 0, align 4
@REG_FIFO1 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IDLE_TIMEOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FIFOREAD_CHNLID_MASK = common dso_local global i32 0, align 4
@FIFOREAD_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tiadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tiadc_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %22)
  store %struct.tiadc_device* %23, %struct.tiadc_device** %12, align 8
  %24 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = call i64 @iio_buffer_enabled(%struct.iio_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %140

31:                                               ; preds = %5
  %32 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = call i32 @get_adc_chan_step_mask(%struct.tiadc_device* %32, %struct.iio_chan_spec* %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %140

40:                                               ; preds = %31
  %41 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %42 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %41, i32 0, i32 2
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %45 = load i32, i32* @REG_FIFO1CNT, align 4
  %46 = call i32 @tiadc_readl(%struct.tiadc_device* %44, i32 %45)
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %51, %40
  %48 = load i32, i32* %16, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %16, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %53 = load i32, i32* @REG_FIFO1, align 4
  %54 = call i32 @tiadc_readl(%struct.tiadc_device* %52, i32 %53)
  br label %47

55:                                               ; preds = %47
  %56 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %57 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %20, align 4
  %60 = call i32 @am335x_tsc_se_set_once(i32 %58, i32 %59)
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i32, i32* @IDLE_TIMEOUT, align 4
  %63 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %64 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = call i64 @msecs_to_jiffies(i32 %66)
  %68 = add i64 %61, %67
  store i64 %68, i64* %21, align 8
  br label %69

69:                                               ; preds = %55, %88
  %70 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %71 = load i32, i32* @REG_FIFO1CNT, align 4
  %72 = call i32 @tiadc_readl(%struct.tiadc_device* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %89

76:                                               ; preds = %69
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i64, i64* %21, align 8
  %79 = call i64 @time_after(i64 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %83 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @am335x_tsc_se_adc_done(i32 %84)
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %13, align 4
  br label %135

88:                                               ; preds = %76
  br label %69

89:                                               ; preds = %75
  %90 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %91 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %94 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %121, %89
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %104 = load i32, i32* @REG_FIFO1, align 4
  %105 = call i32 @tiadc_readl(%struct.tiadc_device* %103, i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @FIFOREAD_CHNLID_MASK, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = lshr i32 %109, 16
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @FIFOREAD_DATA_MASK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %17, align 4
  store i32 1, i32* %19, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %114, %102
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %98

124:                                              ; preds = %98
  %125 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %126 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @am335x_tsc_se_adc_done(i32 %127)
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134, %81
  %136 = load %struct.tiadc_device*, %struct.tiadc_device** %12, align 8
  %137 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %136, i32 0, i32 2
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %135, %37, %28
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @get_adc_chan_step_mask(%struct.tiadc_device*, %struct.iio_chan_spec*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tiadc_readl(%struct.tiadc_device*, i32) #1

declare dso_local i32 @am335x_tsc_se_set_once(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @am335x_tsc_se_adc_done(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
