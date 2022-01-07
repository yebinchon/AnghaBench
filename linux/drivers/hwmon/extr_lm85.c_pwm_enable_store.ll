; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_pwm_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_pwm_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm85_data = type { i32, %struct.TYPE_3__*, %struct.i2c_client* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm85_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.lm85_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.lm85_data* %21, %struct.lm85_data** %11, align 8
  %22 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %23 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %22, i32 0, i32 2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %90

31:                                               ; preds = %4
  %32 = load i64, i64* %14, align 8
  switch i64 %32, label %36 [
    i64 0, label %33
    i64 1, label %34
    i64 2, label %35
  ]

33:                                               ; preds = %31
  store i32 3, i32* %13, align 4
  br label %39

34:                                               ; preds = %31
  store i32 7, i32* %13, align 4
  br label %39

35:                                               ; preds = %31
  store i32 6, i32* %13, align 4
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %90

39:                                               ; preds = %35, %34, %33
  %40 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %41 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @LM85_REG_AFAN_CONFIG(i32 %44)
  %46 = call i32 @lm85_read_value(%struct.i2c_client* %43, i32 %45)
  %47 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %48 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  %54 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %55 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, -225
  %63 = load i32, i32* %13, align 4
  %64 = shl i32 %63, 5
  %65 = or i32 %62, %64
  %66 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %67 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @LM85_REG_AFAN_CONFIG(i32 %74)
  %76 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %77 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @lm85_write_value(%struct.i2c_client* %73, i32 %75, i32 %83)
  %85 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %86 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %39, %36, %29
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm85_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm85_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM85_REG_AFAN_CONFIG(i32) #1

declare dso_local i32 @lm85_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
