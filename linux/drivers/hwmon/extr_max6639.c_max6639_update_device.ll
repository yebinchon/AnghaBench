; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_max6639_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_max6639_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6639_data = type { i32, i32, i32*, i32*, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting max6639 update\0A\00", align 1
@MAX6639_REG_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max6639_data* (%struct.device*)* @max6639_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max6639_data* @max6639_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max6639_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.max6639_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.max6639_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.max6639_data* %10, %struct.max6639_data** %3, align 8
  %11 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %12 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %11, i32 0, i32 7
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  store %struct.max6639_data* %14, %struct.max6639_data** %5, align 8
  %15 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %16 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %15, i32 0, i32 5
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %20 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 2, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i64 @time_after(i64 %18, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %30 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %125, label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @MAX6639_REG_STATUS, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.max6639_data* @ERR_PTR(i32 %43)
  store %struct.max6639_data* %44, %struct.max6639_data** %5, align 8
  br label %126

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %48 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %116, %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %119

52:                                               ; preds = %49
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @MAX6639_REG_FAN_CNT(i32 %54)
  %56 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.max6639_data* @ERR_PTR(i32 %60)
  store %struct.max6639_data* %61, %struct.max6639_data** %5, align 8
  br label %126

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %65 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @MAX6639_REG_TEMP_EXT(i32 %71)
  %73 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %70, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* %8, align 4
  %78 = call %struct.max6639_data* @ERR_PTR(i32 %77)
  store %struct.max6639_data* %78, %struct.max6639_data** %5, align 8
  br label %126

79:                                               ; preds = %62
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 5
  %82 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %83 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 1
  %90 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %91 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @MAX6639_REG_TEMP(i32 %97)
  %99 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %96, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %79
  %103 = load i32, i32* %8, align 4
  %104 = call %struct.max6639_data* @ERR_PTR(i32 %103)
  store %struct.max6639_data* %104, %struct.max6639_data** %5, align 8
  br label %126

105:                                              ; preds = %79
  %106 = load i32, i32* %8, align 4
  %107 = shl i32 %106, 3
  %108 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %109 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %107
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %49

119:                                              ; preds = %49
  %120 = load i64, i64* @jiffies, align 8
  %121 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %122 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %121, i32 0, i32 6
  store i64 %120, i64* %122, align 8
  %123 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %124 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %119, %28
  br label %126

126:                                              ; preds = %125, %102, %76, %59, %42
  %127 = load %struct.max6639_data*, %struct.max6639_data** %3, align 8
  %128 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %127, i32 0, i32 5
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.max6639_data*, %struct.max6639_data** %5, align 8
  ret %struct.max6639_data* %130
}

declare dso_local %struct.max6639_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.max6639_data* @ERR_PTR(i32) #1

declare dso_local i32 @MAX6639_REG_FAN_CNT(i32) #1

declare dso_local i32 @MAX6639_REG_TEMP_EXT(i32) #1

declare dso_local i32 @MAX6639_REG_TEMP(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
