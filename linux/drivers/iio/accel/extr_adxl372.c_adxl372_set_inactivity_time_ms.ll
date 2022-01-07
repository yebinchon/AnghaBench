; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_set_inactivity_time_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_set_inactivity_time_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl372_state = type { i64, i32, i32 }

@ADXL372_ODR_6400HZ = common dso_local global i64 0, align 8
@ADXL372_TIME_INACT_H = common dso_local global i32 0, align 4
@ADXL372_TIME_INACT_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adxl372_state*, i32)* @adxl372_set_inactivity_time_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_set_inactivity_time_ms(%struct.adxl372_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adxl372_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adxl372_state* %0, %struct.adxl372_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %12 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ADXL372_ODR_6400HZ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 13, i32* %9, align 4
  br label %18

17:                                               ; preds = %2
  store i32 26, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @DIV_ROUND_CLOSEST(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = lshr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %7, align 4
  %27 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %28 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ADXL372_TIME_INACT_H, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @regmap_write(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %18
  %38 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %39 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ADXL372_TIME_INACT_L, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @regmap_write(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.adxl372_state*, %struct.adxl372_state** %4, align 8
  %51 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %46, %35
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
