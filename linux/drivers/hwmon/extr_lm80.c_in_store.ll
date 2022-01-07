; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_in_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_in_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm80_data = type { i32, i32**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@i_min = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm80_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.lm80_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.lm80_data* %18, %struct.lm80_data** %10, align 8
  %19 = load %struct.lm80_data*, %struct.lm80_data** %10, align 8
  %20 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %11, align 8
  %22 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %23 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @kstrtol(i8* %30, i32 10, i64* %14)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %5, align 4
  br label %82

36:                                               ; preds = %4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @i_min, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @LM80_REG_IN_MIN(i32 %41)
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @LM80_REG_IN_MAX(i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i32 [ %42, %40 ], [ %45, %43 ]
  store i32 %47, i32* %15, align 4
  %48 = load %struct.lm80_data*, %struct.lm80_data** %10, align 8
  %49 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @IN_TO_REG(i64 %51)
  %53 = load %struct.lm80_data*, %struct.lm80_data** %10, align 8
  %54 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %52, i32* %62, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.lm80_data*, %struct.lm80_data** %10, align 8
  %66 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @lm80_write_value(%struct.i2c_client* %63, i32 %64, i32 %75)
  %77 = load %struct.lm80_data*, %struct.lm80_data** %10, align 8
  %78 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %46, %34
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.lm80_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @LM80_REG_IN_MIN(i32) #1

declare dso_local i32 @LM80_REG_IN_MAX(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IN_TO_REG(i64) #1

declare dso_local i32 @lm80_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
