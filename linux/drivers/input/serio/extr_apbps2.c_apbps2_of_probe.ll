; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_apbps2.c_apbps2_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_apbps2.c_apbps2_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.apbps2_priv = type { %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32, %struct.apbps2_priv*, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@apbps2_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"apbps2\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"request IRQ%d failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unable to get core frequency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SERIO_8042 = common dso_local global i32 0, align 4
@apbps2_open = common dso_local global i32 0, align 4
@apbps2_close = common dso_local global i32 0, align 4
@apbps2_write = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"APBPS2 PS/2\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"apbps2_%d\00", align 1
@apbps2_idx = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"irq = %d, base = 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @apbps2_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apbps2_of_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.apbps2_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.apbps2_priv* @devm_kzalloc(%struct.TYPE_15__* %10, i32 16, i32 %11)
  store %struct.apbps2_priv* %12, %struct.apbps2_priv** %4, align 8
  %13 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %14 = icmp ne %struct.apbps2_priv* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %154

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %8, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %8, align 8
  %28 = call %struct.TYPE_16__* @devm_ioremap_resource(%struct.TYPE_15__* %26, %struct.resource* %27)
  %29 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %30 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %29, i32 0, i32 1
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %30, align 8
  %31 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %32 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = call i64 @IS_ERR(%struct.TYPE_16__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %38 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.TYPE_16__* %39)
  store i32 %40, i32* %2, align 4
  br label %154

41:                                               ; preds = %21
  %42 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %43 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = call i32 @iowrite32be(i32 0, i32* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @irq_of_parse_and_map(i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @apbps2_isr, align 4
  %56 = load i32, i32* @IRQF_SHARED, align 4
  %57 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %58 = call i32 @devm_request_irq(%struct.TYPE_15__* %53, i32 %54, i32 %55, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.apbps2_priv* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %41
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %154

67:                                               ; preds = %41
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @of_property_read_u32(i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %154

80:                                               ; preds = %67
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %81, 10000
  %83 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %84 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = call i32 @iowrite32be(i32 %82, i32* %86)
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.TYPE_14__* @kzalloc(i32 4, i32 %88)
  %90 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %91 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %90, i32 0, i32 0
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %91, align 8
  %92 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %93 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = icmp ne %struct.TYPE_14__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %80
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %154

99:                                               ; preds = %80
  %100 = load i32, i32* @SERIO_8042, align 4
  %101 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %102 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* @apbps2_open, align 4
  %107 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %108 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 5
  store i32 %106, i32* %110, align 8
  %111 = load i32, i32* @apbps2_close, align 4
  %112 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %113 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* @apbps2_write, align 4
  %117 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %118 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  store i32 %116, i32* %120, align 8
  %121 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %122 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %123 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store %struct.apbps2_priv* %121, %struct.apbps2_priv** %125, align 8
  %126 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %127 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @strlcpy(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %132 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %133 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %132, i32 0, i32 0
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @apbps2_idx, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* @apbps2_idx, align 4
  %139 = call i32 @snprintf(i32 %136, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %144 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %143, i32 0, i32 1
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = call i32 @dev_info(%struct.TYPE_15__* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %142, %struct.TYPE_16__* %145)
  %147 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %148 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = call i32 @serio_register_port(%struct.TYPE_14__* %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = load %struct.apbps2_priv*, %struct.apbps2_priv** %4, align 8
  %153 = call i32 @platform_set_drvdata(%struct.platform_device* %151, %struct.apbps2_priv* %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %99, %96, %74, %61, %36, %15
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.apbps2_priv* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_15__*, i32, i32, i32, i8*, %struct.apbps2_priv*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @serio_register_port(%struct.TYPE_14__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.apbps2_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
