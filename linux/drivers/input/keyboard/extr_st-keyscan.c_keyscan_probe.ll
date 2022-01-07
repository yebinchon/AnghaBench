; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_st-keyscan.c_keyscan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_st-keyscan.c_keyscan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.st_keyscan = type { i64, i32, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i8*, %struct.TYPE_11__, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no DT data present\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate the input device\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"keyscan-keys/input0\00", align 1
@keyscan_open = common dso_local global i32 0, align 4
@keyscan_close = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@keyscan_isr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @keyscan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyscan_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.st_keyscan*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_12__* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %193

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.st_keyscan* @devm_kzalloc(%struct.TYPE_12__* %21, i32 32, i32 %22)
  store %struct.st_keyscan* %23, %struct.st_keyscan** %4, align 8
  %24 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %25 = icmp ne %struct.st_keyscan* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %193

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_12__* %31)
  store %struct.input_dev* %32, %struct.input_dev** %5, align 8
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = icmp ne %struct.input_dev* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_12__* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %193

41:                                               ; preds = %29
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %53, align 8
  %54 = load i32, i32* @keyscan_open, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @keyscan_close, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @BUS_HOST, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %65 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %66 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %65, i32 0, i32 5
  store %struct.input_dev* %64, %struct.input_dev** %66, align 8
  %67 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %68 = call i32 @keypad_matrix_key_parse_dt(%struct.st_keyscan* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %41
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %193

73:                                               ; preds = %41
  %74 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %75 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %78 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %81 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %76, i32 %79, i32* null, %struct.input_dev* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_12__* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %193

89:                                               ; preds = %73
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %92 = call i32 @input_set_drvdata(%struct.input_dev* %90, %struct.st_keyscan* %91)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load i32, i32* @IORESOURCE_MEM, align 4
  %95 = call %struct.resource* @platform_get_resource(%struct.platform_device* %93, i32 %94, i32 0)
  store %struct.resource* %95, %struct.resource** %6, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.resource*, %struct.resource** %6, align 8
  %99 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %97, %struct.resource* %98)
  %100 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %101 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %103 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @IS_ERR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %89
  %108 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %109 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PTR_ERR(i32 %110)
  store i32 %111, i32* %2, align 4
  br label %193

112:                                              ; preds = %89
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @devm_clk_get(%struct.TYPE_12__* %114, i32* null)
  %116 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %117 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %119 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @IS_ERR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %112
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(%struct.TYPE_12__* %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %128 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @PTR_ERR(i32 %129)
  store i32 %130, i32* %2, align 4
  br label %193

131:                                              ; preds = %112
  %132 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %133 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @clk_enable(i32 %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @dev_err(%struct.TYPE_12__* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %193

143:                                              ; preds = %131
  %144 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %145 = call i32 @keyscan_stop(%struct.st_keyscan* %144)
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = call i64 @platform_get_irq(%struct.platform_device* %146, i32 0)
  %148 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %149 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %151 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %193

157:                                              ; preds = %143
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %161 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @keyscan_isr, align 4
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %168 = call i32 @devm_request_irq(%struct.TYPE_12__* %159, i64 %162, i32 %163, i32 0, i32 %166, %struct.st_keyscan* %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %157
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = call i32 @dev_err(%struct.TYPE_12__* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %2, align 4
  br label %193

176:                                              ; preds = %157
  %177 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %178 = call i32 @input_register_device(%struct.input_dev* %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 @dev_err(%struct.TYPE_12__* %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %2, align 4
  br label %193

186:                                              ; preds = %176
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = load %struct.st_keyscan*, %struct.st_keyscan** %4, align 8
  %189 = call i32 @platform_set_drvdata(%struct.platform_device* %187, %struct.st_keyscan* %188)
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call i32 @device_set_wakeup_capable(%struct.TYPE_12__* %191, i32 1)
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %186, %181, %171, %154, %138, %123, %107, %84, %71, %35, %26, %13
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.st_keyscan* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_12__*) #1

declare dso_local i32 @keypad_matrix_key_parse_dt(%struct.st_keyscan*) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, i32*, %struct.input_dev*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.st_keyscan*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @keyscan_stop(%struct.st_keyscan*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i64, i32, i32, i32, %struct.st_keyscan*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.st_keyscan*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
