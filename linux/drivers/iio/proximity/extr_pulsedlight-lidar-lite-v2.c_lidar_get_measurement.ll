; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_pulsedlight-lidar-lite-v2.c_lidar_get_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_pulsedlight-lidar-lite-v2.c_lidar_get_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lidar_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@LIDAR_REG_CONTROL_ACQUIRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot send start measurement command\00", align 1
@LIDAR_REG_STATUS = common dso_local global i32 0, align 4
@LIDAR_REG_STATUS_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LIDAR_REG_STATUS_READY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lidar_data*, i64*)* @lidar_get_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lidar_get_measurement(%struct.lidar_data* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lidar_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lidar_data* %0, %struct.lidar_data** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.lidar_data*, %struct.lidar_data** %4, align 8
  %10 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  store i32 10, i32* %7, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_get_sync(i32* %13)
  %15 = load %struct.lidar_data*, %struct.lidar_data** %4, align 8
  %16 = load i32, i32* @LIDAR_REG_CONTROL_ACQUIRE, align 4
  %17 = call i32 @lidar_write_control(%struct.lidar_data* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = call i32 @usleep_range(i32 1000, i32 2000)
  %32 = load %struct.lidar_data*, %struct.lidar_data** %4, align 8
  %33 = load i32, i32* @LIDAR_REG_STATUS, align 4
  %34 = call i32 @lidar_read_byte(%struct.lidar_data* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %59

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LIDAR_REG_STATUS_INVALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64*, i64** %5, align 8
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %59

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @LIDAR_REG_STATUS_READY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load %struct.lidar_data*, %struct.lidar_data** %4, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = call i32 @lidar_read_measurement(%struct.lidar_data* %53, i64* %54)
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %26

59:                                               ; preds = %52, %43, %37, %26
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @pm_runtime_mark_last_busy(i32* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 @pm_runtime_put_autosuspend(i32* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @lidar_write_control(%struct.lidar_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @lidar_read_byte(%struct.lidar_data*, i32) #1

declare dso_local i32 @lidar_read_measurement(%struct.lidar_data*, i64*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
