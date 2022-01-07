; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7768_state = type { i32 }

@AD7768_REG_CONVERSION = common dso_local global i32 0, align 4
@AD7768_CONV_MODE_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7768_state*, i32)* @ad7768_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7768_set_mode(%struct.ad7768_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7768_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad7768_state* %0, %struct.ad7768_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %8 = load i32, i32* @AD7768_REG_CONVERSION, align 4
  %9 = call i32 @ad7768_spi_reg_read(%struct.ad7768_state* %7, i32 %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* @AD7768_CONV_MODE_MSK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @AD7768_CONV_MODE(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %24 = load i32, i32* @AD7768_REG_CONVERSION, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ad7768_spi_reg_write(%struct.ad7768_state* %23, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ad7768_spi_reg_read(%struct.ad7768_state*, i32, i32) #1

declare dso_local i32 @AD7768_CONV_MODE(i32) #1

declare dso_local i32 @ad7768_spi_reg_write(%struct.ad7768_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
