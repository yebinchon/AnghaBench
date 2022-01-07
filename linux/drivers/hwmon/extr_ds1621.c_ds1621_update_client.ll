; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds1621.c_ds1621_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds1621.c_ds1621_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1621_data = type { i32, i32, i64, i32, i32*, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Starting ds1621 update\0A\00", align 1
@DS1621_REG_CONF = common dso_local global i32 0, align 4
@DS1621_REG_TEMP = common dso_local global i32* null, align 8
@DS1621_ALARM_TEMP_LOW = common dso_local global i32 0, align 4
@DS1621_ALARM_TEMP_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ds1621_data* (%struct.device*)* @ds1621_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ds1621_data* @ds1621_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ds1621_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.ds1621_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.ds1621_data* %8, %struct.ds1621_data** %3, align 8
  %9 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %10 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %9, i32 0, i32 6
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %13 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %17 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %20 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i64 @time_after(i64 %15, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %27 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %117, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @DS1621_REG_CONF, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  %37 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %38 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %60, %30
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %42 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32*, i32** @DS1621_REG_TEMP, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %47, i32 %52)
  %54 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %55 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %65 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %5, align 4
  %67 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %68 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %73 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %71, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load i32, i32* @DS1621_ALARM_TEMP_LOW, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %63
  %84 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %85 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %90 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = load i32, i32* @DS1621_ALARM_TEMP_HIGH, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %95, %83
  %101 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %102 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load i32, i32* @DS1621_REG_CONF, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %100
  %112 = load i64, i64* @jiffies, align 8
  %113 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %114 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %116 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %111, %25
  %118 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %119 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  ret %struct.ds1621_data* %121
}

declare dso_local %struct.ds1621_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
