; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_berlin2-adc.c_berlin2_adc_tsen_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_berlin2-adc.c_berlin2_adc_tsen_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.berlin2_adc_priv = type { i32, i32, i32, i32, i32 }

@BERLIN2_SM_TSEN_STATUS = common dso_local global i32 0, align 4
@BERLIN2_SM_TSEN_STATUS_INT_EN = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL_TSEN_RESET = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL_ADC_ROTATE = common dso_local global i32 0, align 4
@BERLIN2_SM_TSEN_CTRL = common dso_local global i32 0, align 4
@BERLIN2_SM_TSEN_CTRL_TRIM_MASK = common dso_local global i32 0, align 4
@BERLIN2_SM_TSEN_CTRL_SETTLING_MASK = common dso_local global i32 0, align 4
@BERLIN2_SM_TSEN_CTRL_START = common dso_local global i32 0, align 4
@BERLIN2_SM_TSEN_CTRL_SETTLING_12 = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @berlin2_adc_tsen_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin2_adc_tsen_read(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.berlin2_adc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.berlin2_adc_priv* @iio_priv(%struct.iio_dev* %7)
  store %struct.berlin2_adc_priv* %8, %struct.berlin2_adc_priv** %4, align 8
  %9 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %10 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %13 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BERLIN2_SM_TSEN_STATUS, align 4
  %16 = load i32, i32* @BERLIN2_SM_TSEN_STATUS_INT_EN, align 4
  %17 = call i32 @regmap_write(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %19 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BERLIN2_SM_CTRL, align 4
  %22 = load i32, i32* @BERLIN2_SM_CTRL_TSEN_RESET, align 4
  %23 = load i32, i32* @BERLIN2_SM_CTRL_ADC_ROTATE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BERLIN2_SM_CTRL_ADC_ROTATE, align 4
  %26 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %24, i32 %25)
  %27 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %28 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BERLIN2_SM_TSEN_CTRL, align 4
  %31 = load i32, i32* @BERLIN2_SM_TSEN_CTRL_TRIM_MASK, align 4
  %32 = load i32, i32* @BERLIN2_SM_TSEN_CTRL_SETTLING_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BERLIN2_SM_TSEN_CTRL_START, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @BERLIN2_SM_TSEN_CTRL_TRIM(i32 3)
  %37 = load i32, i32* @BERLIN2_SM_TSEN_CTRL_SETTLING_12, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BERLIN2_SM_TSEN_CTRL_START, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %35, i32 %40)
  %42 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %43 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %46 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @msecs_to_jiffies(i32 1000)
  %49 = call i32 @wait_event_interruptible_timeout(i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %51 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BERLIN2_SM_TSEN_STATUS, align 4
  %54 = load i32, i32* @BERLIN2_SM_TSEN_STATUS_INT_EN, align 4
  %55 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %1
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %1
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %66 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %85

69:                                               ; preds = %61
  %70 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %71 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BERLIN2_SM_TSEN_CTRL, align 4
  %74 = load i32, i32* @BERLIN2_SM_TSEN_CTRL_START, align 4
  %75 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 0)
  %76 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %77 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  %79 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %80 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %4, align 8
  %82 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %69, %64
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.berlin2_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BERLIN2_SM_TSEN_CTRL_TRIM(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
