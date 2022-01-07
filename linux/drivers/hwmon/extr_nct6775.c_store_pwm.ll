; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i32**, i32, i32*, i32** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6775_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [7 x i32], align 16
  %16 = alloca [7 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.nct6775_data* %20, %struct.nct6775_data** %10, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute_2* %22, %struct.sensor_device_attribute_2** %11, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %27 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 0
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %34 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %32, align 4
  %42 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 0
  store i32 255, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 255, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %49 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %4
  br label %60

59:                                               ; preds = %4
  br label %60

60:                                               ; preds = %59, %58
  %61 = phi i32 [ %56, %58 ], [ 255, %59 ]
  store i32 %61, i32* %47, align 4
  %62 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 255, i32* %62, align 4
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 255, i32* %63, align 4
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 255, i32* %64, align 4
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 255, i32* %65, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @kstrtoul(i8* %66, i32 10, i64* %14)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %5, align 4
  br label %149

72:                                               ; preds = %60
  %73 = load i64, i64* %14, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @clamp_val(i64 %73, i32 %77, i32 %81)
  store i64 %82, i64* %14, align 8
  %83 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %84 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %83, i32 0, i32 1
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load i64, i64* %14, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %89 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %87, i32* %97, align 4
  %98 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %99 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %100 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %99, i32 0, i32 3
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %14, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @nct6775_write_value(%struct.nct6775_data* %98, i32 %109, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %143

115:                                              ; preds = %72
  %116 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %117 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %118 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @nct6775_read_value(%struct.nct6775_data* %116, i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = and i32 %125, 127
  store i32 %126, i32* %18, align 4
  %127 = load i64, i64* %14, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %115
  %130 = load i32, i32* %18, align 4
  %131 = or i32 %130, 128
  store i32 %131, i32* %18, align 4
  br label %132

132:                                              ; preds = %129, %115
  %133 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %134 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %135 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @nct6775_write_value(%struct.nct6775_data* %133, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %132, %72
  %144 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %145 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %144, i32 0, i32 1
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i64, i64* %9, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %143, %70
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
