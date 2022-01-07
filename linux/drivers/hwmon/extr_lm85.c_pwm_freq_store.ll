; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_pwm_freq_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_pwm_freq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm85_data = type { i64, i32, i32*, i32, %struct.TYPE_3__*, i32, i32, %struct.i2c_client* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.TYPE_4__ = type { i32 }

@adt7468 = common dso_local global i64 0, align 8
@ADT7468_HFPWM = common dso_local global i32 0, align 4
@ADT7468_REG_CFG5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_freq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_freq_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm85_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.lm85_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.lm85_data* %20, %struct.lm85_data** %11, align 8
  %21 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %22 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %21, i32 0, i32 7
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %115

30:                                               ; preds = %4
  %31 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %32 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %31, i32 0, i32 3
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %35 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @adt7468, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %30
  %40 = load i64, i64* %13, align 8
  %41 = icmp uge i64 %40, 11300
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* @ADT7468_HFPWM, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %46 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %50 = load i32, i32* @ADT7468_REG_CFG5, align 4
  %51 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %52 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @lm85_write_value(%struct.i2c_client* %49, i32 %50, i32 %53)
  br label %109

55:                                               ; preds = %39, %30
  %56 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %57 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %60 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @FREQ_TO_REG(i32 %58, i32 %61, i64 %62)
  %64 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %65 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @LM85_REG_AFAN_RANGE(i32 %71)
  %73 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %74 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %73, i32 0, i32 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 4
  %82 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %83 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %81, %88
  %90 = call i32 @lm85_write_value(%struct.i2c_client* %70, i32 %72, i32 %89)
  %91 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %92 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @adt7468, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %55
  %97 = load i32, i32* @ADT7468_HFPWM, align 4
  %98 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %99 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %103 = load i32, i32* @ADT7468_REG_CFG5, align 4
  %104 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %105 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @lm85_write_value(%struct.i2c_client* %102, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %96, %55
  br label %109

109:                                              ; preds = %108, %42
  %110 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %111 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %110, i32 0, i32 3
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i64, i64* %9, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %109, %28
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm85_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm85_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FREQ_TO_REG(i32, i32, i64) #1

declare dso_local i32 @LM85_REG_AFAN_RANGE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
