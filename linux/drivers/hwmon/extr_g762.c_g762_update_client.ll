; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_g762_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_g762_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g762_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@G762_UPDATE_INTERVAL = common dso_local global i64 0, align 8
@G762_REG_SET_CNT = common dso_local global i32 0, align 4
@G762_REG_ACT_CNT = common dso_local global i32 0, align 4
@G762_REG_FAN_STA = common dso_local global i32 0, align 4
@G762_REG_SET_OUT = common dso_local global i32 0, align 4
@G762_REG_FAN_CMD1 = common dso_local global i32 0, align 4
@G762_REG_FAN_CMD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g762_data* (%struct.device*)* @g762_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g762_data* @g762_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.g762_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.g762_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.g762_data* %7, %struct.g762_data** %3, align 8
  %8 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %9 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %8, i32 0, i32 9
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %12 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %11, i32 0, i32 7
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %16 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @G762_UPDATE_INTERVAL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_before(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %24 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %95

29:                                               ; preds = %22, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @G762_REG_SET_CNT, align 4
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %95

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %39 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @G762_REG_ACT_CNT, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %95

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %49 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* @G762_REG_FAN_STA, align 4
  %52 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %95

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %59 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @G762_REG_SET_OUT, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %95

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %69 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load i32, i32* @G762_REG_FAN_CMD1, align 4
  %72 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %95

76:                                               ; preds = %66
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %79 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = load i32, i32* @G762_REG_FAN_CMD2, align 4
  %82 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %95

86:                                               ; preds = %76
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %89 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* @jiffies, align 8
  %91 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %92 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %91, i32 0, i32 8
  store i64 %90, i64* %92, align 8
  %93 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %94 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %86, %85, %75, %65, %55, %45, %35, %28
  %96 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  %97 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %96, i32 0, i32 7
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = call %struct.g762_data* @ERR_PTR(i32 %102)
  store %struct.g762_data* %103, %struct.g762_data** %3, align 8
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.g762_data*, %struct.g762_data** %3, align 8
  ret %struct.g762_data* %105
}

declare dso_local %struct.g762_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.g762_data* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
