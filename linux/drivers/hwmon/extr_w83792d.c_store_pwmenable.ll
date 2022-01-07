; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_pwmenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_pwmenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@W83792D_REG_FAN_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwmenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwmenable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83792d_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute* %22, %struct.sensor_device_attribute** %10, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call %struct.i2c_client* @to_i2c_client(%struct.device* %27)
  store %struct.i2c_client* %28, %struct.i2c_client** %12, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %30 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %29)
  store %struct.w83792d_data* %30, %struct.w83792d_data** %13, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @kstrtoul(i8* %31, i32 10, i64* %19)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %20, align 4
  store i32 %36, i32* %5, align 4
  br label %110

37:                                               ; preds = %4
  %38 = load i64, i64* %19, align 8
  %39 = icmp ult i64 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %19, align 8
  %42 = icmp ugt i64 %41, 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %110

46:                                               ; preds = %40
  %47 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %48 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i64, i64* %19, align 8
  switch i64 %50, label %72 [
    i64 1, label %51
    i64 2, label %58
    i64 3, label %65
  ]

51:                                               ; preds = %46
  %52 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %53 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 0, i32* %57, align 4
  br label %72

58:                                               ; preds = %46
  %59 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %60 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 2, i32* %64, align 4
  br label %72

65:                                               ; preds = %46
  %66 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %67 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %46, %65, %58, %51
  %73 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %74 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %15, align 4
  %78 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %79 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 2
  store i32 %83, i32* %16, align 4
  %84 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %85 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 4
  store i32 %89, i32* %17, align 4
  %90 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %91 = load i32, i32* @W83792D_REG_FAN_CFG, align 4
  %92 = call i32 @w83792d_read_value(%struct.i2c_client* %90, i32 %91)
  %93 = and i32 %92, 192
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %17, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %14, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %102 = load i32, i32* @W83792D_REG_FAN_CFG, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @w83792d_write_value(%struct.i2c_client* %101, i32 %102, i32 %103)
  %105 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %106 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i64, i64* %9, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %72, %43, %35
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
