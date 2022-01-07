; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c_ad5761_spi_set_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c_ad5761_spi_set_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5761_state = type { i32, i64 }

@AD5761_CTRL_ETS = common dso_local global i32 0, align 4
@AD5761_CTRL_USE_INTVREF = common dso_local global i32 0, align 4
@AD5761_ADDR_SW_FULL_RESET = common dso_local global i32 0, align 4
@AD5761_ADDR_CTRL_WRITE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5761_state*, i32)* @ad5761_spi_set_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5761_spi_set_range(%struct.ad5761_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5761_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ad5761_state* %0, %struct.ad5761_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 7
  %10 = load i32, i32* @AD5761_CTRL_ETS, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %13 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @AD5761_CTRL_USE_INTVREF, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %22 = load i32, i32* @AD5761_ADDR_SW_FULL_RESET, align 4
  %23 = call i32 @_ad5761_spi_write(%struct.ad5761_state* %21, i32 %22, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %30 = load i32, i32* @AD5761_ADDR_CTRL_WRITE_REG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @_ad5761_spi_write(%struct.ad5761_state* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %40 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %35, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @_ad5761_spi_write(%struct.ad5761_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
