; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_atxp1.c_atxp1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_atxp1.c_atxp1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.atxp1_data = type { i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"atxp1: Not supporting VRM %d.%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@atxp1_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Using VRM: %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @atxp1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atxp1_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.atxp1_data*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.atxp1_data* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.atxp1_data* %13, %struct.atxp1_data** %7, align 8
  %14 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %15 = icmp ne %struct.atxp1_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = call i32 (...) @vid_which_vrm()
  %21 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %22 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %24 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 90
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %29 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 91
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %35 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 10
  %38 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %39 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = srem i32 %40, 10
  %42 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %76

45:                                               ; preds = %27, %19
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %48 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %47, i32 0, i32 2
  store %struct.i2c_client* %46, %struct.i2c_client** %48, align 8
  %49 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %50 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %57 = load i32, i32* @atxp1_groups, align 4
  %58 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %52, i32 %55, %struct.atxp1_data* %56, i32 %57)
  store %struct.device* %58, %struct.device** %8, align 8
  %59 = load %struct.device*, %struct.device** %8, align 8
  %60 = call i64 @IS_ERR(%struct.device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = call i32 @PTR_ERR(%struct.device* %63)
  store i32 %64, i32* %3, align 4
  br label %76

65:                                               ; preds = %45
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %68 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 10
  %71 = load %struct.atxp1_data*, %struct.atxp1_data** %7, align 8
  %72 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = srem i32 %73, 10
  %75 = call i32 @dev_info(%struct.device* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %65, %62, %32, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.atxp1_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.atxp1_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
