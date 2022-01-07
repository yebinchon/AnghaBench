; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds620.c_ds620_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds620.c_ds620_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds620_data = type { i32, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Starting ds620 update\0A\00", align 1
@DS620_REG_TEMP = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ds620_data* (%struct.device*)* @ds620_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ds620_data* @ds620_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ds620_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ds620_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.ds620_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds620_data* %9, %struct.ds620_data** %3, align 8
  %10 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %11 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %10, i32 0, i32 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  store %struct.ds620_data* %13, %struct.ds620_data** %5, align 8
  %14 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %15 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %19 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* @HZ, align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i64 @time_after(i64 %17, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %32 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %67, %35
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %42 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32*, i32** @DS620_REG_TEMP, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %47, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.ds620_data* @ERR_PTR(i32 %57)
  store %struct.ds620_data* %58, %struct.ds620_data** %5, align 8
  br label %77

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %62 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %39

70:                                               ; preds = %39
  %71 = load i64, i64* @jiffies, align 8
  %72 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %73 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %75 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %70, %30
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.ds620_data*, %struct.ds620_data** %3, align 8
  %79 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.ds620_data*, %struct.ds620_data** %5, align 8
  ret %struct.ds620_data* %81
}

declare dso_local %struct.ds620_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local %struct.ds620_data* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
