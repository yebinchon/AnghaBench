; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_adm1029_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_adm1029_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1029_data = type { i32, i32, i64, i8**, i8**, i8**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Updating adm1029 data\0A\00", align 1
@ADM1029_REG_TEMP = common dso_local global i32* null, align 8
@ADM1029_REG_FAN = common dso_local global i32* null, align 8
@ADM1029_REG_FAN_DIV = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm1029_data* (%struct.device*)* @adm1029_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm1029_data* @adm1029_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.adm1029_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.adm1029_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.adm1029_data* %7, %struct.adm1029_data** %3, align 8
  %8 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %9 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %8, i32 0, i32 6
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %12 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %16 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %14, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %26 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %107, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** @ADM1029_REG_TEMP, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32*, i32** @ADM1029_REG_TEMP, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %44)
  %46 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %47 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %46, i32 0, i32 5
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** @ADM1029_REG_FAN, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32*, i32** @ADM1029_REG_FAN, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %67)
  %69 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %70 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %56

78:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %98, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32*, i32** @ADM1029_REG_FAN_DIV, align 8
  %82 = call i32 @ARRAY_SIZE(i32* %81)
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = load i32*, i32** @ADM1029_REG_FAN_DIV, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %85, i32 %90)
  %92 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %93 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %92, i32 0, i32 3
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %91, i8** %97, align 8
  br label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %79

101:                                              ; preds = %79
  %102 = load i64, i64* @jiffies, align 8
  %103 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %104 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %106 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %101, %24
  %108 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  %109 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %108, i32 0, i32 1
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.adm1029_data*, %struct.adm1029_data** %3, align 8
  ret %struct.adm1029_data* %111
}

declare dso_local %struct.adm1029_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
