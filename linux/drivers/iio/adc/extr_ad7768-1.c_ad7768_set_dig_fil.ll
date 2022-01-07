; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_set_dig_fil.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_set_dig_fil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7768_state = type { i32 }

@AD7768_DEC_RATE_8 = common dso_local global i32 0, align 4
@AD7768_DEC_RATE_16 = common dso_local global i32 0, align 4
@AD7768_REG_DIGITAL_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7768_state*, i32)* @ad7768_set_dig_fil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7768_set_dig_fil(%struct.ad7768_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7768_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ad7768_state* %0, %struct.ad7768_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @AD7768_DEC_RATE_8, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AD7768_DEC_RATE_16, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @AD7768_DIG_FIL_FIL(i32 %16)
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @AD7768_DIG_FIL_DEC_RATE(i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %23 = load i32, i32* @AD7768_REG_DIGITAL_FILTER, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ad7768_spi_reg_write(%struct.ad7768_state* %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %21
  %31 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gpiod_set_value(i32 %33, i32 1)
  %35 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %36 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpiod_set_value(i32 %37, i32 0)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %28
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @AD7768_DIG_FIL_FIL(i32) #1

declare dso_local i32 @AD7768_DIG_FIL_DEC_RATE(i32) #1

declare dso_local i32 @ad7768_spi_reg_write(%struct.ad7768_state*, i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
