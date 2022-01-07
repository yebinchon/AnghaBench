; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7418.c_ad7418_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7418.c_ad7418_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.i2c_client = type { i32, %struct.i2c_adapter*, %struct.device }
%struct.i2c_adapter = type { i32 }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.ad7418_data = type { i32, i32, %struct.i2c_client*, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad7416_groups = common dso_local global %struct.attribute_group** null, align 8
@ad7417_groups = common dso_local global %struct.attribute_group** null, align 8
@ad7418_groups = common dso_local global %struct.attribute_group** null, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s chip found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad7418_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7418_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.ad7418_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.attribute_group**, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %7, align 8
  store %struct.attribute_group** null, %struct.attribute_group*** %10, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ad7418_data* @devm_kzalloc(%struct.device* %26, i32 24, i32 %27)
  store %struct.ad7418_data* %28, %struct.ad7418_data** %8, align 8
  %29 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %30 = icmp ne %struct.ad7418_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %93

34:                                               ; preds = %25
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %37 = call i32 @i2c_set_clientdata(%struct.i2c_client* %35, %struct.ad7418_data* %36)
  %38 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %39 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %38, i32 0, i32 3
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %43 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %42, i32 0, i32 2
  store %struct.i2c_client* %41, %struct.i2c_client** %43, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i64 @of_device_get_match_data(%struct.device* %49)
  %51 = trunc i64 %50 to i32
  %52 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %53 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %60

54:                                               ; preds = %34
  %55 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %59 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %62 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %76 [
    i32 130, label %64
    i32 129, label %68
    i32 128, label %72
  ]

64:                                               ; preds = %60
  %65 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %66 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.attribute_group**, %struct.attribute_group*** @ad7416_groups, align 8
  store %struct.attribute_group** %67, %struct.attribute_group*** %10, align 8
  br label %76

68:                                               ; preds = %60
  %69 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %70 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %69, i32 0, i32 1
  store i32 4, i32* %70, align 4
  %71 = load %struct.attribute_group**, %struct.attribute_group*** @ad7417_groups, align 8
  store %struct.attribute_group** %71, %struct.attribute_group*** %10, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %74 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.attribute_group**, %struct.attribute_group*** @ad7418_groups, align 8
  store %struct.attribute_group** %75, %struct.attribute_group*** %10, align 8
  br label %76

76:                                               ; preds = %60, %72, %68, %64
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_info(%struct.device* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = call i32 @ad7418_init_client(%struct.i2c_client* %82)
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ad7418_data*, %struct.ad7418_data** %8, align 8
  %89 = load %struct.attribute_group**, %struct.attribute_group*** %10, align 8
  %90 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %84, i32 %87, %struct.ad7418_data* %88, %struct.attribute_group** %89)
  store %struct.device* %90, %struct.device** %9, align 8
  %91 = load %struct.device*, %struct.device** %9, align 8
  %92 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %76, %31, %22
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.ad7418_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ad7418_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @ad7418_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.ad7418_data*, %struct.attribute_group**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
