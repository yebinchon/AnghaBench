; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp55xx_chip = type { i32, i32*, %struct.lp55xx_platform_data*, %struct.i2c_client* }
%struct.lp55xx_platform_data = type { i32 }
%struct.lp55xx_led = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp5523_cfg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s Programmable led chip found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"registering sysfs failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp5523_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp5523_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lp55xx_chip*, align 8
  %8 = alloca %struct.lp55xx_led*, align 8
  %9 = alloca %struct.lp55xx_platform_data*, align 8
  %10 = alloca %struct.device_node*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.lp55xx_platform_data* @dev_get_platdata(%struct.TYPE_7__* %12)
  store %struct.lp55xx_platform_data* %13, %struct.lp55xx_platform_data** %9, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %10, align 8
  %18 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %9, align 8
  %19 = icmp ne %struct.lp55xx_platform_data* %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %2
  %21 = load %struct.device_node*, %struct.device_node** %10, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load %struct.device_node*, %struct.device_node** %10, align 8
  %27 = call %struct.lp55xx_platform_data* @lp55xx_of_populate_pdata(%struct.TYPE_7__* %25, %struct.device_node* %26)
  store %struct.lp55xx_platform_data* %27, %struct.lp55xx_platform_data** %9, align 8
  %28 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %9, align 8
  %29 = call i64 @IS_ERR(%struct.lp55xx_platform_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %9, align 8
  %33 = call i32 @PTR_ERR(%struct.lp55xx_platform_data* %32)
  store i32 %33, i32* %3, align 4
  br label %117

34:                                               ; preds = %23
  br label %41

35:                                               ; preds = %20
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %117

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.lp55xx_chip* @devm_kzalloc(%struct.TYPE_7__* %44, i32 32, i32 %45)
  store %struct.lp55xx_chip* %46, %struct.lp55xx_chip** %7, align 8
  %47 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %48 = icmp ne %struct.lp55xx_chip* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %117

52:                                               ; preds = %42
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %9, align 8
  %56 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.lp55xx_led* @devm_kcalloc(%struct.TYPE_7__* %54, i32 %57, i32 4, i32 %58)
  store %struct.lp55xx_led* %59, %struct.lp55xx_led** %8, align 8
  %60 = load %struct.lp55xx_led*, %struct.lp55xx_led** %8, align 8
  %61 = icmp ne %struct.lp55xx_led* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %117

65:                                               ; preds = %52
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %68 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %67, i32 0, i32 3
  store %struct.i2c_client* %66, %struct.i2c_client** %68, align 8
  %69 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %9, align 8
  %70 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %71 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %70, i32 0, i32 2
  store %struct.lp55xx_platform_data* %69, %struct.lp55xx_platform_data** %71, align 8
  %72 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %73 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %72, i32 0, i32 1
  store i32* @lp5523_cfg, i32** %73, align 8
  %74 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %75 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %74, i32 0, i32 0
  %76 = call i32 @mutex_init(i32* %75)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = load %struct.lp55xx_led*, %struct.lp55xx_led** %8, align 8
  %79 = call i32 @i2c_set_clientdata(%struct.i2c_client* %77, %struct.lp55xx_led* %78)
  %80 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %81 = call i32 @lp55xx_init_device(%struct.lp55xx_chip* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %115

85:                                               ; preds = %65
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_info(%struct.TYPE_7__* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.lp55xx_led*, %struct.lp55xx_led** %8, align 8
  %93 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %94 = call i32 @lp55xx_register_leds(%struct.lp55xx_led* %92, %struct.lp55xx_chip* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %112

98:                                               ; preds = %85
  %99 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %100 = call i32 @lp55xx_register_sysfs(%struct.lp55xx_chip* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_7__* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %108

107:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %117

108:                                              ; preds = %103
  %109 = load %struct.lp55xx_led*, %struct.lp55xx_led** %8, align 8
  %110 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %111 = call i32 @lp55xx_unregister_leds(%struct.lp55xx_led* %109, %struct.lp55xx_chip* %110)
  br label %112

112:                                              ; preds = %108, %97
  %113 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %7, align 8
  %114 = call i32 @lp55xx_deinit_device(%struct.lp55xx_chip* %113)
  br label %115

115:                                              ; preds = %112, %84
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %107, %62, %49, %35, %31
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.lp55xx_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.lp55xx_platform_data* @lp55xx_of_populate_pdata(%struct.TYPE_7__*, %struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.lp55xx_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.lp55xx_platform_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.lp55xx_chip* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.lp55xx_led* @devm_kcalloc(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp55xx_led*) #1

declare dso_local i32 @lp55xx_init_device(%struct.lp55xx_chip*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @lp55xx_register_leds(%struct.lp55xx_led*, %struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_register_sysfs(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_unregister_leds(%struct.lp55xx_led*, %struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_deinit_device(%struct.lp55xx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
