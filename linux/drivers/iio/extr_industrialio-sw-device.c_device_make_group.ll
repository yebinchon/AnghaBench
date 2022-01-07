; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-device.c_device_make_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-device.c_device_make_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iio_sw_device = type { %struct.config_group }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @device_make_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @device_make_group(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_sw_device*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.config_group*, %struct.config_group** %4, align 8
  %8 = getelementptr inbounds %struct.config_group, %struct.config_group* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.iio_sw_device* @iio_sw_device_create(i32 %10, i8* %11)
  store %struct.iio_sw_device* %12, %struct.iio_sw_device** %6, align 8
  %13 = load %struct.iio_sw_device*, %struct.iio_sw_device** %6, align 8
  %14 = call i64 @IS_ERR(%struct.iio_sw_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.iio_sw_device*, %struct.iio_sw_device** %6, align 8
  %18 = call %struct.config_group* @ERR_CAST(%struct.iio_sw_device* %17)
  store %struct.config_group* %18, %struct.config_group** %3, align 8
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.iio_sw_device*, %struct.iio_sw_device** %6, align 8
  %21 = getelementptr inbounds %struct.iio_sw_device, %struct.iio_sw_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.config_group, %struct.config_group* %21, i32 0, i32 0
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @config_item_set_name(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.iio_sw_device*, %struct.iio_sw_device** %6, align 8
  %26 = getelementptr inbounds %struct.iio_sw_device, %struct.iio_sw_device* %25, i32 0, i32 0
  store %struct.config_group* %26, %struct.config_group** %3, align 8
  br label %27

27:                                               ; preds = %19, %16
  %28 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %28
}

declare dso_local %struct.iio_sw_device* @iio_sw_device_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.iio_sw_device*) #1

declare dso_local %struct.config_group* @ERR_CAST(%struct.iio_sw_device*) #1

declare dso_local i32 @config_item_set_name(%struct.TYPE_2__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
