; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis16480 = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADIS16480_CLK_PPS = common dso_local global i64 0, align 8
@ADIS16495_REG_SYNC_SCALE = common dso_local global i32 0, align 4
@ADIS16480_REG_DEC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @adis16480_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_set_freq(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adis16480*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %11)
  store %struct.adis16480* %12, %struct.adis16480** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 1000
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 1000
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %84

32:                                               ; preds = %21
  %33 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %34 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ADIS16480_CLK_PPS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %41 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = udiv i32 %39, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @ADIS16495_REG_SYNC_SCALE, align 4
  store i32 %44, i32* %10, align 4
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %47 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @ADIS16480_REG_DEC_RATE, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %55 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ugt i32 %53, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %62 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %60, %52
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %71 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ADIS16480_CLK_PPS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, -1
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %69, %66
  %79 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %80 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %79, i32 0, i32 2
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @adis_write_reg_16(i32* %80, i32 %81, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %29, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
