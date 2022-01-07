; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1025.c_adm1025_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1025.c_adm1025_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1025_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Updating data.\0A\00", align 1
@ADM1025_REG_STATUS1 = common dso_local global i32 0, align 4
@ADM1025_REG_STATUS2 = common dso_local global i32 0, align 4
@ADM1025_REG_VID = common dso_local global i32 0, align 4
@ADM1025_REG_VID4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm1025_data* (%struct.device*)* @adm1025_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm1025_data* @adm1025_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.adm1025_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.adm1025_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.adm1025_data* %7, %struct.adm1025_data** %3, align 8
  %8 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %9 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %8, i32 0, i32 11
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %12 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %11, i32 0, i32 9
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %16 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %14, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %26 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %136, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %67, %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ADM1025_REG_IN(i32 %38)
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %39)
  %41 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %42 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ADM1025_REG_IN_MIN(i32 %48)
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %47, i32 %49)
  %51 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %52 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ADM1025_REG_IN_MAX(i32 %58)
  %60 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %57, i32 %59)
  %61 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %62 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %36
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %33

70:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %105, %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %108

74:                                               ; preds = %71
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ADM1025_REG_TEMP(i32 %76)
  %78 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %75, i32 %77)
  %79 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %80 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @ADM1025_REG_TEMP_LOW(i32 %86)
  %88 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %85, i32 %87)
  %89 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %90 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @ADM1025_REG_TEMP_HIGH(i32 %96)
  %98 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %95, i32 %97)
  %99 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %100 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %74
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %71

108:                                              ; preds = %71
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = load i32, i32* @ADM1025_REG_STATUS1, align 4
  %111 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %109, i32 %110)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = load i32, i32* @ADM1025_REG_STATUS2, align 4
  %114 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %112, i32 %113)
  %115 = shl i32 %114, 8
  %116 = or i32 %111, %115
  %117 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %118 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 8
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = load i32, i32* @ADM1025_REG_VID, align 4
  %121 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %119, i32 %120)
  %122 = and i32 %121, 15
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = load i32, i32* @ADM1025_REG_VID4, align 4
  %125 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %123, i32 %124)
  %126 = and i32 %125, 1
  %127 = shl i32 %126, 4
  %128 = or i32 %122, %127
  %129 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %130 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 4
  %131 = load i64, i64* @jiffies, align 8
  %132 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %133 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %132, i32 0, i32 10
  store i64 %131, i64* %133, align 8
  %134 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %135 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %108, %24
  %137 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  %138 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %137, i32 0, i32 9
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load %struct.adm1025_data*, %struct.adm1025_data** %3, align 8
  ret %struct.adm1025_data* %140
}

declare dso_local %struct.adm1025_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1025_REG_IN(i32) #1

declare dso_local i32 @ADM1025_REG_IN_MIN(i32) #1

declare dso_local i32 @ADM1025_REG_IN_MAX(i32) #1

declare dso_local i32 @ADM1025_REG_TEMP(i32) #1

declare dso_local i32 @ADM1025_REG_TEMP_LOW(i32) #1

declare dso_local i32 @ADM1025_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
