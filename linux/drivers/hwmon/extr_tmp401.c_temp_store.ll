; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tmp401_data = type { i64, i32**, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@tmp432 = common dso_local global i64 0, align 8
@TMP432_TEMP_MSB_WRITE = common dso_local global i32** null, align 8
@TMP401_TEMP_MSB_WRITE = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tmp401_data*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.tmp401_data* @dev_get_drvdata(%struct.device* %25)
  store %struct.tmp401_data* %26, %struct.tmp401_data** %12, align 8
  %27 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %28 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %27, i32 0, i32 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %28, align 8
  store %struct.i2c_client* %29, %struct.i2c_client** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @kstrtol(i8* %30, i32 10, i64* %14)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %105

36:                                               ; preds = %4
  %37 = load i64, i64* %14, align 8
  %38 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %39 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 3
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 8, i32 4
  %45 = call i32 @tmp401_temp_to_register(i64 %37, i32 %40, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %47 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %46, i32 0, i32 2
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %50 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @tmp432, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %36
  %55 = load i32**, i32*** @TMP432_TEMP_MSB_WRITE, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  br label %74

64:                                               ; preds = %36
  %65 = load i32**, i32*** @TMP401_TEMP_MSB_WRITE, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  br label %74

74:                                               ; preds = %64, %54
  %75 = phi i32 [ %63, %54 ], [ %73, %64 ]
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  %82 = ashr i32 %81, 8
  %83 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %79, i32 %80, i32 %82)
  br label %89

84:                                               ; preds = %74
  %85 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %78
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %92 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %91, i32 0, i32 1
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %90, i32* %100, align 4
  %101 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %102 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %101, i32 0, i32 2
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i64, i64* %9, align 8
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %89, %33
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.tmp401_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @tmp401_temp_to_register(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
