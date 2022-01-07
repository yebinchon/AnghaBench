; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_tc654_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_tc654_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc654_data = type { i32, i32*, i32*, i32, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TC654_UPDATE_INTERVAL = common dso_local global i64 0, align 8
@TC654_REG_CONFIG = common dso_local global i32 0, align 4
@TC654_REG_STATUS = common dso_local global i32 0, align 4
@TC654_REG_DUTY_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc654_data* (%struct.device*)* @tc654_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc654_data* @tc654_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tc654_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.tc654_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.tc654_data* %7, %struct.tc654_data** %3, align 8
  %8 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %9 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %8, i32 0, i32 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %12 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %11, i32 0, i32 6
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %16 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TC654_UPDATE_INTERVAL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_before(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %24 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %114

29:                                               ; preds = %22, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @TC654_REG_RPM(i32 0)
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %114

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %39 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = call i32 @TC654_REG_RPM(i32 1)
  %44 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %114

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %51 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = call i32 @TC654_REG_FAN_FAULT(i32 0)
  %56 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %114

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %63 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = call i32 @TC654_REG_FAN_FAULT(i32 1)
  %68 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %114

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %75 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load i32, i32* @TC654_REG_CONFIG, align 4
  %80 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %114

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %87 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = load i32, i32* @TC654_REG_STATUS, align 4
  %90 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %114

94:                                               ; preds = %84
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %97 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load i32, i32* @TC654_REG_DUTY_CYCLE, align 4
  %100 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %114

104:                                              ; preds = %94
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, 15
  %107 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %108 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i64, i64* @jiffies, align 8
  %110 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %111 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %110, i32 0, i32 7
  store i64 %109, i64* %111, align 8
  %112 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %113 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %104, %103, %93, %83, %71, %59, %47, %35, %28
  %115 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  %116 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %115, i32 0, i32 6
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %5, align 4
  %122 = call %struct.tc654_data* @ERR_PTR(i32 %121)
  store %struct.tc654_data* %122, %struct.tc654_data** %3, align 8
  br label %123

123:                                              ; preds = %120, %114
  %124 = load %struct.tc654_data*, %struct.tc654_data** %3, align 8
  ret %struct.tc654_data* %124
}

declare dso_local %struct.tc654_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @TC654_REG_RPM(i32) #1

declare dso_local i32 @TC654_REG_FAN_FAULT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tc654_data* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
