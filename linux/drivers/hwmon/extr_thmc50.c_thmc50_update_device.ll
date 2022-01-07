; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_thmc50_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_thmc50_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thmc50_data = type { i64, i32, i32, i64, i8*, i8*, i8**, i8**, i8**, i8**, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@HZ = common dso_local global i32 0, align 4
@thmc50 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@THMC50_REG_CONF = common dso_local global i32 0, align 4
@THMC50_REG_CONF_PROGRAMMED = common dso_local global i32 0, align 4
@THMC50_REG_TEMP = common dso_local global i32* null, align 8
@THMC50_REG_TEMP_MAX = common dso_local global i32* null, align 8
@THMC50_REG_TEMP_MIN = common dso_local global i32* null, align 8
@THMC50_REG_TEMP_CRITICAL = common dso_local global i32* null, align 8
@THMC50_REG_TEMP_DEFAULT = common dso_local global i32* null, align 8
@THMC50_REG_ANALOG_OUT = common dso_local global i32 0, align 4
@THMC50_REG_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thmc50_data* (%struct.device*)* @thmc50_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thmc50_data* @thmc50_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.thmc50_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.thmc50_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.thmc50_data* %10, %struct.thmc50_data** %3, align 8
  %11 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %12 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %11, i32 0, i32 11
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = sdiv i32 %14, 5
  %16 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %17 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @thmc50, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @HZ, align 4
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = add nsw i32 %15, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %28 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %32 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i64 @time_after(i64 %30, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %24
  %40 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %41 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %145, label %44

44:                                               ; preds = %39, %24
  %45 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %46 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %45, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 3, i32 2
  store i32 %50, i32* %6, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load i32, i32* @THMC50_REG_CONF, align 4
  %53 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @THMC50_REG_CONF_PROGRAMMED, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %126, %44
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %129

62:                                               ; preds = %58
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load i32*, i32** @THMC50_REG_TEMP, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %63, i32 %68)
  %70 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %71 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %70, i32 0, i32 9
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* %69, i8** %75, align 8
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load i32*, i32** @THMC50_REG_TEMP_MAX, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %76, i32 %81)
  %83 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %84 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %83, i32 0, i32 8
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load i32*, i32** @THMC50_REG_TEMP_MIN, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %89, i32 %94)
  %96 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %97 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %96, i32 0, i32 7
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %95, i8** %101, align 8
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %62
  %106 = load i32*, i32** @THMC50_REG_TEMP_CRITICAL, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  br label %117

111:                                              ; preds = %62
  %112 = load i32*, i32** @THMC50_REG_TEMP_DEFAULT, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  br label %117

117:                                              ; preds = %111, %105
  %118 = phi i32 [ %110, %105 ], [ %116, %111 ]
  %119 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %102, i32 %118)
  %120 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %121 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %120, i32 0, i32 6
  %122 = load i8**, i8*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %119, i8** %125, align 8
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %58

129:                                              ; preds = %58
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = load i32, i32* @THMC50_REG_ANALOG_OUT, align 4
  %132 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %130, i32 %131)
  %133 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %134 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = load i32, i32* @THMC50_REG_INTR, align 4
  %137 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %135, i32 %136)
  %138 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %139 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load i64, i64* @jiffies, align 8
  %141 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %142 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %144 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %143, i32 0, i32 1
  store i32 1, i32* %144, align 8
  br label %145

145:                                              ; preds = %129, %39
  %146 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %147 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %146, i32 0, i32 2
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  ret %struct.thmc50_data* %149
}

declare dso_local %struct.thmc50_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
