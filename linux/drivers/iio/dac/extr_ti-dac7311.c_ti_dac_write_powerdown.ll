; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7311.c_ti_dac_write_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7311.c_ti_dac_write_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ti_dac_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @ti_dac_write_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dac_write_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ti_dac_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ti_dac_chip* @iio_priv(%struct.iio_dev* %16)
  store %struct.ti_dac_chip* %17, %struct.ti_dac_chip** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @strtobool(i8* %18, i32* %13)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %6, align 4
  br label %54

24:                                               ; preds = %5
  %25 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @ti_dac_get_power(%struct.ti_dac_chip* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %29 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @ti_dac_cmd(%struct.ti_dac_chip* %31, i32 %32, i32 0)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %39 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %24
  %41 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %42 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  br label %51

49:                                               ; preds = %40
  %50 = load i64, i64* %11, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i64 [ %48, %46 ], [ %50, %49 ]
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %22
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.ti_dac_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @ti_dac_get_power(%struct.ti_dac_chip*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ti_dac_cmd(%struct.ti_dac_chip*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
