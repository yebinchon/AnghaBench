; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-device.c_iio_sw_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-device.c_iio_sw_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_device = type { %struct.iio_sw_device_type* }
%struct.iio_sw_device_type = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iio_sw_device* (i8*)* }

@.str = private unnamed_addr constant [25 x i8] c"Invalid device type: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_sw_device* @iio_sw_device_create(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.iio_sw_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_sw_device*, align 8
  %7 = alloca %struct.iio_sw_device_type*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.iio_sw_device_type* @iio_get_sw_device_type(i8* %8)
  store %struct.iio_sw_device_type* %9, %struct.iio_sw_device_type** %7, align 8
  %10 = load %struct.iio_sw_device_type*, %struct.iio_sw_device_type** %7, align 8
  %11 = icmp ne %struct.iio_sw_device_type* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.iio_sw_device* @ERR_PTR(i32 %16)
  store %struct.iio_sw_device* %17, %struct.iio_sw_device** %3, align 8
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.iio_sw_device_type*, %struct.iio_sw_device_type** %7, align 8
  %20 = getelementptr inbounds %struct.iio_sw_device_type, %struct.iio_sw_device_type* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.iio_sw_device* (i8*)*, %struct.iio_sw_device* (i8*)** %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call %struct.iio_sw_device* %23(i8* %24)
  store %struct.iio_sw_device* %25, %struct.iio_sw_device** %6, align 8
  %26 = load %struct.iio_sw_device*, %struct.iio_sw_device** %6, align 8
  %27 = call i64 @IS_ERR(%struct.iio_sw_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.iio_sw_device_type*, %struct.iio_sw_device_type** %7, align 8
  %32 = load %struct.iio_sw_device*, %struct.iio_sw_device** %6, align 8
  %33 = getelementptr inbounds %struct.iio_sw_device, %struct.iio_sw_device* %32, i32 0, i32 0
  store %struct.iio_sw_device_type* %31, %struct.iio_sw_device_type** %33, align 8
  %34 = load %struct.iio_sw_device*, %struct.iio_sw_device** %6, align 8
  store %struct.iio_sw_device* %34, %struct.iio_sw_device** %3, align 8
  br label %41

35:                                               ; preds = %29
  %36 = load %struct.iio_sw_device_type*, %struct.iio_sw_device_type** %7, align 8
  %37 = getelementptr inbounds %struct.iio_sw_device_type, %struct.iio_sw_device_type* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @module_put(i32 %38)
  %40 = load %struct.iio_sw_device*, %struct.iio_sw_device** %6, align 8
  store %struct.iio_sw_device* %40, %struct.iio_sw_device** %3, align 8
  br label %41

41:                                               ; preds = %35, %30, %12
  %42 = load %struct.iio_sw_device*, %struct.iio_sw_device** %3, align 8
  ret %struct.iio_sw_device* %42
}

declare dso_local %struct.iio_sw_device_type* @iio_get_sw_device_type(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.iio_sw_device* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.iio_sw_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
