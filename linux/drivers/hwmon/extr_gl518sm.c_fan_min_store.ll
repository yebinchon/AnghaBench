; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_fan_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_fan_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gl518_data = type { i32*, i32, i32, i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GL518_REG_FAN_LIMIT = common dso_local global i32 0, align 4
@GL518_REG_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gl518_data*, align 8
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
  %17 = call %struct.gl518_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.gl518_data* %17, %struct.gl518_data** %10, align 8
  %18 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %19 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %18, i32 0, i32 5
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
  br label %124

31:                                               ; preds = %4
  %32 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %33 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %32, i32 0, i32 3
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %36 = load i32, i32* @GL518_REG_FAN_LIMIT, align 4
  %37 = call i8* @gl518_read_value(%struct.i2c_client* %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %41 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DIV_FROM_REG(i32 %46)
  %48 = call i32 @FAN_TO_REG(i64 %39, i32 %47)
  %49 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %50 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = mul nsw i32 8, %56
  %58 = shl i32 255, %57
  %59 = and i32 %55, %58
  %60 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %61 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 1, %67
  %69 = mul nsw i32 8, %68
  %70 = shl i32 %66, %69
  %71 = or i32 %59, %70
  store i32 %71, i32* %13, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %73 = load i32, i32* @GL518_REG_FAN_LIMIT, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @gl518_write_value(%struct.i2c_client* %72, i32 %73, i32 %74)
  %76 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %77 = load i32, i32* @GL518_REG_ALARM, align 4
  %78 = call i8* @gl518_read_value(%struct.i2c_client* %76, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %81 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %83 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %31
  %91 = load i32, i32* %12, align 4
  %92 = shl i32 32, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %95 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %105

98:                                               ; preds = %31
  %99 = load i32, i32* %12, align 4
  %100 = shl i32 32, %99
  %101 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %102 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %90
  %106 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %107 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %110 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %114 = load i32, i32* @GL518_REG_ALARM, align 4
  %115 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %116 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @gl518_write_value(%struct.i2c_client* %113, i32 %114, i32 %117)
  %119 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %120 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %119, i32 0, i32 3
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i64, i64* %9, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %105, %29
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.gl518_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @gl518_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
