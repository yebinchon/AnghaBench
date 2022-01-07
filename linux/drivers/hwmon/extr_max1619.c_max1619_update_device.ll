; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1619.c_max1619_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1619.c_max1619_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1619_data = type { i32, i32, i32, i64, i8**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Updating max1619 data.\0A\00", align 1
@t_num_regs = common dso_local global i32 0, align 4
@regs_read = common dso_local global i32* null, align 8
@MAX1619_REG_R_STATUS = common dso_local global i32 0, align 4
@MAX1619_REG_R_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max1619_data* (%struct.device*)* @max1619_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max1619_data* @max1619_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max1619_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.max1619_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.max1619_data* %8, %struct.max1619_data** %3, align 8
  %9 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %10 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %9, i32 0, i32 5
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %13 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %17 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i64 @time_after(i64 %15, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %27 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %80, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %52, %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @t_num_regs, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32*, i32** @regs_read, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %44)
  %46 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %47 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %46, i32 0, i32 4
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @MAX1619_REG_R_STATUS, align 4
  %58 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %61 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32, i32* @MAX1619_REG_R_CONFIG, align 4
  %64 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %55
  %70 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %71 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, 2
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %55
  %75 = load i64, i64* @jiffies, align 8
  %76 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %77 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %79 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %25
  %81 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  %82 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.max1619_data*, %struct.max1619_data** %3, align 8
  ret %struct.max1619_data* %84
}

declare dso_local %struct.max1619_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
