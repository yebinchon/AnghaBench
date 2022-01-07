; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sigma_delta_single_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sigma_delta_single_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ad_sigma_delta = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@AD_SD_MODE_SINGLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AD_SD_REG_DATA = common dso_local global i32 0, align 4
@AD_SD_MODE_IDLE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad_sigma_delta_single_conversion(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ad_sigma_delta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev* %13)
  store %struct.ad_sigma_delta* %14, %struct.ad_sigma_delta** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %16 = call i64 @iio_buffer_enabled(%struct.iio_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %157

21:                                               ; preds = %3
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ad_sigma_delta_set_channel(%struct.ad_sigma_delta* %25, i32 %28)
  %30 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %31 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spi_bus_lock(i32 %34)
  %36 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %37 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %39 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %41 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %40, i32 0, i32 5
  %42 = call i32 @reinit_completion(i32* %41)
  %43 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %44 = load i32, i32* @AD_SD_MODE_SINGLE, align 4
  %45 = call i32 @ad_sigma_delta_set_mode(%struct.ad_sigma_delta* %43, i32 %44)
  %46 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %47 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %49 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @enable_irq(i32 %52)
  %54 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %55 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %54, i32 0, i32 5
  %56 = load i32, i32* @HZ, align 4
  %57 = call i32 @wait_for_completion_interruptible_timeout(i32* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %21
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %60, %21
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %96

67:                                               ; preds = %63
  %68 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %69 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %76 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %75, i32 0, i32 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  br label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @AD_SD_REG_DATA, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %74
  %83 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %86 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %90 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %88, %92
  %94 = call i32 @DIV_ROUND_UP(i32 %93, i32 8)
  %95 = call i32 @ad_sd_read_reg(%struct.ad_sigma_delta* %83, i32 %84, i32 %94, i32* %10)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %82, %66
  %97 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %98 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %103 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %102, i32 0, i32 3
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @disable_irq_nosync(i32 %106)
  %108 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %109 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %101, %96
  %111 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %112 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  %113 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %114 = load i32, i32* @AD_SD_MODE_IDLE, align 4
  %115 = call i32 @ad_sigma_delta_set_mode(%struct.ad_sigma_delta* %113, i32 %114)
  %116 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %117 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %119 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %118, i32 0, i32 3
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @spi_bus_unlock(i32 %122)
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %110
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %4, align 4
  br label %157

131:                                              ; preds = %110
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %134 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = lshr i32 %132, %136
  store i32 %137, i32* %9, align 4
  %138 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %139 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 1, %141
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %9, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32*, i32** %7, align 8
  store i32 %146, i32* %147, align 4
  %148 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %8, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @ad_sigma_delta_postprocess_sample(%struct.ad_sigma_delta* %148, i32 %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %131
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %157

155:                                              ; preds = %131
  %156 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %153, %129, %18
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad_sigma_delta_set_channel(%struct.ad_sigma_delta*, i32) #1

declare dso_local i32 @spi_bus_lock(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ad_sigma_delta_set_mode(%struct.ad_sigma_delta*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @ad_sd_read_reg(%struct.ad_sigma_delta*, i32, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spi_bus_unlock(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ad_sigma_delta_postprocess_sample(%struct.ad_sigma_delta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
