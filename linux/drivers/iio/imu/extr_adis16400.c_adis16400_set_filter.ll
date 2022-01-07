; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_set_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis16400_state = type { i32 }

@adis16400_3db_divisors = common dso_local global i32* null, align 8
@ADIS16400_SENS_AVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @adis16400_set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16400_set_filter(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adis16400_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.adis16400_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.adis16400_state* %13, %struct.adis16400_state** %8, align 8
  %14 = load i32*, i32** @adis16400_3db_divisors, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %32, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** @adis16400_3db_divisors, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %21, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %10, align 4
  br label %17

35:                                               ; preds = %30, %17
  %36 = load %struct.adis16400_state*, %struct.adis16400_state** %8, align 8
  %37 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %36, i32 0, i32 0
  %38 = load i32, i32* @ADIS16400_SENS_AVG, align 4
  %39 = call i32 @adis_read_reg_16(i32* %37, i32 %38, i32* %9)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.adis16400_state*, %struct.adis16400_state** %8, align 8
  %46 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %45, i32 0, i32 0
  %47 = load i32, i32* @ADIS16400_SENS_AVG, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, -8
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @adis_write_reg_16(i32* %46, i32 %47, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %42
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.adis16400_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
