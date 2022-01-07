; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_set_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_set_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.st_lsm6dsx_ext_dev_settings* }
%struct.st_lsm6dsx_ext_dev_settings = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_sensor*, i32)* @st_lsm6dsx_shub_set_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_shub_set_odr(%struct.st_lsm6dsx_sensor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_ext_dev_settings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @st_lsm6dsx_shub_get_odr_val(%struct.st_lsm6dsx_sensor* %9, i32 %10, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %18 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %19, align 8
  store %struct.st_lsm6dsx_ext_dev_settings* %20, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %21 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %22 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %23 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %6, align 8
  %28 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @st_lsm6dsx_shub_write_with_mask(%struct.st_lsm6dsx_sensor* %21, i32 %26, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %16, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @st_lsm6dsx_shub_get_odr_val(%struct.st_lsm6dsx_sensor*, i32, i32*) #1

declare dso_local i32 @st_lsm6dsx_shub_write_with_mask(%struct.st_lsm6dsx_sensor*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
