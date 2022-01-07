; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max197.c_max197_store_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max197.c_max197_store_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.max197_data = type { i32, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max197_store_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max197_store_range(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.max197_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
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
  %18 = call %struct.max197_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.max197_data* %18, %struct.max197_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute_2* %20, %struct.sensor_device_attribute_2** %11, align 8
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %28 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %15, align 4
  %31 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %32 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @kstrtol(i8* %34, i32 10, i64* %14)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %143

40:                                               ; preds = %4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i64, i64* %14, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sub nsw i32 0, %45
  %47 = sext i32 %46 to i64
  %48 = icmp sle i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %16, align 4
  %51 = sub nsw i32 0, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %14, align 8
  br label %62

53:                                               ; preds = %43
  %54 = load i64, i64* %14, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 0, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %14, align 8
  br label %61

60:                                               ; preds = %53
  store i64 0, i64* %14, align 8
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %49
  br label %75

63:                                               ; preds = %40
  %64 = load i64, i64* %14, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp sge i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %14, align 8
  br label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %77 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %76, i32 0, i32 1
  %78 = call i64 @mutex_lock_interruptible(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* @ERESTARTSYS, align 8
  %82 = sub i64 0, %81
  store i64 %82, i64* %5, align 8
  br label %143

83:                                               ; preds = %75
  %84 = load i64, i64* %14, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @max197_set_unipolarity(%struct.max197_data* %87, i32 %88)
  br label %138

90:                                               ; preds = %83
  %91 = load i64, i64* %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 0, %92
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @max197_set_bipolarity(%struct.max197_data* %97, i32 %98)
  %100 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @max197_set_half_range(%struct.max197_data* %100, i32 %101)
  br label %137

103:                                              ; preds = %90
  %104 = load i64, i64* %14, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 0, %105
  %107 = sext i32 %106 to i64
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @max197_set_bipolarity(%struct.max197_data* %110, i32 %111)
  %113 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @max197_set_full_range(%struct.max197_data* %113, i32 %114)
  br label %136

116:                                              ; preds = %103
  %117 = load i64, i64* %14, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @max197_set_half_range(%struct.max197_data* %122, i32 %123)
  br label %135

125:                                              ; preds = %116
  %126 = load i64, i64* %14, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp eq i64 %126, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @max197_set_full_range(%struct.max197_data* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %125
  br label %135

135:                                              ; preds = %134, %121
  br label %136

136:                                              ; preds = %135, %109
  br label %137

137:                                              ; preds = %136, %96
  br label %138

138:                                              ; preds = %137, %86
  %139 = load %struct.max197_data*, %struct.max197_data** %10, align 8
  %140 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %139, i32 0, i32 1
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i64, i64* %9, align 8
  store i64 %142, i64* %5, align 8
  br label %143

143:                                              ; preds = %138, %80, %37
  %144 = load i64, i64* %5, align 8
  ret i64 %144
}

declare dso_local %struct.max197_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @max197_set_unipolarity(%struct.max197_data*, i32) #1

declare dso_local i32 @max197_set_bipolarity(%struct.max197_data*, i32) #1

declare dso_local i32 @max197_set_half_range(%struct.max197_data*, i32) #1

declare dso_local i32 @max197_set_full_range(%struct.max197_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
