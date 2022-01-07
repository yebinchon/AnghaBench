; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7768_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AD7768_REG_SYNC_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"adi,sync-in\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7768_state*)* @ad7768_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7768_setup(%struct.ad7768_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7768_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ad7768_state* %0, %struct.ad7768_state** %3, align 8
  %5 = load %struct.ad7768_state*, %struct.ad7768_state** %3, align 8
  %6 = load i32, i32* @AD7768_REG_SYNC_RESET, align 4
  %7 = call i32 @ad7768_spi_reg_write(%struct.ad7768_state* %5, i32 %6, i32 3)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.ad7768_state*, %struct.ad7768_state** %3, align 8
  %14 = load i32, i32* @AD7768_REG_SYNC_RESET, align 4
  %15 = call i32 @ad7768_spi_reg_write(%struct.ad7768_state* %13, i32 %14, i32 2)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.ad7768_state*, %struct.ad7768_state** %3, align 8
  %22 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %26 = call i32 @devm_gpiod_get(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.ad7768_state*, %struct.ad7768_state** %3, align 8
  %28 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ad7768_state*, %struct.ad7768_state** %3, align 8
  %30 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.ad7768_state*, %struct.ad7768_state** %3, align 8
  %36 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %20
  %40 = load %struct.ad7768_state*, %struct.ad7768_state** %3, align 8
  %41 = call i32 @ad7768_set_freq(%struct.ad7768_state* %40, i32 32000)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %34, %18, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ad7768_spi_reg_write(%struct.ad7768_state*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ad7768_set_freq(%struct.ad7768_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
