; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i64, i64* }
%struct.acpi_device = type { %struct.acpi_smbus_cmi*, i32, i32 }
%struct.acpi_smbus_cmi = type { i64, %struct.TYPE_4__, i32, %struct.smbus_methods_t*, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.acpi_smbus_cmi*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.smbus_methods_t = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_SMBUS_HC_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_SMBUS_HC_CLASS = common dso_local global i32 0, align 4
@acpi_smbus_cmi_ids = common dso_local global %struct.acpi_device_id* null, align 8
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@acpi_smbus_cmi_query_methods = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SMBus CMI adapter %s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@acpi_smbus_cmi_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't register adapter!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_smbus_cmi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbus_cmi_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_smbus_cmi*, align 8
  %5 = alloca %struct.acpi_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acpi_smbus_cmi* @kzalloc(i32 80, i32 %7)
  store %struct.acpi_smbus_cmi* %8, %struct.acpi_smbus_cmi** %4, align 8
  %9 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %10 = icmp ne %struct.acpi_smbus_cmi* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %126

14:                                               ; preds = %1
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = call i8* @acpi_device_name(%struct.acpi_device* %20)
  %22 = load i32, i32* @ACPI_SMBUS_HC_DEVICE_NAME, align 4
  %23 = call i32 @strcpy(i8* %21, i32 %22)
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = call i8* @acpi_device_class(%struct.acpi_device* %24)
  %26 = load i32, i32* @ACPI_SMBUS_HC_CLASS, align 4
  %27 = call i32 @strcpy(i8* %25, i32 %26)
  %28 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %29 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 0
  store %struct.acpi_smbus_cmi* %28, %struct.acpi_smbus_cmi** %30, align 8
  %31 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.acpi_device_id*, %struct.acpi_device_id** @acpi_smbus_cmi_ids, align 8
  store %struct.acpi_device_id* %37, %struct.acpi_device_id** %5, align 8
  br label %38

38:                                               ; preds = %61, %14
  %39 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %40 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %50 = call i32 @acpi_device_hid(%struct.acpi_device* %49)
  %51 = call i32 @strcmp(i64* %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %55 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.smbus_methods_t*
  %58 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %59 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %58, i32 0, i32 3
  store %struct.smbus_methods_t* %57, %struct.smbus_methods_t** %59, align 8
  br label %60

60:                                               ; preds = %53, %45
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %63 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %62, i32 1
  store %struct.acpi_device_id* %63, %struct.acpi_device_id** %5, align 8
  br label %38

64:                                               ; preds = %38
  %65 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %66 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %67 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @acpi_smbus_cmi_query_methods, align 4
  %70 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %71 = call i32 @acpi_walk_namespace(i32 %65, i32 %68, i32 1, i32 %69, i32* null, %struct.acpi_smbus_cmi* %70, i32* null)
  %72 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %73 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %120

79:                                               ; preds = %64
  %80 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %81 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %85 = call i8* @acpi_device_name(%struct.acpi_device* %84)
  %86 = call i32 @snprintf(i32 %83, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %89 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 8
  %91 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %92 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  store i32* @acpi_smbus_cmi_algorithm, i32** %93, align 8
  %94 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %95 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %96 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store %struct.acpi_smbus_cmi* %94, %struct.acpi_smbus_cmi** %97, align 8
  %98 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %99 = load i32, i32* @I2C_CLASS_SPD, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %102 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %105 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %104, i32 0, i32 1
  %106 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %107 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32* %105, i32** %109, align 8
  %110 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %111 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %110, i32 0, i32 1
  %112 = call i32 @i2c_add_adapter(%struct.TYPE_4__* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %79
  %116 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %117 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %116, i32 0, i32 1
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %120

119:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %126

120:                                              ; preds = %115, %76
  %121 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %122 = call i32 @kfree(%struct.acpi_smbus_cmi* %121)
  %123 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %124 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %123, i32 0, i32 0
  store %struct.acpi_smbus_cmi* null, %struct.acpi_smbus_cmi** %124, align 8
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %120, %119, %11
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.acpi_smbus_cmi* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i8* @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @strcmp(i64*, i32) #1

declare dso_local i32 @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, %struct.acpi_smbus_cmi*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.acpi_smbus_cmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
