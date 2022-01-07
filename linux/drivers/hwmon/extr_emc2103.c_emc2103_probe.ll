; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_emc2103_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_emc2103_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.emc2103_data = type { i32, i32**, i32, %struct.i2c_client* }
%struct.device = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_PRODUCT_ID = common dso_local global i32 0, align 4
@REG_CONF1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"reg 0x%02x, err %d\0A\00", align 1
@apd = common dso_local global i32 0, align 4
@emc2103_group = common dso_local global i32 0, align 4
@emc2103_temp3_group = common dso_local global i32 0, align 4
@emc2103_temp4_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: sensor '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @emc2103_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emc2103_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.emc2103_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %152

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.emc2103_data* @devm_kzalloc(i32* %21, i32 32, i32 %22)
  store %struct.emc2103_data* %23, %struct.emc2103_data** %6, align 8
  %24 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %25 = icmp ne %struct.emc2103_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %152

29:                                               ; preds = %19
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %32 = call i32 @i2c_set_clientdata(%struct.i2c_client* %30, %struct.emc2103_data* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %35 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %34, i32 0, i32 3
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %37 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %36, i32 0, i32 2
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @REG_PRODUCT_ID, align 4
  %41 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 36
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %46 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  br label %93

47:                                               ; preds = %29
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @REG_CONF1, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = load i32, i32* @REG_CONF1, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %152

60:                                               ; preds = %47
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 4, i32 3
  %66 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %67 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @apd, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %72 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %71, i32 0, i32 0
  store i32 3, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, -2
  store i32 %74, i32* %8, align 4
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load i32, i32* @REG_CONF1, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %75, i32 %76, i32 %77)
  br label %92

79:                                               ; preds = %60
  %80 = load i32, i32* @apd, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %84 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = load i32, i32* @REG_CONF1, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %79
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92, %44
  %94 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %95 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32*, i32** %96, i64 %99
  store i32* @emc2103_group, i32** %100, align 8
  %101 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %102 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %103, 3
  br i1 %104, label %105, label %113

105:                                              ; preds = %93
  %106 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %107 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32*, i32** %108, i64 %111
  store i32* @emc2103_temp3_group, i32** %112, align 8
  br label %113

113:                                              ; preds = %105, %93
  %114 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %115 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %120 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32*, i32** %121, i64 %124
  store i32* @emc2103_temp4_group, i32** %125, align 8
  br label %126

126:                                              ; preds = %118, %113
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 1
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %133 = load %struct.emc2103_data*, %struct.emc2103_data** %6, align 8
  %134 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %133, i32 0, i32 1
  %135 = load i32**, i32*** %134, align 8
  %136 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %128, i32 %131, %struct.emc2103_data* %132, i32** %135)
  store %struct.device* %136, %struct.device** %7, align 8
  %137 = load %struct.device*, %struct.device** %7, align 8
  %138 = call i64 @IS_ERR(%struct.device* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %126
  %141 = load %struct.device*, %struct.device** %7, align 8
  %142 = call i32 @PTR_ERR(%struct.device* %141)
  store i32 %142, i32* %3, align 4
  br label %152

143:                                              ; preds = %126
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 1
  %146 = load %struct.device*, %struct.device** %7, align 8
  %147 = call i32 @dev_name(%struct.device* %146)
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dev_info(i32* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %143, %140, %53, %26, %16
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.emc2103_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.emc2103_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.emc2103_data*, i32**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
