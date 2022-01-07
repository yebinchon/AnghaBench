; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_sysfs_fw_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_sysfs_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mip4_ts = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to retrieve firmware %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Firmware update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mip4_sysfs_fw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_sysfs_fw_update(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.mip4_ts*, align 8
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.mip4_ts* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.mip4_ts* %17, %struct.mip4_ts** %11, align 8
  %18 = load %struct.mip4_ts*, %struct.mip4_ts** %11, align 8
  %19 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @request_firmware(%struct.firmware** %12, i32 %20, %struct.device* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load %struct.mip4_ts*, %struct.mip4_ts** %11, align 8
  %27 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.mip4_ts*, %struct.mip4_ts** %11, align 8
  %31 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %65

36:                                               ; preds = %4
  %37 = load %struct.mip4_ts*, %struct.mip4_ts** %11, align 8
  %38 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.mip4_ts*, %struct.mip4_ts** %11, align 8
  %43 = load %struct.firmware*, %struct.firmware** %12, align 8
  %44 = call i32 @mip4_execute_fw_update(%struct.mip4_ts* %42, %struct.firmware* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.mip4_ts*, %struct.mip4_ts** %11, align 8
  %46 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.firmware*, %struct.firmware** %12, align 8
  %51 = call i32 @release_firmware(%struct.firmware* %50)
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %36
  %55 = load %struct.mip4_ts*, %struct.mip4_ts** %11, align 8
  %56 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %13, align 4
  %60 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %65

62:                                               ; preds = %36
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %54, %25
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.mip4_ts* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mip4_execute_fw_update(%struct.mip4_ts*, %struct.firmware*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
