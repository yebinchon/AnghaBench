; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.lm63_data = type { i32, i32, i32, i32**, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm64 = common dso_local global i64 0, align 8
@lm63_group = common dso_local global i32 0, align 4
@lm63_group_fan1 = common dso_local global i32 0, align 4
@lm96163 = common dso_local global i64 0, align 8
@lm63_group_temp2_type = common dso_local global i32 0, align 4
@lm63_group_extra_lut = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm63_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm63_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.lm63_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.lm63_data* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.lm63_data* %14, %struct.lm63_data** %8, align 8
  %15 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %16 = icmp ne %struct.lm63_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %112

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %23 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %22, i32 0, i32 5
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %25 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %24, i32 0, i32 4
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = call i64 @of_device_get_match_data(%struct.device* %34)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %38 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %45

39:                                               ; preds = %20
  %40 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %44 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %47 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @lm64, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %54 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %53, i32 0, i32 1
  store i32 16000, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %57 = call i32 @lm63_init_client(%struct.lm63_data* %56)
  %58 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %59 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %58, i32 0, i32 3
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32*, i32** %60, i64 %63
  store i32* @lm63_group, i32** %64, align 8
  %65 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %66 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %72 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %71, i32 0, i32 3
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32*, i32** %73, i64 %76
  store i32* @lm63_group_fan1, i32** %77, align 8
  br label %78

78:                                               ; preds = %70, %55
  %79 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %80 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @lm96163, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %87 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %86, i32 0, i32 3
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  store i32* @lm63_group_temp2_type, i32** %92, align 8
  %93 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %94 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32*, i32** %95, i64 %98
  store i32* @lm63_group_extra_lut, i32** %99, align 8
  br label %100

100:                                              ; preds = %85, %78
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %106 = load %struct.lm63_data*, %struct.lm63_data** %8, align 8
  %107 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %106, i32 0, i32 3
  %108 = load i32**, i32*** %107, align 8
  %109 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %101, i32 %104, %struct.lm63_data* %105, i32** %108)
  store %struct.device* %109, %struct.device** %7, align 8
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %100, %17
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.lm63_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @lm63_init_client(%struct.lm63_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.lm63_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
