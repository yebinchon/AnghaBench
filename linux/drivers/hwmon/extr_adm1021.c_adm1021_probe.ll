; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_adm1021_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_adm1021_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.adm1021_data = type { i64, i32**, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm84 = common dso_local global i64 0, align 8
@read_only = common dso_local global i32 0, align 4
@adm1021_group = common dso_local global i32 0, align 4
@adm1021_min_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm1021_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1021_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.adm1021_data*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.adm1021_data* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.adm1021_data* %13, %struct.adm1021_data** %7, align 8
  %14 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %15 = icmp ne %struct.adm1021_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %22 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %21, i32 0, i32 3
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %27 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %29 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %28, i32 0, i32 2
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %32 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @lm84, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %19
  %37 = load i32, i32* @read_only, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @adm1021_init_client(%struct.i2c_client* %40)
  br label %42

42:                                               ; preds = %39, %36, %19
  %43 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %44 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  store i32* @adm1021_group, i32** %46, align 8
  %47 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %48 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @lm84, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %54 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  store i32* @adm1021_min_group, i32** %56, align 8
  br label %57

57:                                               ; preds = %52, %42
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %63 = load %struct.adm1021_data*, %struct.adm1021_data** %7, align 8
  %64 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %58, i32 %61, %struct.adm1021_data* %62, i32** %65)
  store %struct.device* %66, %struct.device** %8, align 8
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.adm1021_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adm1021_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.adm1021_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
