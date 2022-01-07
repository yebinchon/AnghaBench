; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm83.c_lm83_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm83.c_lm83_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.device = type { i32 }
%struct.lm83_data = type { i32**, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm83_group = common dso_local global i32 0, align 4
@lm83 = common dso_local global i64 0, align 8
@lm83_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm83_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm83_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.lm83_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lm83_data* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.lm83_data* %11, %struct.lm83_data** %7, align 8
  %12 = load %struct.lm83_data*, %struct.lm83_data** %7, align 8
  %13 = icmp ne %struct.lm83_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.lm83_data*, %struct.lm83_data** %7, align 8
  %20 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %19, i32 0, i32 2
  store %struct.i2c_client* %18, %struct.i2c_client** %20, align 8
  %21 = load %struct.lm83_data*, %struct.lm83_data** %7, align 8
  %22 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.lm83_data*, %struct.lm83_data** %7, align 8
  %25 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  store i32* @lm83_group, i32** %27, align 8
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @lm83, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.lm83_data*, %struct.lm83_data** %7, align 8
  %35 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  store i32* @lm83_group_opt, i32** %37, align 8
  br label %38

38:                                               ; preds = %33, %17
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lm83_data*, %struct.lm83_data** %7, align 8
  %45 = load %struct.lm83_data*, %struct.lm83_data** %7, align 8
  %46 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %40, i32 %43, %struct.lm83_data* %44, i32** %47)
  store %struct.device* %48, %struct.device** %6, align 8
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %38, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.lm83_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.lm83_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
