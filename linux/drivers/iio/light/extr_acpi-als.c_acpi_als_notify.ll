; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_acpi-als.c_acpi_als_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_acpi-als.c_acpi_als_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.acpi_als = type { i32, i32* }

@ACPI_ALS_EVT_BUFFER_SIZE = common dso_local global i32 0, align 4
@ACPI_ALS_ILLUMINANCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unhandled ACPI ALS event (%08x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_als_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_als_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.acpi_als*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = call %struct.iio_dev* @acpi_driver_data(%struct.acpi_device* %11)
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.acpi_als* @iio_priv(%struct.iio_dev* %13)
  store %struct.acpi_als* %14, %struct.acpi_als** %6, align 8
  %15 = load %struct.acpi_als*, %struct.acpi_als** %6, align 8
  %16 = getelementptr inbounds %struct.acpi_als, %struct.acpi_als* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = call i32 @iio_get_time_ns(%struct.iio_dev* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.acpi_als*, %struct.acpi_als** %6, align 8
  %21 = getelementptr inbounds %struct.acpi_als, %struct.acpi_als* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @ACPI_ALS_EVT_BUFFER_SIZE, align 4
  %25 = call i32 @memset(i32* %23, i32 0, i32 %24)
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %38 [
    i32 128, label %27
  ]

27:                                               ; preds = %2
  %28 = load %struct.acpi_als*, %struct.acpi_als** %6, align 8
  %29 = load i32, i32* @ACPI_ALS_ILLUMINANCE, align 4
  %30 = call i32 @acpi_als_read_value(%struct.acpi_als* %28, i32 %29, i32* %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %50

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %43

38:                                               ; preds = %2
  %39 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %50

43:                                               ; preds = %34
  %44 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %45 = load %struct.acpi_als*, %struct.acpi_als** %6, align 8
  %46 = getelementptr inbounds %struct.acpi_als, %struct.acpi_als* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %44, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %38, %33
  %51 = load %struct.acpi_als*, %struct.acpi_als** %6, align 8
  %52 = getelementptr inbounds %struct.acpi_als, %struct.acpi_als* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  ret void
}

declare dso_local %struct.iio_dev* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local %struct.acpi_als* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @acpi_als_read_value(%struct.acpi_als*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
