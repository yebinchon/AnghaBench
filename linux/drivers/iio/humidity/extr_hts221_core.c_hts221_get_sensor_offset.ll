; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_get_sensor_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_get_sensor_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hts221_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@HTS221_SENSOR_H = common dso_local global i64 0, align 8
@HTS221_SENSOR_T = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hts221_hw*, i32, i32*, i32*)* @hts221_get_sensor_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_get_sensor_offset(%struct.hts221_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hts221_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.hts221_hw* %0, %struct.hts221_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %45 [
    i32 129, label %15
    i32 128, label %30
  ]

15:                                               ; preds = %4
  %16 = load %struct.hts221_hw*, %struct.hts221_hw** %6, align 8
  %17 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* @HTS221_SENSOR_H, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.hts221_hw*, %struct.hts221_hw** %6, align 8
  %24 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* @HTS221_SENSOR_H, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  br label %48

30:                                               ; preds = %4
  %31 = load %struct.hts221_hw*, %struct.hts221_hw** %6, align 8
  %32 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @HTS221_SENSOR_T, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.hts221_hw*, %struct.hts221_hw** %6, align 8
  %39 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @HTS221_SENSOR_T, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  br label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %61

48:                                               ; preds = %30, %15
  %49 = load i64, i64* %13, align 8
  %50 = mul nsw i64 %49, 1000000000
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @div_s64(i64 %50, i64 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @div_s64_rem(i32 %53, i64 1000000000, i64* %11)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %48, %45
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @div_s64(i64, i64) #1

declare dso_local i32 @div_s64_rem(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
