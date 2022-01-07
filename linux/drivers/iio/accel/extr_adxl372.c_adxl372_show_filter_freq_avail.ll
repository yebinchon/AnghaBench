; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_show_filter_freq_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_show_filter_freq_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adxl372_state = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@adxl372_bw_freq_tbl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @adxl372_show_filter_freq_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adxl372_show_filter_freq_avail(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.adxl372_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %11)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.adxl372_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.adxl372_state* %14, %struct.adxl372_state** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %36, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.adxl372_state*, %struct.adxl372_state** %8, align 8
  %18 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %25, %26
  %28 = load i32*, i32** @adxl372_bw_freq_tbl, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @scnprintf(i8* %24, i64 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 10, i8* %43, align 1
  %44 = load i64, i64* %10, align 8
  ret i64 %44
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adxl372_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
