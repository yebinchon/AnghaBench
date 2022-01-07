; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6642.c_max6642_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6642.c_max6642_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6642_data = type { i32, i32*, i32, i64, i8*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Updating max6642 data.\0A\00", align 1
@MAX6642_REG_R_LOCAL_TEMPL = common dso_local global i32 0, align 4
@MAX6642_REG_R_LOCAL_TEMP = common dso_local global i32 0, align 4
@MAX6642_REG_R_REMOTE_TEMPL = common dso_local global i32 0, align 4
@MAX6642_REG_R_REMOTE_TEMP = common dso_local global i32 0, align 4
@MAX6642_REG_R_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max6642_data* (%struct.device*)* @max6642_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max6642_data* @max6642_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max6642_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.max6642_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.max6642_data* %8, %struct.max6642_data** %3, align 8
  %9 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %10 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %9, i32 0, i32 5
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %13 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %17 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HZ, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @time_after(i64 %15, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %25 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %81, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @MAX6642_REG_R_LOCAL_TEMPL, align 4
  %33 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 6
  %37 = and i32 %36, 3
  store i32 %37, i32* %6, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @MAX6642_REG_R_LOCAL_TEMP, align 4
  %40 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 %42, 2
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %48 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load i32, i32* @MAX6642_REG_R_REMOTE_TEMPL, align 4
  %53 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 6
  %57 = and i32 %56, 3
  store i32 %57, i32* %6, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load i32, i32* @MAX6642_REG_R_REMOTE_TEMP, align 4
  %60 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 %62, 2
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %68 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* @MAX6642_REG_R_STATUS, align 4
  %73 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %71, i32 %72)
  %74 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %75 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i64, i64* @jiffies, align 8
  %77 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %78 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %80 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %28, %23
  %82 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %83 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %82, i32 0, i32 2
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  ret %struct.max6642_data* %85
}

declare dso_local %struct.max6642_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
