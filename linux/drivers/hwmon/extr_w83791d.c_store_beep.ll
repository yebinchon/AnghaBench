; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_beep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32, i32 }

@W83791D_REG_BEEP_CTRL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.w83791d_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %22 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.w83791d_data* %22, %struct.w83791d_data** %12, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sdiv i32 %26, 8
  store i32 %27, i32* %14, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtoul(i8* %28, i32 10, i64* %15)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %5, align 4
  br label %101

34:                                               ; preds = %4
  %35 = load i64, i64* %15, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %15, align 8
  %40 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %41 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i32, i32* %14, align 4
  %44 = mul nsw i32 %43, 8
  %45 = shl i32 255, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %48 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %52 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @w83791d_read(%struct.i2c_client* %51, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %58, 8
  %60 = shl i32 %57, %59
  %61 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %62 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %13, align 4
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %69 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i64, i64* %15, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = shl i64 %72, %74
  %76 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %77 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = or i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %83 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %89 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 %91, 8
  %93 = ashr i32 %90, %92
  %94 = and i32 %93, 255
  %95 = call i32 @w83791d_write(%struct.i2c_client* %82, i32 %87, i32 %94)
  %96 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %97 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %34, %32
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
