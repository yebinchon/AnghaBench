; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_lpc18xx_dac.c_lpc18xx_dac_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_lpc18xx_dac.c_lpc18xx_dac_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.lpc18xx_dac = type { i32, i64 }

@LPC18XX_DAC_CR_VALUE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LPC18XX_DAC_CR_BIAS = common dso_local global i32 0, align 4
@LPC18XX_DAC_CR_VALUE_SHIFT = common dso_local global i32 0, align 4
@LPC18XX_DAC_CR = common dso_local global i64 0, align 8
@LPC18XX_DAC_CTRL_DMA_ENA = common dso_local global i32 0, align 4
@LPC18XX_DAC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @lpc18xx_dac_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_dac_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.lpc18xx_dac*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.lpc18xx_dac* @iio_priv(%struct.iio_dev* %14)
  store %struct.lpc18xx_dac* %15, %struct.lpc18xx_dac** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %54 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @LPC18XX_DAC_CR_VALUE_MASK, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %57

27:                                               ; preds = %20
  %28 = load i32, i32* @LPC18XX_DAC_CR_BIAS, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @LPC18XX_DAC_CR_VALUE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %12, align 8
  %35 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %12, align 8
  %39 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LPC18XX_DAC_CR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* @LPC18XX_DAC_CTRL_DMA_ENA, align 4
  %45 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %12, align 8
  %46 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LPC18XX_DAC_CTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %12, align 8
  %52 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 0, i32* %6, align 4
  br label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %27, %24
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.lpc18xx_dac* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
