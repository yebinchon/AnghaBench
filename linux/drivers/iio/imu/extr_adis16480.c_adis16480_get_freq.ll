; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis16480 = type { i64, i32, i32 }

@ADIS16480_CLK_PPS = common dso_local global i64 0, align 8
@ADIS16495_REG_SYNC_SCALE = common dso_local global i32 0, align 4
@ADIS16480_REG_DEC_RATE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*, i32*)* @adis16480_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_get_freq(%struct.iio_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.adis16480*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %13)
  store %struct.adis16480* %14, %struct.adis16480** %8, align 8
  %15 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %16 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ADIS16480_CLK_PPS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ADIS16495_REG_SYNC_SCALE, align 4
  store i32 %21, i32* %12, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ADIS16480_REG_DEC_RATE, align 4
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %26 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %25, i32 0, i32 2
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @adis_read_reg_16(i32* %26, i32 %27, i32* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %61

33:                                               ; preds = %24
  %34 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %35 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ADIS16480_CLK_PPS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %41 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %11, align 4
  br label %52

45:                                               ; preds = %33
  %46 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %47 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = sdiv i32 %48, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %45, %39
  %53 = load i32, i32* %11, align 4
  %54 = udiv i32 %53, 1000
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = urem i32 %56, 1000
  %58 = mul i32 %57, 1000
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %31
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
