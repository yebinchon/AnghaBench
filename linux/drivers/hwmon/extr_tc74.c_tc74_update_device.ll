; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc74.c_tc74_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc74.c_tc74_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tc74_data = type { i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TC74_REG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TC74_REG_CONFIG read err %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@TC74_REG_TEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"TC74_REG_TEMP read err %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tc74_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc74_update_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tc74_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.tc74_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.tc74_data* %9, %struct.tc74_data** %4, align 8
  %10 = load %struct.tc74_data*, %struct.tc74_data** %4, align 8
  %11 = getelementptr inbounds %struct.tc74_data, %struct.tc74_data* %10, i32 0, i32 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.tc74_data*, %struct.tc74_data** %4, align 8
  %14 = getelementptr inbounds %struct.tc74_data, %struct.tc74_data* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock_interruptible(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %83

20:                                               ; preds = %1
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.tc74_data*, %struct.tc74_data** %4, align 8
  %23 = getelementptr inbounds %struct.tc74_data, %struct.tc74_data* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @time_after(i64 %21, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.tc74_data*, %struct.tc74_data** %4, align 8
  %29 = getelementptr inbounds %struct.tc74_data, %struct.tc74_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* @TC74_REG_CONFIG, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %6, align 4
  br label %78

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @BIT(i32 6)
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %78

52:                                               ; preds = %44
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = load i32, i32* @TC74_REG_TEMP, align 4
  %55 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %6, align 4
  br label %78

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.tc74_data*, %struct.tc74_data** %4, align 8
  %67 = getelementptr inbounds %struct.tc74_data, %struct.tc74_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i32, i32* @HZ, align 4
  %70 = sdiv i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = load %struct.tc74_data*, %struct.tc74_data** %4, align 8
  %74 = getelementptr inbounds %struct.tc74_data, %struct.tc74_data* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.tc74_data*, %struct.tc74_data** %4, align 8
  %76 = getelementptr inbounds %struct.tc74_data, %struct.tc74_data* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %64, %27
  br label %78

78:                                               ; preds = %77, %58, %49, %38
  %79 = load %struct.tc74_data*, %struct.tc74_data** %4, align 8
  %80 = getelementptr inbounds %struct.tc74_data, %struct.tc74_data* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %18
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.tc74_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
