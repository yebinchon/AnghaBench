; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm77.c_lm77_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm77.c_lm77_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm77_data = type { i32, i32, i32, i64, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Starting lm77 update\0A\00", align 1
@t_num_temp = common dso_local global i32 0, align 4
@temp_regs = common dso_local global i32* null, align 8
@LM77_REG_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm77_data* (%struct.device*)* @lm77_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm77_data* @lm77_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lm77_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.lm77_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.lm77_data* %7, %struct.lm77_data** %3, align 8
  %8 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %8, i32 0, i32 5
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %12 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %16 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %14, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %29 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %55, %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @t_num_temp, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32*, i32** @temp_regs, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lm77_read_value(%struct.i2c_client* %41, i32 %46)
  %48 = call i32 @LM77_TEMP_FROM_REG(i32 %47)
  %49 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %50 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load i32, i32* @LM77_REG_TEMP, align 4
  %61 = call i32 @lm77_read_value(%struct.i2c_client* %59, i32 %60)
  %62 = and i32 %61, 7
  %63 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %64 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* @jiffies, align 8
  %66 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %67 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %69 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %58, %27
  %71 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  %72 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %71, i32 0, i32 2
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.lm77_data*, %struct.lm77_data** %3, align 8
  ret %struct.lm77_data* %74
}

declare dso_local %struct.lm77_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @LM77_TEMP_FROM_REG(i32) #1

declare dso_local i32 @lm77_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
