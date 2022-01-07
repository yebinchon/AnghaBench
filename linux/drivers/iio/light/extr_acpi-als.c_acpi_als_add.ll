; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_acpi-als.c_acpi_als_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_acpi-als.c_acpi_als_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.acpi_als = type { i32, %struct.acpi_device* }
%struct.iio_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ACPI_ALS_DEVICE_NAME = common dso_local global i32 0, align 4
@acpi_als_info = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@acpi_als_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_als_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_als_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_als*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_buffer*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 16)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.acpi_als* @iio_priv(%struct.iio_dev* %16)
  store %struct.acpi_als* %17, %struct.acpi_als** %4, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 1
  store %struct.iio_dev* %18, %struct.iio_dev** %20, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = load %struct.acpi_als*, %struct.acpi_als** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_als, %struct.acpi_als* %22, i32 0, i32 1
  store %struct.acpi_device* %21, %struct.acpi_device** %23, align 8
  %24 = load %struct.acpi_als*, %struct.acpi_als** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_als, %struct.acpi_als* %24, i32 0, i32 0
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load i32, i32* @ACPI_ALS_DEVICE_NAME, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 0
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 3
  store i32* @acpi_als_info, i32** %36, align 8
  %37 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @acpi_als_channels, align 4
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @acpi_als_channels, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 0
  %49 = call %struct.iio_buffer* @devm_iio_kfifo_allocate(i32* %48)
  store %struct.iio_buffer* %49, %struct.iio_buffer** %6, align 8
  %50 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %51 = icmp ne %struct.iio_buffer* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %15
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %63

55:                                               ; preds = %15
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %58 = call i32 @iio_device_attach_buffer(%struct.iio_dev* %56, %struct.iio_buffer* %57)
  %59 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %59, i32 0, i32 0
  %61 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %62 = call i32 @devm_iio_device_register(i32* %60, %struct.iio_dev* %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %52, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.acpi_als* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.iio_buffer* @devm_iio_kfifo_allocate(i32*) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
