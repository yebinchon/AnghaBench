; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7949_adc_chip = type { i32 }

@AD7949_MASK_TOTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32*)* @ad7949_spi_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7949_spi_reg_access(%struct.iio_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ad7949_adc_chip*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.ad7949_adc_chip* @iio_priv(%struct.iio_dev* %11)
  store %struct.ad7949_adc_chip* %12, %struct.ad7949_adc_chip** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %9, align 8
  %17 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AD7949_MASK_TOTAL, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @AD7949_MASK_TOTAL, align 4
  %26 = call i32 @ad7949_spi_write_cfg(%struct.ad7949_adc_chip* %21, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i32, i32* %10, align 4
  ret i32 %28
}

declare dso_local %struct.ad7949_adc_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad7949_spi_write_cfg(%struct.ad7949_adc_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
