; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.of_device_id = type { i64 }
%struct.pca9532_data = type { i32, %struct.i2c_client*, i32* }
%struct.pca9532_platform_data = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@of_pca9532_leds_match = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pca9532_chip_info_tbl = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"setting platform data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pca9532_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.pca9532_data*, align 8
  %9 = alloca %struct.pca9532_platform_data*, align 8
  %10 = alloca %struct.device_node*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.pca9532_data* %12, %struct.pca9532_data** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call %struct.pca9532_platform_data* @dev_get_platdata(%struct.TYPE_7__* %14)
  store %struct.pca9532_platform_data* %15, %struct.pca9532_platform_data** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %10, align 8
  %20 = load %struct.pca9532_platform_data*, %struct.pca9532_platform_data** %9, align 8
  %21 = icmp ne %struct.pca9532_platform_data* %20, null
  br i1 %21, label %62, label %22

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %10, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load %struct.device_node*, %struct.device_node** %10, align 8
  %29 = call %struct.pca9532_platform_data* @pca9532_of_populate_pdata(%struct.TYPE_7__* %27, %struct.device_node* %28)
  store %struct.pca9532_platform_data* %29, %struct.pca9532_platform_data** %9, align 8
  %30 = load %struct.pca9532_platform_data*, %struct.pca9532_platform_data** %9, align 8
  %31 = call i64 @IS_ERR(%struct.pca9532_platform_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.pca9532_platform_data*, %struct.pca9532_platform_data** %9, align 8
  %35 = call i32 @PTR_ERR(%struct.pca9532_platform_data* %34)
  store i32 %35, i32* %3, align 4
  br label %109

36:                                               ; preds = %25
  br label %43

37:                                               ; preds = %22
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %109

43:                                               ; preds = %36
  %44 = load i32, i32* @of_pca9532_leds_match, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call %struct.of_device_id* @of_match_device(i32 %44, %struct.TYPE_7__* %46)
  store %struct.of_device_id* %47, %struct.of_device_id** %7, align 8
  %48 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %49 = icmp ne %struct.of_device_id* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %109

57:                                               ; preds = %43
  %58 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %59 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %2
  %63 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %64 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %71 = call i32 @i2c_check_functionality(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %109

76:                                               ; preds = %66
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.pca9532_data* @devm_kzalloc(%struct.TYPE_7__* %78, i32 24, i32 %79)
  store %struct.pca9532_data* %80, %struct.pca9532_data** %8, align 8
  %81 = load %struct.pca9532_data*, %struct.pca9532_data** %8, align 8
  %82 = icmp ne %struct.pca9532_data* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %109

86:                                               ; preds = %76
  %87 = load i32*, i32** @pca9532_chip_info_tbl, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load %struct.pca9532_data*, %struct.pca9532_data** %8, align 8
  %92 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 @dev_info(%struct.TYPE_7__* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = load %struct.pca9532_data*, %struct.pca9532_data** %8, align 8
  %98 = call i32 @i2c_set_clientdata(%struct.i2c_client* %96, %struct.pca9532_data* %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = load %struct.pca9532_data*, %struct.pca9532_data** %8, align 8
  %101 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %100, i32 0, i32 1
  store %struct.i2c_client* %99, %struct.i2c_client** %101, align 8
  %102 = load %struct.pca9532_data*, %struct.pca9532_data** %8, align 8
  %103 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %102, i32 0, i32 0
  %104 = call i32 @mutex_init(i32* %103)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = load %struct.pca9532_data*, %struct.pca9532_data** %8, align 8
  %107 = load %struct.pca9532_platform_data*, %struct.pca9532_platform_data** %9, align 8
  %108 = call i32 @pca9532_configure(%struct.i2c_client* %105, %struct.pca9532_data* %106, %struct.pca9532_platform_data* %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %86, %83, %73, %54, %37, %33
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.pca9532_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.pca9532_platform_data* @pca9532_of_populate_pdata(%struct.TYPE_7__*, %struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.pca9532_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.pca9532_platform_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.pca9532_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pca9532_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pca9532_configure(%struct.i2c_client*, %struct.pca9532_data*, %struct.pca9532_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
