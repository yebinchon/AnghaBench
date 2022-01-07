; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95241.c_lm95241_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95241.c_lm95241_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm95241_data = type { i32, i32, i64, i8*, i8**, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Updating lm95241 data.\0A\00", align 1
@lm95241_reg_address = common dso_local global i32* null, align 8
@LM95241_REG_R_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm95241_data* (%struct.device*)* @lm95241_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm95241_data* @lm95241_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lm95241_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.lm95241_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.lm95241_data* %7, %struct.lm95241_data** %3, align 8
  %8 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %8, i32 0, i32 6
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %12 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %16 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %19 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @msecs_to_jiffies(i32 %20)
  %22 = add nsw i64 %17, %21
  %23 = call i64 @time_after(i64 %14, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %27 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** @lm95241_reg_address, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32*, i32** @lm95241_reg_address, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %44)
  %46 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %47 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %46, i32 0, i32 4
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @LM95241_REG_R_STATUS, align 4
  %58 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %57)
  %59 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %60 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %63 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %65 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %55, %25
  %67 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %68 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  ret %struct.lm95241_data* %70
}

declare dso_local %struct.lm95241_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
