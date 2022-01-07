; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_compute_all_osrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_compute_all_osrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.stm32_dfsdm_adc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_dfsdm_filter* }
%struct.stm32_dfsdm_filter = type { i32* }

@.str = private unnamed_addr constant [43 x i8] c"Filter parameters not found: errors %d/%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @stm32_dfsdm_compute_all_osrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_compute_all_osrs(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_dfsdm_adc*, align 8
  %7 = alloca %struct.stm32_dfsdm_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %10)
  store %struct.stm32_dfsdm_adc* %11, %struct.stm32_dfsdm_adc** %6, align 8
  %12 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %6, align 8
  %13 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.stm32_dfsdm_filter*, %struct.stm32_dfsdm_filter** %15, align 8
  %17 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %6, align 8
  %18 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.stm32_dfsdm_filter, %struct.stm32_dfsdm_filter* %16, i64 %19
  store %struct.stm32_dfsdm_filter* %20, %struct.stm32_dfsdm_filter** %7, align 8
  %21 = load %struct.stm32_dfsdm_filter*, %struct.stm32_dfsdm_filter** %7, align 8
  %22 = getelementptr inbounds %struct.stm32_dfsdm_filter, %struct.stm32_dfsdm_filter* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load %struct.stm32_dfsdm_filter*, %struct.stm32_dfsdm_filter** %7, align 8
  %27 = getelementptr inbounds %struct.stm32_dfsdm_filter, %struct.stm32_dfsdm_filter* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  %31 = load %struct.stm32_dfsdm_filter*, %struct.stm32_dfsdm_filter** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @stm32_dfsdm_compute_osrs(%struct.stm32_dfsdm_filter* %31, i32 0, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.stm32_dfsdm_filter*, %struct.stm32_dfsdm_filter** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @stm32_dfsdm_compute_osrs(%struct.stm32_dfsdm_filter* %34, i32 1, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %39, %2
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @stm32_dfsdm_compute_osrs(%struct.stm32_dfsdm_filter*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
