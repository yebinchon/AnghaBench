; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_max1668_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_max1668_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1668_data = type { i32, i32, i32, i64, i8**, i8**, i8**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@MAX1668_REG_STAT1 = common dso_local global i32 0, align 4
@MAX1668_REG_STAT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max1668_data* (%struct.device*)* @max1668_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max1668_data* @max1668_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max1668_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.max1668_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.max1668_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.max1668_data* %9, %struct.max1668_data** %3, align 8
  %10 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %11 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %10, i32 0, i32 7
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  store %struct.max1668_data* %13, %struct.max1668_data** %5, align 8
  %14 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %15 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %18 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %24 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @HZ, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @time_after(i64 %22, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %149

36:                                               ; preds = %21, %1
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %107, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 5
  br i1 %39, label %40, label %110

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @MAX1668_REG_TEMP(i32 %42)
  %44 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.max1668_data* @ERR_PTR(i32 %51)
  store %struct.max1668_data* %52, %struct.max1668_data** %5, align 8
  br label %149

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %58 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %57, i32 0, i32 6
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @MAX1668_REG_LIMH_RD(i32 %64)
  %66 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %63, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %53
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.max1668_data* @ERR_PTR(i32 %73)
  store %struct.max1668_data* %74, %struct.max1668_data** %5, align 8
  br label %149

75:                                               ; preds = %53
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %80 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %79, i32 0, i32 5
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %78, i8** %84, align 8
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @MAX1668_REG_LIML_RD(i32 %86)
  %88 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %85, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %75
  %95 = load i32, i32* %6, align 4
  %96 = call %struct.max1668_data* @ERR_PTR(i32 %95)
  store %struct.max1668_data* %96, %struct.max1668_data** %5, align 8
  br label %149

97:                                               ; preds = %75
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %102 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %101, i32 0, i32 4
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %100, i8** %106, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %37

110:                                              ; preds = %37
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = load i32, i32* @MAX1668_REG_STAT1, align 4
  %113 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %111, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* %6, align 4
  %121 = call %struct.max1668_data* @ERR_PTR(i32 %120)
  store %struct.max1668_data* %121, %struct.max1668_data** %5, align 8
  br label %149

122:                                              ; preds = %110
  %123 = load i32, i32* %6, align 4
  %124 = shl i32 %123, 8
  %125 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %126 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = load i32, i32* @MAX1668_REG_STAT2, align 4
  %129 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %127, i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* %6, align 4
  %137 = call %struct.max1668_data* @ERR_PTR(i32 %136)
  store %struct.max1668_data* %137, %struct.max1668_data** %5, align 8
  br label %149

138:                                              ; preds = %122
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %141 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i64, i64* @jiffies, align 8
  %145 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %146 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  %147 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %148 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %138, %135, %119, %94, %72, %50, %35
  %150 = load %struct.max1668_data*, %struct.max1668_data** %3, align 8
  %151 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %150, i32 0, i32 2
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load %struct.max1668_data*, %struct.max1668_data** %5, align 8
  ret %struct.max1668_data* %153
}

declare dso_local %struct.max1668_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @MAX1668_REG_TEMP(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.max1668_data* @ERR_PTR(i32) #1

declare dso_local i32 @MAX1668_REG_LIMH_RD(i32) #1

declare dso_local i32 @MAX1668_REG_LIML_RD(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
