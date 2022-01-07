; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_temp_crit_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_temp_crit_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tmp401_data = type { i32, i32, i32, i32, i32** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@TMP401_CONFIG_RANGE = common dso_local global i32 0, align 4
@TMP401_TEMP_CRIT_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_crit_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @temp_crit_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tmp401_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.tmp401_data* @tmp401_update_device(%struct.device* %19)
  store %struct.tmp401_data* %20, %struct.tmp401_data** %12, align 8
  %21 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %22 = call i64 @IS_ERR(%struct.tmp401_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %26 = call i64 @PTR_ERR(%struct.tmp401_data* %25)
  store i64 %26, i64* %5, align 8
  br label %89

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @kstrtol(i8* %28, i32 10, i64* %13)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %89

34:                                               ; preds = %27
  %35 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %36 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TMP401_CONFIG_RANGE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @clamp_val(i64 %42, i32 -64000, i32 191000)
  store i64 %43, i64* %13, align 8
  br label %47

44:                                               ; preds = %34
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @clamp_val(i64 %45, i32 0, i32 127000)
  store i64 %46, i64* %13, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %49 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %48, i32 0, i32 2
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %52 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %51, i32 0, i32 4
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %61 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @tmp401_register_to_temp(i32 %59, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i64, i64* %13, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 255000
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @clamp_val(i64 %64, i32 %66, i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %13, align 8
  %72 = sub nsw i64 %70, %71
  %73 = add nsw i64 %72, 500
  %74 = sdiv i64 %73, 1000
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %14, align 4
  %76 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %77 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TMP401_TEMP_CRIT_HYST, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @i2c_smbus_write_byte_data(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %84 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %86 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %85, i32 0, i32 2
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %47, %31, %24
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.tmp401_data* @tmp401_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.tmp401_data*) #1

declare dso_local i64 @PTR_ERR(%struct.tmp401_data*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tmp401_register_to_temp(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
