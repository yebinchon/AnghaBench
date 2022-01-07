; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.riic_dev = type { i32, %struct.i2c_adapter, i32, i32 }
%struct.i2c_adapter = type { %struct.TYPE_13__, i32*, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__* }
%struct.resource = type { i32 }
%struct.i2c_timings = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"missing controller clock\00", align 1
@riic_irqs = common dso_local global %struct.TYPE_14__* null, align 8
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request irq %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Renesas RIIC adapter\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@riic_algo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"registered with %dHz bus speed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @riic_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riic_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.riic_dev*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.i2c_timings, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.riic_dev* @devm_kzalloc(%struct.TYPE_15__* %11, i32 48, i32 %12)
  store %struct.riic_dev* %13, %struct.riic_dev** %4, align 8
  %14 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %15 = icmp ne %struct.riic_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %177

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = call i32 @devm_ioremap_resource(%struct.TYPE_15__* %24, %struct.resource* %25)
  %27 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %28 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %30 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %36 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %177

39:                                               ; preds = %19
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @devm_clk_get(%struct.TYPE_15__* %41, i32* null)
  %43 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %44 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %46 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %55 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %177

58:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %113, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @riic_irqs, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %116

64:                                               ; preds = %59
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_IRQ, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** @riic_irqs, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 %72)
  store %struct.resource* %73, %struct.resource** %6, align 8
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = icmp ne %struct.resource* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %64
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %177

79:                                               ; preds = %64
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %6, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @riic_irqs, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** @riic_irqs, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %98 = call i32 @devm_request_irq(%struct.TYPE_15__* %81, i32 %84, i32 %90, i32 0, i32 %96, %struct.riic_dev* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %79
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** @riic_irqs, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %2, align 4
  br label %177

112:                                              ; preds = %79
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %59

116:                                              ; preds = %59
  %117 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %118 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %117, i32 0, i32 1
  store %struct.i2c_adapter* %118, %struct.i2c_adapter** %5, align 8
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %120 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %121 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %119, %struct.riic_dev* %120)
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %123 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @strlcpy(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %126 = load i32, i32* @THIS_MODULE, align 4
  %127 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %128 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %130 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %129, i32 0, i32 1
  store i32* @riic_algo, i32** %130, align 8
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %134 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  store %struct.TYPE_15__* %132, %struct.TYPE_15__** %135, align 8
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %144 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %143, i32 0, i32 0
  %145 = call i32 @init_completion(i32* %144)
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = call i32 @i2c_parse_fw_timings(%struct.TYPE_15__* %147, %struct.i2c_timings* %7, i32 1)
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @pm_runtime_enable(%struct.TYPE_15__* %150)
  %152 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %153 = call i32 @riic_init_hw(%struct.riic_dev* %152, %struct.i2c_timings* %7)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %116
  br label %172

157:                                              ; preds = %116
  %158 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %159 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %172

163:                                              ; preds = %157
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = load %struct.riic_dev*, %struct.riic_dev** %4, align 8
  %166 = call i32 @platform_set_drvdata(%struct.platform_device* %164, %struct.riic_dev* %165)
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %7, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_info(%struct.TYPE_15__* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  store i32 0, i32* %2, align 4
  br label %177

172:                                              ; preds = %162, %156
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 @pm_runtime_disable(%struct.TYPE_15__* %174)
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %172, %163, %101, %76, %50, %34, %16
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.riic_dev* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_15__*, i32, i32, i32, i32, %struct.riic_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.riic_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @i2c_parse_fw_timings(%struct.TYPE_15__*, %struct.i2c_timings*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_15__*) #1

declare dso_local i32 @riic_init_hw(%struct.riic_dev*, %struct.i2c_timings*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.riic_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
