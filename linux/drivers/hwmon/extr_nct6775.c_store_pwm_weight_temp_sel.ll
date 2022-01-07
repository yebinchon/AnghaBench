; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm_weight_temp_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm_weight_temp_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i32, i32*, i32*, i32, i32* }
%struct.sensor_device_attribute = type { i32 }

@NUM_TEMP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_weight_temp_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_weight_temp_sel(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6775_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.nct6775_data* @nct6775_update_device(%struct.device* %17)
  store %struct.nct6775_data* %18, %struct.nct6775_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute* %20, %struct.sensor_device_attribute** %11, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %145

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @NUM_TEMP, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %145

37:                                               ; preds = %30
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @NUM_TEMP, align 8
  %40 = add i64 %39, 1
  %41 = call i64 @array_index_nospec(i64 %38, i64 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %37
  %45 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %46 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = sub i64 %48, 1
  %50 = call i32 @BIT(i64 %49)
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %55 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %53, %44
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %145

65:                                               ; preds = %53, %37
  %66 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %67 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %66, i32 0, i32 3
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load i64, i64* %13, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %65
  %72 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %73 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %81 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %87 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %88 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @nct6775_read_value(%struct.nct6775_data* %86, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = and i32 %95, 224
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, 128
  %99 = load i32, i32* %15, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %15, align 4
  %101 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %102 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %103 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @nct6775_write_value(%struct.nct6775_data* %101, i32 %108, i32 %109)
  br label %139

111:                                              ; preds = %65
  %112 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %113 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 0, i32* %117, align 4
  %118 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %119 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %120 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @nct6775_read_value(%struct.nct6775_data* %118, i32 %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = and i32 %127, 127
  store i32 %128, i32* %15, align 4
  %129 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %130 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %131 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @nct6775_write_value(%struct.nct6775_data* %129, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %111, %71
  %140 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %141 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %140, i32 0, i32 3
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i64, i64* %9, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %139, %62, %34, %28
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.nct6775_data* @nct6775_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
