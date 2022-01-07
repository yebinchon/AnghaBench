; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm83.c_lm83_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm83.c_lm83_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm83_data = type { i32, i32*, i32, i64, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Updating lm83 data.\0A\00", align 1
@LM83_REG_R_TEMP = common dso_local global i32* null, align 8
@LM83_REG_R_STATUS1 = common dso_local global i32 0, align 4
@LM83_REG_R_STATUS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm83_data* (%struct.device*)* @lm83_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm83_data* @lm83_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lm83_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.lm83_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.lm83_data* %7, %struct.lm83_data** %3, align 8
  %8 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %8, i32 0, i32 5
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %12 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %16 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %14, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %26 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %50, %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 9
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32*, i32** @LM83_REG_R_TEMP, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %42)
  %44 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %45 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load i32, i32* @LM83_REG_R_STATUS1, align 4
  %56 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %54, i32 %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load i32, i32* @LM83_REG_R_STATUS2, align 4
  %59 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %57, i32 %58)
  %60 = shl i32 %59, 8
  %61 = add nsw i32 %56, %60
  %62 = sext i32 %61 to i64
  %63 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %64 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* @jiffies, align 8
  %66 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %67 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %69 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %53, %24
  %71 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  %72 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %71, i32 0, i32 2
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.lm83_data*, %struct.lm83_data** %3, align 8
  ret %struct.lm83_data* %74
}

declare dso_local %struct.lm83_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
