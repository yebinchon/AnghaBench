; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm_temp_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm_temp_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i32, i32*, i32*, i32, i32* }
%struct.sensor_device_attribute = type { i32 }

@NUM_TEMP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_temp_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_temp_sel(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %108

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @NUM_TEMP, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %108

40:                                               ; preds = %33
  %41 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %42 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = sub i64 %44, 1
  %46 = call i32 @BIT(i64 %45)
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %51 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %49, %40
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %108

61:                                               ; preds = %49
  %62 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %63 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %62, i32 0, i32 3
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %66 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %74 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %80 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %81 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nct6775_read_value(%struct.nct6775_data* %79, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %88, 224
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %15, align 4
  %93 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %94 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %95 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @nct6775_write_value(%struct.nct6775_data* %93, i32 %100, i32 %101)
  %103 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %104 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %103, i32 0, i32 3
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i64, i64* %9, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %61, %58, %37, %28
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.nct6775_data* @nct6775_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

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
