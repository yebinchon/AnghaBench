; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_write_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_write_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7949_adc_chip = type { i32, i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32 }

@AD7949_CFG_REG_SIZE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7949_adc_chip*, i32, i32)* @ad7949_spi_write_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7949_spi_write_cfg(%struct.ad7949_adc_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ad7949_adc_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca [1 x %struct.spi_transfer], align 16
  store %struct.ad7949_adc_chip* %0, %struct.ad7949_adc_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %4, align 8
  %13 = call i32 @ad7949_spi_bits_per_word(%struct.ad7949_adc_chip* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AD7949_CFG_REG_SIZE_BITS, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %11, i64 0, i64 0
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %4, align 8
  %20 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %19, i32 0, i32 0
  store i32* %20, i32** %18, align 16
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  store i32 4, i32* %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %4, align 8
  %28 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = or i32 %26, %32
  %34 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %4, align 8
  %35 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %4, align 8
  %37 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %4, align 8
  %42 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %11, i64 0, i64 0
  %44 = call i32 @spi_message_init_with_transfers(%struct.spi_message* %10, %struct.spi_transfer* %43, i32 1)
  %45 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %4, align 8
  %46 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @spi_sync(i32 %47, %struct.spi_message* %10)
  store i32 %48, i32* %7, align 4
  %49 = call i32 @udelay(i32 2)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @ad7949_spi_bits_per_word(%struct.ad7949_adc_chip*) #1

declare dso_local i32 @spi_message_init_with_transfers(%struct.spi_message*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
