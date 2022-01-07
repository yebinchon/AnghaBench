; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_fan_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_fan_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gl520_data = type { i32*, i32, i32, i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GL520_REG_FAN_MIN = common dso_local global i32 0, align 4
@GL520_REG_BEEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gl520_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.gl520_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.gl520_data* %17, %struct.gl520_data** %10, align 8
  %18 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %19 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %18, i32 0, i32 5
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %125

31:                                               ; preds = %4
  %32 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %33 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %32, i32 0, i32 3
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %37 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @FAN_TO_REG(i64 %35, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %46 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %31
  %54 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %55 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %57 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %58 = call i32 @gl520_read_value(%struct.i2c_client* %56, i32 %57)
  %59 = and i32 %58, -65281
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %59, %61
  %63 = call i32 @gl520_write_value(%struct.i2c_client* %54, i32 %55, i32 %62)
  br label %74

64:                                               ; preds = %31
  %65 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %66 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %68 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %69 = call i32 @gl520_read_value(%struct.i2c_client* %67, i32 %68)
  %70 = and i32 %69, -256
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @gl520_write_value(%struct.i2c_client* %65, i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %64, %53
  %75 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %76 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %77 = call i32 @gl520_read_value(%struct.i2c_client* %75, i32 %76)
  %78 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %79 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %81 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %74
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 -33, i32 -65
  %93 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %94 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %106

97:                                               ; preds = %74
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 32, i32 64
  %102 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %103 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %97, %88
  %107 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %108 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %111 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %115 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %116 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %117 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @gl520_write_value(%struct.i2c_client* %114, i32 %115, i32 %118)
  %120 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %121 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %120, i32 0, i32 3
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i64, i64* %9, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %106, %29
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.gl520_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
