; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_in_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_in_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm93_data = type { i32*, i32, %struct.TYPE_3__*, i32*, %struct.i2c_client* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.TYPE_4__ = type { i32 }

@vccp_limit_type = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.lm93_data* @dev_get_drvdata(%struct.device* %21)
  store %struct.lm93_data* %22, %struct.lm93_data** %11, align 8
  %23 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %24 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %23, i32 0, i32 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  store %struct.i2c_client* %25, %struct.i2c_client** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 6
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtoul(i8* %28, i32 10, i64* %15)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %5, align 4
  br label %117

34:                                               ; preds = %4
  %35 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %36 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %88

43:                                               ; preds = %40, %34
  %44 = load i64*, i64** @vccp_limit_type, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %43
  %51 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %52 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @LM93_VID_FROM_REG(i32 %57)
  store i64 %58, i64* %14, align 8
  %59 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %60 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 240
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @LM93_IN_REL_TO_REG(i64 %67, i32 0, i64 %68)
  %70 = or i32 %66, %69
  %71 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %72 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @LM93_REG_VCCP_LIMIT_OFF(i32 %78)
  %80 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %81 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @lm93_write_byte(%struct.i2c_client* %77, i32 %79, i32 %86)
  br label %111

88:                                               ; preds = %43, %40
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @LM93_IN_TO_REG(i32 %89, i64 %90)
  %92 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %93 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 4
  %99 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @LM93_REG_IN_MIN(i32 %100)
  %102 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %103 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @lm93_write_byte(%struct.i2c_client* %99, i32 %101, i32 %109)
  br label %111

111:                                              ; preds = %88, %50
  %112 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %113 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i64, i64* %9, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %111, %32
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm93_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @LM93_VID_FROM_REG(i32) #1

declare dso_local i32 @LM93_IN_REL_TO_REG(i64, i32, i64) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM93_REG_VCCP_LIMIT_OFF(i32) #1

declare dso_local i32 @LM93_IN_TO_REG(i32, i64) #1

declare dso_local i32 @LM93_REG_IN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
