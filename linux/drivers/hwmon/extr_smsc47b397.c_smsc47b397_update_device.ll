; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47b397.c_smsc47b397_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47b397.c_smsc47b397_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc47b397_data = type { i32, i32*, i32*, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"starting device update...\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"... device update complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smsc47b397_data* (%struct.device*)* @smsc47b397_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smsc47b397_data* @smsc47b397_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.smsc47b397_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.smsc47b397_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.smsc47b397_data* %6, %struct.smsc47b397_data** %3, align 8
  %7 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %8 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %12 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @time_after(i64 %10, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %20 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %63, %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @SMSC47B397_REG_TEMP(i32 %31)
  %33 = call i32 @smsc47b397_read_value(%struct.smsc47b397_data* %30, i32 %32)
  %34 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %35 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @SMSC47B397_REG_FAN_LSB(i32 %41)
  %43 = call i32 @smsc47b397_read_value(%struct.smsc47b397_data* %40, i32 %42)
  %44 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %45 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @SMSC47B397_REG_FAN_MSB(i32 %51)
  %53 = call i32 @smsc47b397_read_value(%struct.smsc47b397_data* %50, i32 %52)
  %54 = shl i32 %53, 8
  %55 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %56 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %54
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %29
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %26

66:                                               ; preds = %26
  %67 = load i64, i64* @jiffies, align 8
  %68 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %69 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %71 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %2, align 8
  %73 = call i32 @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %66, %18
  %75 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  %76 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %75, i32 0, i32 3
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %3, align 8
  ret %struct.smsc47b397_data* %78
}

declare dso_local %struct.smsc47b397_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @smsc47b397_read_value(%struct.smsc47b397_data*, i32) #1

declare dso_local i32 @SMSC47B397_REG_TEMP(i32) #1

declare dso_local i32 @SMSC47B397_REG_FAN_LSB(i32) #1

declare dso_local i32 @SMSC47B397_REG_FAN_MSB(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
