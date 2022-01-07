; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_master_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_master_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { %struct.st_lsm6dsx_hw* }
%struct.st_lsm6dsx_hw = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.st_lsm6dsx_shub_settings }
%struct.st_lsm6dsx_shub_settings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_sensor*, i32)* @st_lsm6dsx_shub_master_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_shub_settings*, align 8
  %7 = alloca %struct.st_lsm6dsx_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %11 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %10, i32 0, i32 0
  %12 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  store %struct.st_lsm6dsx_hw* %12, %struct.st_lsm6dsx_hw** %7, align 8
  %13 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @st_lsm6dsx_sensor_set_enable(%struct.st_lsm6dsx_sensor* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %22 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %25 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.st_lsm6dsx_shub_settings* %27, %struct.st_lsm6dsx_shub_settings** %6, align 8
  %28 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %29 = call i32 @st_lsm6dsx_set_page(%struct.st_lsm6dsx_hw* %28, i32 1)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %55

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %6, align 8
  %36 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 %34, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %41 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %6, align 8
  %44 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %6, align 8
  %48 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @regmap_update_bits(i32 %42, i32 %46, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %54 = call i32 @st_lsm6dsx_set_page(%struct.st_lsm6dsx_hw* %53, i32 0)
  br label %55

55:                                               ; preds = %33, %32
  %56 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %57 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @st_lsm6dsx_sensor_set_enable(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @st_lsm6dsx_set_page(%struct.st_lsm6dsx_hw*, i32) #1

declare dso_local i32 @ST_LSM6DSX_SHIFT_VAL(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
