; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1031_data = type { i32, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ADM1031_CONF1_AUTO_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADM1031_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1031_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.adm1031_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adm1031_data* %17, %struct.adm1031_data** %10, align 8
  %18 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %19 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %18, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtol(i8* %25, i32 10, i64* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %101

31:                                               ; preds = %4
  %32 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %33 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %36 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load i64, i64* %13, align 8
  %43 = ashr i64 %42, 4
  %44 = and i64 %43, 15
  %45 = icmp ne i64 %44, 5
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %48 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %47, i32 0, i32 2
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %101

52:                                               ; preds = %41, %31
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @PWM_TO_REG(i64 %53)
  %55 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %56 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %62 = load i32, i32* @ADM1031_REG_PWM, align 4
  %63 = call i32 @adm1031_read_value(%struct.i2c_client* %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %65 = load i32, i32* @ADM1031_REG_PWM, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %52
  %69 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %70 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 4
  %77 = and i32 %76, 240
  %78 = load i32, i32* %15, align 4
  %79 = and i32 %78, 15
  %80 = or i32 %77, %79
  br label %93

81:                                               ; preds = %52
  %82 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %83 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 15
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %90, 240
  %92 = or i32 %89, %91
  br label %93

93:                                               ; preds = %81, %68
  %94 = phi i32 [ %80, %68 ], [ %92, %81 ]
  %95 = call i32 @adm1031_write_value(%struct.i2c_client* %64, i32 %65, i32 %94)
  %96 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %97 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %96, i32 0, i32 2
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %93, %46, %29
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.adm1031_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PWM_TO_REG(i64) #1

declare dso_local i32 @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
