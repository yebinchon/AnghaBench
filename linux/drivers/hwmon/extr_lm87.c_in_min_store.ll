; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_in_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_in_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm87_data = type { i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm87_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @dev_get_drvdata(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.lm87_data* %18, %struct.lm87_data** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtol(i8* %23, i32 10, i64* %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %73

29:                                               ; preds = %4
  %30 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %31 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i64, i64* %13, align 8
  %34 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %35 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IN_TO_REG(i64 %33, i32 %40)
  %42 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %43 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @LM87_REG_IN_MIN(i32 %52)
  br label %58

54:                                               ; preds = %29
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %55, 6
  %57 = call i32 @LM87_REG_AIN_MIN(i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i32 [ %53, %51 ], [ %57, %54 ]
  %60 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %61 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lm87_write_value(%struct.i2c_client* %48, i32 %59, i32 %66)
  %68 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %69 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %58, %27
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.i2c_client* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IN_TO_REG(i64, i32) #1

declare dso_local i32 @lm87_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM87_REG_IN_MIN(i32) #1

declare dso_local i32 @LM87_REG_AIN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
