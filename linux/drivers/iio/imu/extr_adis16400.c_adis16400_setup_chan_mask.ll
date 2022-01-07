; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_setup_chan_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_setup_chan_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis16400_state = type { i32*, %struct.adis16400_chip_info* }
%struct.adis16400_chip_info = type { i32, %struct.iio_chan_spec* }
%struct.iio_chan_spec = type { i64 }

@ADIS16400_SCAN_TIMESTAMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adis16400_state*)* @adis16400_setup_chan_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adis16400_setup_chan_mask(%struct.adis16400_state* %0) #0 {
  %2 = alloca %struct.adis16400_state*, align 8
  %3 = alloca %struct.adis16400_chip_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_chan_spec*, align 8
  store %struct.adis16400_state* %0, %struct.adis16400_state** %2, align 8
  %6 = load %struct.adis16400_state*, %struct.adis16400_state** %2, align 8
  %7 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %6, i32 0, i32 1
  %8 = load %struct.adis16400_chip_info*, %struct.adis16400_chip_info** %7, align 8
  store %struct.adis16400_chip_info* %8, %struct.adis16400_chip_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.adis16400_chip_info*, %struct.adis16400_chip_info** %3, align 8
  %12 = getelementptr inbounds %struct.adis16400_chip_info, %struct.adis16400_chip_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.adis16400_chip_info*, %struct.adis16400_chip_info** %3, align 8
  %17 = getelementptr inbounds %struct.adis16400_chip_info, %struct.adis16400_chip_info* %16, i32 0, i32 1
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i64 %20
  store %struct.iio_chan_spec* %21, %struct.iio_chan_spec** %5, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %15
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADIS16400_SCAN_TIMESTAMP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @BIT(i64 %35)
  %37 = load %struct.adis16400_state*, %struct.adis16400_state** %2, align 8
  %38 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %32, %26, %15
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %9

47:                                               ; preds = %9
  ret void
}

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
