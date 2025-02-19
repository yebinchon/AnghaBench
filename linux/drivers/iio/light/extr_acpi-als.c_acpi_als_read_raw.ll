; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_acpi-als.c_acpi_als_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_acpi-als.c_acpi_als_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.acpi_als = type { i32 }

@IIO_CHAN_INFO_PROCESSED = common dso_local global i64 0, align 8
@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i64 0, align 8
@ACPI_ALS_ILLUMINANCE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @acpi_als_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_als_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.acpi_als*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.acpi_als* @iio_priv(%struct.iio_dev* %15)
  store %struct.acpi_als* %16, %struct.acpi_als** %12, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @IIO_CHAN_INFO_PROCESSED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %48

27:                                               ; preds = %20, %5
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IIO_LIGHT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %48

36:                                               ; preds = %27
  %37 = load %struct.acpi_als*, %struct.acpi_als** %12, align 8
  %38 = load i32, i32* @ACPI_ALS_ILLUMINANCE, align 4
  %39 = call i32 @acpi_als_read_value(%struct.acpi_als* %37, i32 %38, i32* %13)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %6, align 4
  br label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %42, %33, %24
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.acpi_als* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @acpi_als_read_value(%struct.acpi_als*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
