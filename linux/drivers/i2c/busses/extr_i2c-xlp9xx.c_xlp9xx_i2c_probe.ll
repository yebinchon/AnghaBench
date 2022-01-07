; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.xlp9xx_i2c_dev = type { i64, %struct.TYPE_12__, %struct.TYPE_13__*, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__, i32, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"invalid irq!\0A\00", align 1
@xlp9xx_i2c_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"IRQ request failed!\0A\00", align 1
@xlp9xx_i2c_algo = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"xlp9xx-i2c\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"No active SMBus alert %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"I2C bus:%d added\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlp9xx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp9xx_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xlp9xx_i2c_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xlp9xx_i2c_dev* @devm_kzalloc(%struct.TYPE_13__* %8, i32 80, i32 %9)
  store %struct.xlp9xx_i2c_dev* %10, %struct.xlp9xx_i2c_dev** %4, align 8
  %11 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %12 = icmp ne %struct.xlp9xx_i2c_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %169

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(%struct.TYPE_13__* %21, %struct.resource* %22)
  %24 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %25 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %27 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %33 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %169

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = call i8* @platform_get_irq(%struct.platform_device* %37, i32 0)
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %41 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %43 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(%struct.TYPE_13__* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %51 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %169

54:                                               ; preds = %36
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i8* @platform_get_irq(%struct.platform_device* %55, i32 1)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %59 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %62 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %68 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %54
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %73 = call i32 @xlp9xx_i2c_get_frequency(%struct.platform_device* %71, %struct.xlp9xx_i2c_dev* %72)
  %74 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %75 = call i32 @xlp9xx_i2c_init(%struct.xlp9xx_i2c_dev* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %79 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @xlp9xx_i2c_isr, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %87 = call i32 @devm_request_irq(%struct.TYPE_13__* %77, i32 %81, i32 %82, i32 0, i32 %85, %struct.xlp9xx_i2c_dev* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %70
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(%struct.TYPE_13__* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %169

95:                                               ; preds = %70
  %96 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %97 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %96, i32 0, i32 3
  %98 = call i32 @init_completion(i32* %97)
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %102 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %104, align 8
  %105 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %106 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  store i32* @xlp9xx_i2c_algo, i32** %107, align 8
  %108 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %109 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %110 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 8
  %112 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %113 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @ACPI_COMPANION(%struct.TYPE_13__* %116)
  %118 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_14__* %114, i32 %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %124 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %130 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %129, i32 0, i32 2
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %130, align 8
  %131 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %132 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @snprintf(i32 %134, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %136 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %137 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %136, i32 0, i32 1
  %138 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %139 = call i32 @i2c_set_adapdata(%struct.TYPE_12__* %137, %struct.xlp9xx_i2c_dev* %138)
  %140 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %141 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %140, i32 0, i32 1
  %142 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %95
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %169

147:                                              ; preds = %95
  %148 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = call i32 @xlp9xx_i2c_smbus_setup(%struct.xlp9xx_i2c_dev* %148, %struct.platform_device* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @dev_dbg(%struct.TYPE_13__* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %153, %147
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %161 = call i32 @platform_set_drvdata(%struct.platform_device* %159, %struct.xlp9xx_i2c_dev* %160)
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %165 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dev_dbg(%struct.TYPE_13__* %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %158, %145, %90, %46, %31, %13
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.xlp9xx_i2c_dev* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @xlp9xx_i2c_get_frequency(%struct.platform_device*, %struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @xlp9xx_i2c_init(%struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i32, %struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.TYPE_13__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_12__*, %struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @xlp9xx_i2c_smbus_setup(%struct.xlp9xx_i2c_dev*, %struct.platform_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xlp9xx_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
