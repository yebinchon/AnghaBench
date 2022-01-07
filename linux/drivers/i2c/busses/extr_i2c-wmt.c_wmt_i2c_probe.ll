; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-wmt.c_wmt_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-wmt.c_wmt_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.wmt_i2c_dev = type { i32, %struct.i2c_adapter, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.i2c_adapter = type { %struct.TYPE_6__, i32*, i32, i32 }
%struct.TYPE_6__ = type { %struct.device_node*, %struct.TYPE_7__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"irq missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to request clock\0A\00", align 1
@I2C_MODE_STANDARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@I2C_MODE_FAST = common dso_local global i32 0, align 4
@wmt_i2c_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to request irq %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"WMT I2C adapter\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@wmt_i2c_algo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"error initializing hardware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wmt_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.wmt_i2c_dev*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.wmt_i2c_dev* @devm_kzalloc(%struct.TYPE_7__* %15, i32 72, i32 %16)
  store %struct.wmt_i2c_dev* %17, %struct.wmt_i2c_dev** %5, align 8
  %18 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %19 = icmp ne %struct.wmt_i2c_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %164

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %28, %struct.resource* %29)
  %31 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %32 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %34 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %40 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %164

43:                                               ; preds = %23
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i32 @irq_of_parse_and_map(%struct.device_node* %44, i32 0)
  %46 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %47 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %49 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %43
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %164

58:                                               ; preds = %43
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = call i32 @of_clk_get(%struct.device_node* %59, i32 0)
  %61 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %62 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %64 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %73 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %164

76:                                               ; preds = %58
  %77 = load i32, i32* @I2C_MODE_STANDARD, align 4
  %78 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %79 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = call i32 @of_property_read_u32(%struct.device_node* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 400000
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @I2C_MODE_FAST, align 4
  %89 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %90 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %84, %76
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %95 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %94, i32 0, i32 3
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %95, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %99 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @wmt_i2c_isr, align 4
  %102 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %103 = call i32 @devm_request_irq(%struct.TYPE_7__* %97, i32 %100, i32 %101, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.wmt_i2c_dev* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %91
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %110 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %164

114:                                              ; preds = %91
  %115 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %116 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %115, i32 0, i32 1
  store %struct.i2c_adapter* %116, %struct.i2c_adapter** %6, align 8
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %118 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %119 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %117, %struct.wmt_i2c_dev* %118)
  %120 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @strlcpy(i32 %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %124 = load i32, i32* @THIS_MODULE, align 4
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %128 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %127, i32 0, i32 1
  store i32* @wmt_i2c_algo, i32** %128, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %132 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %133, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load %struct.device_node*, %struct.device_node** %136, align 8
  %138 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %139 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store %struct.device_node* %137, %struct.device_node** %140, align 8
  %141 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %142 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %141, i32 0, i32 0
  %143 = call i32 @init_completion(i32* %142)
  %144 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %145 = call i32 @wmt_i2c_reset_hardware(%struct.wmt_i2c_dev* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %114
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %2, align 4
  br label %164

153:                                              ; preds = %114
  %154 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %155 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %164

160:                                              ; preds = %153
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %5, align 8
  %163 = call i32 @platform_set_drvdata(%struct.platform_device* %161, %struct.wmt_i2c_dev* %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %160, %158, %148, %106, %68, %52, %38, %20
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.wmt_i2c_dev* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_7__*, i32, i32, i32, i8*, %struct.wmt_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.wmt_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wmt_i2c_reset_hardware(%struct.wmt_i2c_dev*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wmt_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
