; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2990.c_ltc2990_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2990.c_ltc2990_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.device = type { i32 }
%struct.ltc2990_data = type { i32*, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"lltc,meas-mode\00", align 1
@LTC2990_MODE0_MASK = common dso_local global i32 0, align 4
@LTC2990_MODE1_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LTC2990_CONTROL = common dso_local global i32 0, align 4
@LTC2990_MODE0_SHIFT = common dso_local global i32 0, align 4
@LTC2990_MODE1_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error: Failed to set control mode.\0A\00", align 1
@LTC2990_TRIGGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Error: Failed to start acquisition.\0A\00", align 1
@ltc2990_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ltc2990_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2990_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ltc2990_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @i2c_check_functionality(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %152

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ltc2990_data* @devm_kzalloc(i32* %22, i32 16, i32 %23)
  store %struct.ltc2990_data* %24, %struct.ltc2990_data** %8, align 8
  %25 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %26 = icmp ne %struct.ltc2990_data* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %152

34:                                               ; preds = %20
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %37 = getelementptr inbounds %struct.ltc2990_data, %struct.ltc2990_data* %36, i32 0, i32 1
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 1
  %40 = call i64 @dev_fwnode(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %34
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %46 = getelementptr inbounds %struct.ltc2990_data, %struct.ltc2990_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @device_property_read_u32_array(i32* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %47, i32 2)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %152

53:                                               ; preds = %42
  %54 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %55 = getelementptr inbounds %struct.ltc2990_data, %struct.ltc2990_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LTC2990_MODE0_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %53
  %64 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %65 = getelementptr inbounds %struct.ltc2990_data, %struct.ltc2990_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LTC2990_MODE1_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63, %53
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %152

76:                                               ; preds = %63
  br label %104

77:                                               ; preds = %34
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load i32, i32* @LTC2990_CONTROL, align 4
  %80 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %152

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @LTC2990_MODE0_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = load i32, i32* @LTC2990_MODE0_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %92 = getelementptr inbounds %struct.ltc2990_data, %struct.ltc2990_data* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @LTC2990_MODE1_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = load i32, i32* @LTC2990_MODE1_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %101 = getelementptr inbounds %struct.ltc2990_data, %struct.ltc2990_data* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %85, %76
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = load i32, i32* @LTC2990_CONTROL, align 4
  %107 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %108 = getelementptr inbounds %struct.ltc2990_data, %struct.ltc2990_data* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @LTC2990_MODE0_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %115 = getelementptr inbounds %struct.ltc2990_data, %struct.ltc2990_data* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LTC2990_MODE1_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = or i32 %113, %120
  %122 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %105, i32 %106, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %104
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 1
  %128 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %152

130:                                              ; preds = %104
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = load i32, i32* @LTC2990_TRIGGER, align 4
  %133 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %131, i32 %132, i32 1)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 1
  %139 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %152

141:                                              ; preds = %130
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 1
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ltc2990_data*, %struct.ltc2990_data** %8, align 8
  %148 = load i32, i32* @ltc2990_groups, align 4
  %149 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %143, i32 %146, %struct.ltc2990_data* %147, i32 %148)
  store %struct.device* %149, %struct.device** %7, align 8
  %150 = load %struct.device*, %struct.device** %7, align 8
  %151 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %150)
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %141, %136, %125, %83, %73, %51, %31, %17
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.ltc2990_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dev_fwnode(i32*) #1

declare dso_local i32 @device_property_read_u32_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.ltc2990_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
