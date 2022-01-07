; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_adm1021_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_adm1021_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1021_data = type { i32, i32*, i32*, i64, i32*, i32, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting adm1021 update\0A\00", align 1
@lm84 = common dso_local global i64 0, align 8
@ADM1021_REG_STATUS = common dso_local global i32 0, align 4
@adm1023 = common dso_local global i64 0, align 8
@ADM1023_REG_REM_TEMP_PREC = common dso_local global i32 0, align 4
@ADM1023_REG_REM_TOS_PREC = common dso_local global i32 0, align 4
@ADM1023_REG_REM_THYST_PREC = common dso_local global i32 0, align 4
@ADM1023_REG_REM_OFFSET = common dso_local global i32 0, align 4
@ADM1023_REG_REM_OFFSET_PREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm1021_data* (%struct.device*)* @adm1021_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm1021_data* @adm1021_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.adm1021_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.adm1021_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.adm1021_data* %7, %struct.adm1021_data** %3, align 8
  %8 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %9 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %8, i32 0, i32 10
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %12 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %11, i32 0, i32 8
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %16 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %15, i32 0, i32 9
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
  %28 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %29 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %144, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %79, %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %82

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ADM1021_REG_TEMP(i32 %40)
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %41)
  %43 = mul nsw i32 1000, %42
  %44 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %45 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ADM1021_REG_TOS_R(i32 %51)
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 %52)
  %54 = mul nsw i32 1000, %53
  %55 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %56 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %62 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @lm84, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %38
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ADM1021_REG_THYST_R(i32 %68)
  %70 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %67, i32 %69)
  %71 = mul nsw i32 1000, %70
  %72 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %73 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %66, %38
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %35

82:                                               ; preds = %35
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load i32, i32* @ADM1021_REG_STATUS, align 4
  %85 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %83, i32 %84)
  %86 = and i32 %85, 124
  %87 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %88 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %90 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @adm1023, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %138

94:                                               ; preds = %82
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = load i32, i32* @ADM1023_REG_REM_TEMP_PREC, align 4
  %97 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %95, i32 %96)
  %98 = ashr i32 %97, 5
  %99 = mul nsw i32 125, %98
  %100 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %101 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %99
  store i32 %105, i32* %103, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load i32, i32* @ADM1023_REG_REM_TOS_PREC, align 4
  %108 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %106, i32 %107)
  %109 = ashr i32 %108, 5
  %110 = mul nsw i32 125, %109
  %111 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %112 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %110
  store i32 %116, i32* %114, align 4
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = load i32, i32* @ADM1023_REG_REM_THYST_PREC, align 4
  %119 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %117, i32 %118)
  %120 = ashr i32 %119, 5
  %121 = mul nsw i32 125, %120
  %122 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %123 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %121
  store i32 %127, i32* %125, align 4
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = load i32, i32* @ADM1023_REG_REM_OFFSET, align 4
  %130 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %128, i32 %129)
  %131 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %132 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = load i32, i32* @ADM1023_REG_REM_OFFSET_PREC, align 4
  %135 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %133, i32 %134)
  %136 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %137 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %94, %82
  %139 = load i64, i64* @jiffies, align 8
  %140 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %141 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %140, i32 0, i32 9
  store i64 %139, i64* %141, align 8
  %142 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %143 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %138, %27
  %145 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  %146 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %145, i32 0, i32 8
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load %struct.adm1021_data*, %struct.adm1021_data** %3, align 8
  ret %struct.adm1021_data* %148
}

declare dso_local %struct.adm1021_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1021_REG_TEMP(i32) #1

declare dso_local i32 @ADM1021_REG_TOS_R(i32) #1

declare dso_local i32 @ADM1021_REG_THYST_R(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
