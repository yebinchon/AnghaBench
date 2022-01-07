; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_single_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_single_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_dfsdm_adc = type { i32*, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DFSDM_CR2_REOCIE_MASK = common dso_local global i32 0, align 4
@DFSDM_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @stm32_dfsdm_single_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_single_conv(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stm32_dfsdm_adc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %11)
  store %struct.stm32_dfsdm_adc* %12, %struct.stm32_dfsdm_adc** %8, align 8
  %13 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %14 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %13, i32 0, i32 4
  %15 = call i32 @reinit_completion(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %18 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %20 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @stm32_dfsdm_start_dfsdm(%struct.TYPE_3__* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %109

27:                                               ; preds = %3
  %28 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %29 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %34 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DFSDM_CR2(i32 %35)
  %37 = load i32, i32* @DFSDM_CR2_REOCIE_MASK, align 4
  %38 = call i32 @DFSDM_CR2_REOCIE(i32 1)
  %39 = call i32 @regmap_update_bits(i32 %32, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %103

43:                                               ; preds = %27
  %44 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %45 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %51 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %53 = call i32 @stm32_dfsdm_start_conv(%struct.stm32_dfsdm_adc* %52, i32* null)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %43
  %57 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %58 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %63 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @DFSDM_CR2(i32 %64)
  %66 = load i32, i32* @DFSDM_CR2_REOCIE_MASK, align 4
  %67 = call i32 @DFSDM_CR2_REOCIE(i32 0)
  %68 = call i32 @regmap_update_bits(i32 %61, i32 %65, i32 %66, i32 %67)
  br label %103

69:                                               ; preds = %43
  %70 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %71 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %70, i32 0, i32 4
  %72 = load i32, i32* @DFSDM_TIMEOUT, align 4
  %73 = call i64 @wait_for_completion_interruptible_timeout(i32* %71, i32 %72)
  store i64 %73, i64* %9, align 8
  %74 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %75 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %80 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DFSDM_CR2(i32 %81)
  %83 = load i32, i32* @DFSDM_CR2_REOCIE_MASK, align 4
  %84 = call i32 @DFSDM_CR2_REOCIE(i32 0)
  %85 = call i32 @regmap_update_bits(i32 %78, i32 %82, i32 %83, i32 %84)
  %86 = load i64, i64* %9, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %69
  %89 = load i32, i32* @ETIMEDOUT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %100

91:                                               ; preds = %69
  %92 = load i64, i64* %9, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %10, align 4
  br label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %97, %94
  br label %100

100:                                              ; preds = %99, %88
  %101 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %102 = call i32 @stm32_dfsdm_stop_conv(%struct.stm32_dfsdm_adc* %101)
  br label %103

103:                                              ; preds = %100, %56, %42
  %104 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %105 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 @stm32_dfsdm_stop_dfsdm(%struct.TYPE_3__* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %103, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @stm32_dfsdm_start_dfsdm(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @DFSDM_CR2(i32) #1

declare dso_local i32 @DFSDM_CR2_REOCIE(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stm32_dfsdm_start_conv(%struct.stm32_dfsdm_adc*, i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @stm32_dfsdm_stop_conv(%struct.stm32_dfsdm_adc*) #1

declare dso_local i32 @stm32_dfsdm_stop_dfsdm(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
