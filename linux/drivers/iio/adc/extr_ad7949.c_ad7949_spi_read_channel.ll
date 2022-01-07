; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_read_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_read_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7949_adc_chip = type { i32, i32, i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32 }

@AD7949_OFFSET_CHANNEL_SEL = common dso_local global i32 0, align 4
@AD7949_MASK_CHANNEL_SEL = common dso_local global i32 0, align 4
@AD7949_CFG_REG_SIZE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7949_adc_chip*, i32*, i32)* @ad7949_spi_read_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7949_spi_read_channel(%struct.ad7949_adc_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7949_adc_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca [1 x %struct.spi_transfer], align 16
  store %struct.ad7949_adc_chip* %0, %struct.ad7949_adc_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %14 = call i32 @ad7949_spi_bits_per_word(%struct.ad7949_adc_chip* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %16 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GENMASK(i32 %17, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %12, i64 0, i64 0
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %22 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %21, i32 0, i32 0
  store i32* %22, i32** %20, align 16
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  store i32 4, i32* %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %24, align 4
  %26 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AD7949_OFFSET_CHANNEL_SEL, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @AD7949_MASK_CHANNEL_SEL, align 4
  %31 = call i32 @ad7949_spi_write_cfg(%struct.ad7949_adc_chip* %26, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %74

36:                                               ; preds = %3
  %37 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %38 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %12, i64 0, i64 0
  %40 = call i32 @spi_message_init_with_transfers(%struct.spi_message* %11, %struct.spi_transfer* %39, i32 1)
  %41 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %42 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @spi_sync(i32 %43, %struct.spi_message* %11)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %74

49:                                               ; preds = %36
  %50 = call i32 @udelay(i32 2)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %53 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %55 = call i64 @ad7949_spi_cfg_is_read_back(%struct.ad7949_adc_chip* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %59 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AD7949_CFG_REG_SIZE_BITS, align 4
  %62 = ashr i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %62, %63
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %73

66:                                               ; preds = %49
  %67 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %5, align 8
  %68 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %69, %70
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %57
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %47, %34
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @ad7949_spi_bits_per_word(%struct.ad7949_adc_chip*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @ad7949_spi_write_cfg(%struct.ad7949_adc_chip*, i32, i32) #1

declare dso_local i32 @spi_message_init_with_transfers(%struct.spi_message*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ad7949_spi_cfg_is_read_back(%struct.ad7949_adc_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
