; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_emc2103_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_emc2103_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emc2103_data = type { i32, i32, i32, i64, i32, i32, i32, i32, i32*, i32*, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@REG_TEMP = common dso_local global i32* null, align 8
@REG_TEMP_MIN = common dso_local global i32* null, align 8
@REG_TEMP_MAX = common dso_local global i32* null, align 8
@REG_TEMP_MIN_ALARM = common dso_local global i32 0, align 4
@REG_TEMP_MAX_ALARM = common dso_local global i32 0, align 4
@REG_FAN_TACH_HI = common dso_local global i32 0, align 4
@REG_FAN_TACH_LO = common dso_local global i32 0, align 4
@REG_FAN_TARGET_HI = common dso_local global i32 0, align 4
@REG_FAN_TARGET_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.emc2103_data* (%struct.device*)* @emc2103_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.emc2103_data* @emc2103_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.emc2103_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.emc2103_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.emc2103_data* %7, %struct.emc2103_data** %3, align 8
  %8 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %9 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %8, i32 0, i32 11
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %12 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %16 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %15, i32 0, i32 3
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
  %28 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %29 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %112, label %32

32:                                               ; preds = %27, %1
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %79, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %36 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %33
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32*, i32** @REG_TEMP, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %47 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %46, i32 0, i32 10
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @read_temp_from_i2c(%struct.i2c_client* %40, i32 %45, i32* %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32*, i32** @REG_TEMP_MIN, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %60 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %59, i32 0, i32 9
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @read_u8_from_i2c(%struct.i2c_client* %53, i32 %58, i32* %64)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32*, i32** @REG_TEMP_MAX, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %73 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %72, i32 0, i32 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @read_u8_from_i2c(%struct.i2c_client* %66, i32 %71, i32* %77)
  br label %79

79:                                               ; preds = %39
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %33

82:                                               ; preds = %33
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load i32, i32* @REG_TEMP_MIN_ALARM, align 4
  %85 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %86 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %85, i32 0, i32 7
  %87 = call i32 @read_u8_from_i2c(%struct.i2c_client* %83, i32 %84, i32* %86)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = load i32, i32* @REG_TEMP_MAX_ALARM, align 4
  %90 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %91 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %90, i32 0, i32 6
  %92 = call i32 @read_u8_from_i2c(%struct.i2c_client* %88, i32 %89, i32* %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %95 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %94, i32 0, i32 5
  %96 = load i32, i32* @REG_FAN_TACH_HI, align 4
  %97 = load i32, i32* @REG_FAN_TACH_LO, align 4
  %98 = call i32 @read_fan_from_i2c(%struct.i2c_client* %93, i32* %95, i32 %96, i32 %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %101 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %100, i32 0, i32 4
  %102 = load i32, i32* @REG_FAN_TARGET_HI, align 4
  %103 = load i32, i32* @REG_FAN_TARGET_LO, align 4
  %104 = call i32 @read_fan_from_i2c(%struct.i2c_client* %99, i32* %101, i32 %102, i32 %103)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = call i32 @read_fan_config_from_i2c(%struct.i2c_client* %105)
  %107 = load i64, i64* @jiffies, align 8
  %108 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %109 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %111 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %82, %27
  %113 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  %114 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %113, i32 0, i32 2
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load %struct.emc2103_data*, %struct.emc2103_data** %3, align 8
  ret %struct.emc2103_data* %116
}

declare dso_local %struct.emc2103_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @read_temp_from_i2c(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @read_u8_from_i2c(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @read_fan_from_i2c(%struct.i2c_client*, i32*, i32, i32) #1

declare dso_local i32 @read_fan_config_from_i2c(%struct.i2c_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
