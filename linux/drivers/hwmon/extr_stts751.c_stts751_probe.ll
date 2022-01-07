; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.stts751_priv = type { i32, i32, i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"smbus-timeout-disable\00", align 1
@STTS751_REG_SMBUS_TO = common dso_local global i32 0, align 4
@STTS751_REG_REV_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Chip revision 0x%x is untested\0A\00", align 1
@STTS751_CONF_STOP = common dso_local global i32 0, align 4
@STTS751_CONF_EVENT_DIS = common dso_local global i32 0, align 4
@STTS751_REG_CONF = common dso_local global i32 0, align 4
@stts751_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stts751_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stts751_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.stts751_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.stts751_priv* @devm_kzalloc(i32* %11, i32 32, i32 %12)
  store %struct.stts751_priv* %13, %struct.stts751_priv** %6, align 8
  %14 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %15 = icmp ne %struct.stts751_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %111

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %22 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %21, i32 0, i32 5
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %24 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %26 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %29 = call i32 @i2c_set_clientdata(%struct.i2c_client* %27, %struct.stts751_priv* %28)
  %30 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %31 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %30, i32 0, i32 4
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = call i64 @device_property_present(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %19
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 1
  %40 = call i32 @device_property_read_bool(i32* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %8, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @STTS751_REG_SMBUS_TO, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 128
  %47 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %41, i32 %42, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %19
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load i32, i32* @STTS751_REG_REV_ID, align 4
  %56 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %111

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %72 = call i32 @stts751_read_chip_config(%struct.stts751_priv* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %111

77:                                               ; preds = %70
  %78 = load i32, i32* @STTS751_CONF_STOP, align 4
  %79 = load i32, i32* @STTS751_CONF_EVENT_DIS, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %83 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load i32, i32* @STTS751_REG_CONF, align 4
  %88 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %89 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %86, i32 %87, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %111

96:                                               ; preds = %77
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %103 = load i32, i32* @stts751_groups, align 4
  %104 = call i32 @devm_hwmon_device_register_with_groups(i32* %98, i32 %101, %struct.stts751_priv* %102, i32 %103)
  %105 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %106 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %108 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @PTR_ERR_OR_ZERO(i32 %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %96, %94, %75, %59, %50, %16
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.stts751_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.stts751_priv*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @device_property_present(i32*, i8*) #1

declare dso_local i32 @device_property_read_bool(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @stts751_read_chip_config(%struct.stts751_priv*) #1

declare dso_local i32 @devm_hwmon_device_register_with_groups(i32*, i32, %struct.stts751_priv*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
