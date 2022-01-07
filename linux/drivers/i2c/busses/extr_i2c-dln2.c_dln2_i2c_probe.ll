; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-dln2.c_dln2_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-dln2.c_dln2_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.dln2_i2c = type { i32, %struct.TYPE_4__, %struct.platform_device*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, i32*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.device* }
%struct.dln2_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLN2_I2C_BUF_SIZE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@dln2_i2c_usb_algorithm = common dso_local global i32 0, align 4
@dln2_i2c_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dln2-i2c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to initialize adapter: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dln2_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dln2_i2c*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dln2_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.dln2_platform_data* @dev_get_platdata(%struct.device* %11)
  store %struct.dln2_platform_data* %12, %struct.dln2_platform_data** %7, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.dln2_i2c* @devm_kzalloc(%struct.device* %13, i32 72, i32 %14)
  store %struct.dln2_i2c* %15, %struct.dln2_i2c** %5, align 8
  %16 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %17 = icmp ne %struct.dln2_i2c* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %118

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @DLN2_I2C_BUF_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @devm_kmalloc(%struct.device* %22, i32 %23, i32 %24)
  %26 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %27 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %29 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %118

35:                                               ; preds = %21
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %38 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %37, i32 0, i32 2
  store %struct.platform_device* %36, %struct.platform_device** %38, align 8
  %39 = load %struct.dln2_platform_data*, %struct.dln2_platform_data** %7, align 8
  %40 = getelementptr inbounds %struct.dln2_platform_data, %struct.dln2_platform_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %43 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @THIS_MODULE, align 4
  %45 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %46 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %49 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %50 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 8
  %52 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %53 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i32* @dln2_i2c_usb_algorithm, i32** %54, align 8
  %55 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %56 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32* @dln2_i2c_quirks, i32** %57, align 8
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %60 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store %struct.device* %58, %struct.device** %62, align 8
  %63 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %64 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @ACPI_COMPANION(%struct.device* %67)
  %69 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_5__* %65, i32 %68)
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %74 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %78 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %77, i32 0, i32 1
  %79 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %80 = call i32 @i2c_set_adapdata(%struct.TYPE_4__* %78, %struct.dln2_i2c* %79)
  %81 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %82 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.device, %struct.device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @dev_name(i32 %88)
  %90 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %91 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @snprintf(i32 %84, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %89, i32 %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.dln2_i2c* %95)
  %97 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %98 = call i32 @dln2_i2c_enable(%struct.dln2_i2c* %97, i32 1)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %35
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %118

106:                                              ; preds = %35
  %107 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %108 = getelementptr inbounds %struct.dln2_i2c, %struct.dln2_i2c* %107, i32 0, i32 1
  %109 = call i32 @i2c_add_adapter(%struct.TYPE_4__* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %114

113:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %118

114:                                              ; preds = %112
  %115 = load %struct.dln2_i2c*, %struct.dln2_i2c** %5, align 8
  %116 = call i32 @dln2_i2c_enable(%struct.dln2_i2c* %115, i32 0)
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %114, %113, %101, %32, %18
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.dln2_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.dln2_i2c* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_4__*, %struct.dln2_i2c*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dln2_i2c*) #1

declare dso_local i32 @dln2_i2c_enable(%struct.dln2_i2c*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
