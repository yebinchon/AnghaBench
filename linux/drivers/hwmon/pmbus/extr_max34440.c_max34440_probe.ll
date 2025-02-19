; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max34440.c_max34440_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max34440.c_max34440_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.max34440_data = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max34440_info = common dso_local global i32* null, align 8
@max34451 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max34440_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max34440_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max34440_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.max34440_data* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.max34440_data* %11, %struct.max34440_data** %6, align 8
  %12 = load %struct.max34440_data*, %struct.max34440_data** %6, align 8
  %13 = icmp ne %struct.max34440_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.max34440_data*, %struct.max34440_data** %6, align 8
  %22 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32*, i32** @max34440_info, align 8
  %24 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.max34440_data*, %struct.max34440_data** %6, align 8
  %30 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.max34440_data*, %struct.max34440_data** %6, align 8
  %32 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @max34451, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %17
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.max34440_data*, %struct.max34440_data** %6, align 8
  %39 = call i32 @max34451_set_supported_funcs(%struct.i2c_client* %37, %struct.max34440_data* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %17
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %48 = load %struct.max34440_data*, %struct.max34440_data** %6, align 8
  %49 = getelementptr inbounds %struct.max34440_data, %struct.max34440_data* %48, i32 0, i32 1
  %50 = call i32 @pmbus_do_probe(%struct.i2c_client* %46, %struct.i2c_device_id* %47, i32* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %42, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.max34440_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @max34451_set_supported_funcs(%struct.i2c_client*, %struct.max34440_data*) #1

declare dso_local i32 @pmbus_do_probe(%struct.i2c_client*, %struct.i2c_device_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
