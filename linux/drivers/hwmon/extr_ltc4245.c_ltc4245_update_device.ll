; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc4245_data = type { i32, i32, i64, i64*, i64*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ltc4245_data* (%struct.device*)* @ltc4245_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ltc4245_data* @ltc4245_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ltc4245_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.ltc4245_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.ltc4245_data* %8, %struct.ltc4245_data** %3, align 8
  %9 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %10 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %9, i32 0, i32 5
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %13 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %17 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HZ, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @time_after(i64 %15, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %25 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %109, label %28

28:                                               ; preds = %23, %1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %32 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %31, i32 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @ARRAY_SIZE(i64* %33)
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %29
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %47 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %46, i32 0, i32 4
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  br label %60

52:                                               ; preds = %36
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %55 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %54, i32 0, i32 4
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %53, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %29

64:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %98, %64
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %68 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = call i32 @ARRAY_SIZE(i64* %69)
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %65
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 16
  %76 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %73, i32 %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp slt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %72
  %83 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %84 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 0, i64* %88, align 8
  br label %97

89:                                               ; preds = %72
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %92 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %90, i64* %96, align 8
  br label %97

97:                                               ; preds = %89, %82
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %65

101:                                              ; preds = %65
  %102 = load %struct.device*, %struct.device** %2, align 8
  %103 = call i32 @ltc4245_update_gpios(%struct.device* %102)
  %104 = load i64, i64* @jiffies, align 8
  %105 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %106 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %108 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %101, %23
  %110 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %111 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %110, i32 0, i32 1
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  ret %struct.ltc4245_data* %113
}

declare dso_local %struct.ltc4245_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ltc4245_update_gpios(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
