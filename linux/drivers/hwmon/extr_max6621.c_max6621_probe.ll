; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6621.c_max6621_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6621.c_max6621_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max6621_data = type { i32*, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max6621_regmap_config = common dso_local global i32 0, align 4
@MAX6621_CONFIG0_REG = common dso_local global i32 0, align 4
@MAX6621_CONFIG0_INIT = common dso_local global i32 0, align 4
@MAX6621_CONFIG1_REG = common dso_local global i32 0, align 4
@MAX6621_CONFIG1_INIT = common dso_local global i32 0, align 4
@MAX6621_TEMP_INPUT_REG_NUM = common dso_local global i32 0, align 4
@max6621_temp_regs = common dso_local global i32* null, align 8
@max6621_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max6621_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6621_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.max6621_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max6621_data* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.max6621_data* %15, %struct.max6621_data** %7, align 8
  %16 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %17 = icmp ne %struct.max6621_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %131

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @max6621_regmap_config)
  %24 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %25 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %27 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %33 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %131

36:                                               ; preds = %21
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %39 = call i32 @i2c_set_clientdata(%struct.i2c_client* %37, %struct.max6621_data* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %42 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %41, i32 0, i32 2
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  %43 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %44 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MAX6621_CONFIG0_REG, align 4
  %47 = load i32, i32* @MAX6621_CONFIG0_INIT, align 4
  %48 = call i32 @regmap_write(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %131

53:                                               ; preds = %36
  %54 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %55 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAX6621_CONFIG1_REG, align 4
  %58 = load i32, i32* @MAX6621_CONFIG1_INIT, align 4
  %59 = call i32 @regmap_write(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %131

64:                                               ; preds = %53
  %65 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %66 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @regcache_mark_dirty(i32 %67)
  %69 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %70 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @regcache_sync(i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %3, align 4
  br label %131

77:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %119, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @MAX6621_TEMP_INPUT_REG_NUM, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %78
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load i32*, i32** @max6621_temp_regs, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %83, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %131

94:                                               ; preds = %82
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @max6621_verify_reg_data(%struct.device* %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %102 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 -1, i32* %106, align 4
  br label %119

107:                                              ; preds = %94
  %108 = load i32*, i32** @max6621_temp_regs, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %114 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %107, %100
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %78

122:                                              ; preds = %78
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.max6621_data*, %struct.max6621_data** %7, align 8
  %128 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %123, i32 %126, %struct.max6621_data* %127, i32* @max6621_chip_info, i32* null)
  store %struct.device* %128, %struct.device** %8, align 8
  %129 = load %struct.device*, %struct.device** %8, align 8
  %130 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %122, %92, %75, %62, %51, %31, %18
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.max6621_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max6621_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @max6621_verify_reg_data(%struct.device*, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.max6621_data*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
