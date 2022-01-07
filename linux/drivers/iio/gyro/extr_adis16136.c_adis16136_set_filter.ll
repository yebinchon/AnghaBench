; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_set_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis16136 = type { i32 }

@adis16136_3db_divisors = common dso_local global i32* null, align 8
@ADIS16136_REG_AVG_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @adis16136_set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16136_set_filter(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adis16136*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.adis16136* @iio_priv(%struct.iio_dev* %10)
  store %struct.adis16136* %11, %struct.adis16136** %6, align 8
  %12 = load %struct.adis16136*, %struct.adis16136** %6, align 8
  %13 = call i32 @adis16136_get_freq(%struct.adis16136* %12, i32* %7)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load i32*, i32** @adis16136_3db_divisors, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %37, %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** @adis16136_3db_divisors, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = udiv i32 %26, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4
  br label %22

40:                                               ; preds = %35, %22
  %41 = load %struct.adis16136*, %struct.adis16136** %6, align 8
  %42 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %41, i32 0, i32 0
  %43 = load i32, i32* @ADIS16136_REG_AVG_CNT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @adis_write_reg_16(i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.adis16136* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis16136_get_freq(%struct.adis16136*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
