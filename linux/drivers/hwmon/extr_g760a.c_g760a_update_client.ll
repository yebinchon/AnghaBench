; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g760a.c_g760a_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g760a.c_g760a_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g760a_data = type { i32, i32, i64, i8*, i8*, i8*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@G760A_UPDATE_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Starting g760a update\0A\00", align 1
@G760A_REG_SET_CNT = common dso_local global i32 0, align 4
@G760A_REG_ACT_CNT = common dso_local global i32 0, align 4
@G760A_REG_FAN_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g760a_data* (%struct.device*)* @g760a_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g760a_data* @g760a_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.g760a_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.g760a_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.g760a_data* %6, %struct.g760a_data** %3, align 8
  %7 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %8 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %7, i32 0, i32 6
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %11 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %15 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @G760A_UPDATE_INTERVAL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @time_after(i64 %13, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %23 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @G760A_REG_SET_CNT, align 4
  %32 = call i8* @g760a_read_value(%struct.i2c_client* %30, i32 %31)
  %33 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %34 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @G760A_REG_ACT_CNT, align 4
  %37 = call i8* @g760a_read_value(%struct.i2c_client* %35, i32 %36)
  %38 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %39 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @G760A_REG_FAN_STA, align 4
  %42 = call i8* @g760a_read_value(%struct.i2c_client* %40, i32 %41)
  %43 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %44 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* @jiffies, align 8
  %46 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %47 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %49 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %26, %21
  %51 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  %52 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.g760a_data*, %struct.g760a_data** %3, align 8
  ret %struct.g760a_data* %54
}

declare dso_local %struct.g760a_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @g760a_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
