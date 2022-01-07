; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_atxp1.c_atxp1_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_atxp1.c_atxp1_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atxp1_data = type { i32, i32, %struct.TYPE_2__, i64, %struct.i2c_client* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@ATXP1_VID = common dso_local global i32 0, align 4
@ATXP1_CVID = common dso_local global i32 0, align 4
@ATXP1_GPIO1 = common dso_local global i32 0, align 4
@ATXP1_GPIO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atxp1_data* (%struct.device*)* @atxp1_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atxp1_data* @atxp1_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.atxp1_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.atxp1_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.atxp1_data* %6, %struct.atxp1_data** %3, align 8
  %7 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %8 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %7, i32 0, i32 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %11 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @jiffies, align 4
  %14 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %15 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HZ, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @time_after(i32 %13, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %23 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* @ATXP1_VID, align 4
  %29 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %27, i32 %28)
  %30 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %31 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i8* %29, i8** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @ATXP1_CVID, align 4
  %35 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  %36 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %37 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i8* %35, i8** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @ATXP1_GPIO1, align 4
  %41 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %40)
  %42 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %43 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* @ATXP1_GPIO2, align 4
  %47 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %45, i32 %46)
  %48 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %49 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %52 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %26, %21
  %54 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  %55 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.atxp1_data*, %struct.atxp1_data** %3, align 8
  ret %struct.atxp1_data* %57
}

declare dso_local %struct.atxp1_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
