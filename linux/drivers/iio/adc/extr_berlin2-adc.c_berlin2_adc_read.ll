; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_berlin2-adc.c_berlin2_adc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_berlin2-adc.c_berlin2_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.berlin2_adc_priv = type { i32, i32, i32, i32, i32 }

@BERLIN2_SM_ADC_STATUS = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL_ADC_RESET = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL_ADC_SEL_MASK = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL_ADC_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @berlin2_adc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin2_adc_read(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.berlin2_adc_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.berlin2_adc_priv* @iio_priv(%struct.iio_dev* %9)
  store %struct.berlin2_adc_priv* %10, %struct.berlin2_adc_priv** %6, align 8
  %11 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %12 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %15 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BERLIN2_SM_ADC_STATUS, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @BERLIN2_SM_ADC_STATUS_INT_EN(i32 %18)
  %20 = call i32 @regmap_write(i32 %16, i32 %17, i32 %19)
  %21 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %22 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BERLIN2_SM_CTRL, align 4
  %25 = load i32, i32* @BERLIN2_SM_CTRL_ADC_RESET, align 4
  %26 = load i32, i32* @BERLIN2_SM_CTRL_ADC_SEL_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BERLIN2_SM_CTRL_ADC_START, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @BERLIN2_SM_CTRL_ADC_SEL(i32 %30)
  %32 = load i32, i32* @BERLIN2_SM_CTRL_ADC_START, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %29, i32 %33)
  %35 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %36 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %39 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @msecs_to_jiffies(i32 1000)
  %42 = call i32 @wait_event_interruptible_timeout(i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %44 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BERLIN2_SM_ADC_STATUS, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @BERLIN2_SM_ADC_STATUS_INT_EN(i32 %47)
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %48, i32 0)
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %2
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %2
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %60 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %79

63:                                               ; preds = %55
  %64 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %65 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BERLIN2_SM_CTRL, align 4
  %68 = load i32, i32* @BERLIN2_SM_CTRL_ADC_START, align 4
  %69 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 0)
  %70 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %71 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  %73 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %74 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %6, align 8
  %76 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %63, %58
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.berlin2_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @BERLIN2_SM_ADC_STATUS_INT_EN(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BERLIN2_SM_CTRL_ADC_SEL(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
