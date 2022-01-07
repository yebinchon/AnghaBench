; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_mcp3021.c_mcp3021_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_mcp3021.c_mcp3021_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mcp3021_data = type { i32, i32, i32, i32, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"reference-voltage-microvolt\00", align 1
@MCP3021_VDD_REF_DEFAULT = common dso_local global i8* null, align 8
@MCP3021_SAR_SHIFT = common dso_local global i32 0, align 4
@MCP3021_SAR_MASK = common dso_local global i32 0, align 4
@MCP3021_OUTPUT_RES = common dso_local global i32 0, align 4
@MCP3221_SAR_SHIFT = common dso_local global i32 0, align 4
@MCP3221_SAR_MASK = common dso_local global i32 0, align 4
@MCP3221_OUTPUT_RES = common dso_local global i32 0, align 4
@MCP3021_VDD_REF_MAX = common dso_local global i32 0, align 4
@MCP3021_VDD_REF_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dev_attr_in0_input = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mcp3021_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3021_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mcp3021_data*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.mcp3021_data* null, %struct.mcp3021_data** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I2C_FUNC_I2C, align 4
  %18 = call i32 @i2c_check_functionality(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %144

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mcp3021_data* @devm_kzalloc(%struct.TYPE_5__* %25, i32 20, i32 %26)
  store %struct.mcp3021_data* %27, %struct.mcp3021_data** %7, align 8
  %28 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %29 = icmp ne %struct.mcp3021_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %144

33:                                               ; preds = %23
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.mcp3021_data* %35)
  %37 = load %struct.device_node*, %struct.device_node** %8, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.device_node*, %struct.device_node** %8, align 8
  %41 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %42 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %41, i32 0, i32 0
  %43 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %47 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 1000
  store i32 %49, i32* %47, align 4
  br label %55

50:                                               ; preds = %39
  %51 = load i8*, i8** @MCP3021_VDD_REF_DEFAULT, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %54 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %45
  br label %73

56:                                               ; preds = %33
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32* @dev_get_platdata(%struct.TYPE_5__* %58)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %66 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %72

67:                                               ; preds = %56
  %68 = load i8*, i8** @MCP3021_VDD_REF_DEFAULT, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %71 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %75 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %97 [
    i32 129, label %77
    i32 128, label %87
  ]

77:                                               ; preds = %73
  %78 = load i32, i32* @MCP3021_SAR_SHIFT, align 4
  %79 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %80 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @MCP3021_SAR_MASK, align 4
  %82 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %83 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @MCP3021_OUTPUT_RES, align 4
  %85 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %86 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %97

87:                                               ; preds = %73
  %88 = load i32, i32* @MCP3221_SAR_SHIFT, align 4
  %89 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %90 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @MCP3221_SAR_MASK, align 4
  %92 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %93 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @MCP3221_OUTPUT_RES, align 4
  %95 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %96 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %73, %87, %77
  %98 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %99 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MCP3021_VDD_REF_MAX, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %105 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MCP3021_VDD_REF_MIN, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %97
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %144

112:                                              ; preds = %103
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = call i32 @sysfs_create_file(i32* %115, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_in0_input, i32 0, i32 0))
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %144

121:                                              ; preds = %112
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = call i32 @hwmon_device_register(%struct.TYPE_5__* %123)
  %125 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %126 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %128 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @IS_ERR(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %121
  %133 = load %struct.mcp3021_data*, %struct.mcp3021_data** %7, align 8
  %134 = getelementptr inbounds %struct.mcp3021_data, %struct.mcp3021_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @PTR_ERR(i32 %135)
  store i32 %136, i32* %6, align 4
  br label %138

137:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %144

138:                                              ; preds = %132
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = call i32 @sysfs_remove_file(i32* %141, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_in0_input, i32 0, i32 0))
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %137, %119, %109, %30, %20
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.mcp3021_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mcp3021_data*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
