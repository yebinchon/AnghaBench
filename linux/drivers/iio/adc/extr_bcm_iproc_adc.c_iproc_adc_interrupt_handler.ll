; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_adc_priv = type { i32, i32, i32, i32 }
%struct.iio_dev = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IPROC_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"iproc_adc_interrupt_handler(),INTRPT_STS:%x\0A\00", align 1
@IPROC_ADC_INTR_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_INTR = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@IPROC_ADC_CHANNEL_OFFSET = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_STATUS = common dso_local global i64 0, align 8
@IPROC_ADC_CHANNEL_VALID_ENTERIES_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_VALID_ENTERIES = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"No data rcvd on channel %d\0A\00", align 1
@IPROC_ADC_CHANNEL_INTERRUPT_MASK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iproc_adc_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_adc_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iproc_adc_priv*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.iio_dev*
  store %struct.iio_dev* %15, %struct.iio_dev** %7, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev* %16)
  store %struct.iproc_adc_priv* %17, %struct.iproc_adc_priv** %6, align 8
  %18 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %19 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @IPROC_INTERRUPT_STATUS, align 8
  %22 = call i32 @regmap_read(i32 %20, i64 %21, i32* %9)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IPROC_ADC_INTR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @IPROC_ADC_INTR, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %134

34:                                               ; preds = %2
  %35 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %36 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @IPROC_ADC_CHANNEL_INTERRUPT_STATUS, align 8
  %39 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %40 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %41 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %38, %44
  %46 = call i32 @regmap_read(i32 %37, i64 %45, i32* %12)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %113

51:                                               ; preds = %34
  %52 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %53 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @IPROC_ADC_CHANNEL_STATUS, align 8
  %56 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %57 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %58 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %55, %61
  %63 = call i32 @regmap_read(i32 %54, i64 %62, i32* %11)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @IPROC_ADC_CHANNEL_VALID_ENTERIES_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @IPROC_ADC_CHANNEL_VALID_ENTERIES, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp uge i32 %69, 1
  br i1 %70, label %71, label %89

71:                                               ; preds = %51
  %72 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %73 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @IPROC_ADC_CHANNEL_DATA, align 8
  %76 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %77 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %78 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %75, %81
  %83 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %84 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %83, i32 0, i32 1
  %85 = call i32 @regmap_read(i32 %74, i64 %82, i32* %84)
  %86 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %87 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %86, i32 0, i32 3
  %88 = call i32 @complete(i32* %87)
  br label %96

89:                                               ; preds = %51
  %90 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 0
  %92 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %93 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %89, %71
  %97 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %98 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* @IPROC_ADC_CHANNEL_INTERRUPT_MASK, align 8
  %101 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %102 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %103 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %100, %106
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = call i32 @regmap_write(i32 %99, i64 %107, i32 %111)
  br label %113

113:                                              ; preds = %96, %34
  %114 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %115 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* @IPROC_ADC_CHANNEL_INTERRUPT_STATUS, align 8
  %118 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %119 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %120 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %117, %123
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @regmap_write(i32 %116, i64 %124, i32 %125)
  %127 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %128 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* @IPROC_INTERRUPT_STATUS, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @regmap_write(i32 %129, i64 %130, i32 %131)
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %113, %2
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
