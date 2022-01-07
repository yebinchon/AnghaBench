; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_dln2-adc.c_dln2_update_scan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_dln2-adc.c_dln2_update_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.dln2_adc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unable to enable ADC channel %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64*)* @dln2_update_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_update_scan_mode(%struct.iio_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.dln2_adc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = call %struct.dln2_adc* @iio_priv(%struct.iio_dev* %11)
  store %struct.dln2_adc* %12, %struct.dln2_adc** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dln2_adc*, %struct.dln2_adc** %6, align 8
  %18 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %58, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load %struct.dln2_adc*, %struct.dln2_adc** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i64*, i64** %5, align 8
  %29 = call i32 @test_bit(i32 %27, i64* %28)
  %30 = call i32 @dln2_adc_set_chan_enabled(%struct.dln2_adc* %25, i32 %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.dln2_adc*, %struct.dln2_adc** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @dln2_adc_set_chan_enabled(%struct.dln2_adc* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load %struct.dln2_adc*, %struct.dln2_adc** %6, align 8
  %47 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.dln2_adc*, %struct.dln2_adc** %6, align 8
  %50 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %20

61:                                               ; preds = %20
  %62 = load %struct.dln2_adc*, %struct.dln2_adc** %6, align 8
  %63 = call i32 @dln2_adc_update_demux(%struct.dln2_adc* %62)
  %64 = load %struct.dln2_adc*, %struct.dln2_adc** %6, align 8
  %65 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %45
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.dln2_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dln2_adc_set_chan_enabled(%struct.dln2_adc*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dln2_adc_update_demux(%struct.dln2_adc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
