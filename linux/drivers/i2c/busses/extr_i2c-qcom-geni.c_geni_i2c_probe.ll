; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.geni_i2c_dev = type { i32, i32, i32, %struct.TYPE_28__, %struct.TYPE_27__, i32, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_25__*, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__, i32* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"se\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Err getting SE Core clk %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Bus frequency not specified, default to 100kHz.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"IRQ error for i2c-geni\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid clk frequency %d Hz: %d\0A\00", align 1
@geni_i2c_algo = common dso_local global i32 0, align 4
@geni_i2c_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"i2c_geni\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Request_irq failed:%d: err:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Geni-I2C\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Error turning on resources %d\0A\00", align 1
@GENI_SE_I2C = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Invalid proto %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@PACKING_BYTES_PW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Error turning off resources %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"i2c fifo/se-dma mode. fifo depth:%d\0A\00", align 1
@I2C_AUTO_SUSPEND_DELAY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"Error adding i2c adapter %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Geni-I2C adaptor successfully added\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @geni_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geni_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.geni_i2c_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.geni_i2c_dev* @devm_kzalloc(%struct.TYPE_25__* %10, i32 88, i32 %11)
  store %struct.geni_i2c_dev* %12, %struct.geni_i2c_dev** %4, align 8
  %13 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %14 = icmp ne %struct.geni_i2c_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %309

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_get_drvdata(i32 %27)
  %29 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %30 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = call i32 @devm_ioremap_resource(%struct.TYPE_25__* %36, %struct.resource* %37)
  %39 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %40 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %43 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %18
  %49 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %50 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %309

54:                                               ; preds = %18
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @devm_clk_get(%struct.TYPE_25__* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %59 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %62 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %54
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i64 @has_acpi_companion(%struct.TYPE_25__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %74 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %309

83:                                               ; preds = %67, %54
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %87 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %86, i32 0, i32 7
  %88 = call i32 @device_property_read_u32(%struct.TYPE_25__* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_info(%struct.TYPE_25__* %93, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %95 = call i32 @KHZ(i32 100)
  %96 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %97 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %91, %83
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i64 @has_acpi_companion(%struct.TYPE_25__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %105 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 1
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 @ACPI_COMPANION(%struct.TYPE_25__* %108)
  %110 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_26__* %106, i32 %109)
  br label %111

111:                                              ; preds = %103, %98
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i32 @platform_get_irq(%struct.platform_device* %112, i32 0)
  %114 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %115 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %117 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %125 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %2, align 4
  br label %309

127:                                              ; preds = %111
  %128 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %129 = call i32 @geni_i2c_clk_map_idx(%struct.geni_i2c_dev* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %136 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %309

141:                                              ; preds = %127
  %142 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %143 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 2
  store i32* @geni_i2c_algo, i32** %144, align 8
  %145 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %146 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %145, i32 0, i32 6
  %147 = call i32 @init_completion(i32* %146)
  %148 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %149 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %148, i32 0, i32 5
  %150 = call i32 @spin_lock_init(i32* %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %153 = call i32 @platform_set_drvdata(%struct.platform_device* %151, %struct.geni_i2c_dev* %152)
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %157 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @geni_i2c_irq, align 4
  %160 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %161 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %162 = call i32 @devm_request_irq(%struct.TYPE_25__* %155, i32 %158, i32 %159, i32 %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.geni_i2c_dev* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %141
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %169 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %170, i32 %171)
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %2, align 4
  br label %309

174:                                              ; preds = %141
  %175 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %176 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @disable_irq(i32 %177)
  %179 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %180 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %179, i32 0, i32 4
  %181 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %182 = call i32 @i2c_set_adapdata(%struct.TYPE_27__* %180, %struct.geni_i2c_dev* %181)
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %186 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 1
  store %struct.TYPE_25__* %184, %struct.TYPE_25__** %188, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %194 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  store i32 %192, i32* %196, align 8
  %197 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %198 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @strlcpy(i32 %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %202 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %203 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %202, i32 0, i32 3
  %204 = call i32 @geni_se_resources_on(%struct.TYPE_28__* %203)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %174
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = load i32, i32* %8, align 4
  %211 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %2, align 4
  br label %309

213:                                              ; preds = %174
  %214 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %215 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %214, i32 0, i32 3
  %216 = call i32 @geni_se_read_proto(%struct.TYPE_28__* %215)
  store i32 %216, i32* %6, align 4
  %217 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %218 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %217, i32 0, i32 3
  %219 = call i32 @geni_se_get_tx_fifo_depth(%struct.TYPE_28__* %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @GENI_SE_I2C, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %213
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = load i32, i32* %6, align 4
  %227 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %226)
  %228 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %229 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %228, i32 0, i32 3
  %230 = call i32 @geni_se_resources_off(%struct.TYPE_28__* %229)
  %231 = load i32, i32* @ENXIO, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %2, align 4
  br label %309

233:                                              ; preds = %213
  %234 = load i32, i32* %7, align 4
  %235 = sub nsw i32 %234, 1
  %236 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %237 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %239 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %238, i32 0, i32 3
  %240 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %241 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @geni_se_init(%struct.TYPE_28__* %239, i32 %242, i32 %243)
  %245 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %246 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %245, i32 0, i32 3
  %247 = load i32, i32* @BITS_PER_BYTE, align 4
  %248 = load i32, i32* @PACKING_BYTES_PW, align 4
  %249 = call i32 @geni_se_config_packing(%struct.TYPE_28__* %246, i32 %247, i32 %248, i32 1, i32 1, i32 1)
  %250 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %251 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %250, i32 0, i32 3
  %252 = call i32 @geni_se_resources_off(%struct.TYPE_28__* %251)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %233
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = load i32, i32* %8, align 4
  %259 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %257, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* %8, align 4
  store i32 %260, i32* %2, align 4
  br label %309

261:                                              ; preds = %233
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %262, i32 0, i32 0
  %264 = load i32, i32* %7, align 4
  %265 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_dbg(%struct.TYPE_25__* %263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %264)
  %266 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %267 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %266, i32 0, i32 2
  store i32 1, i32* %267, align 8
  %268 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %269 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %270, align 8
  %272 = call i32 @pm_runtime_set_suspended(%struct.TYPE_25__* %271)
  %273 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %274 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %275, align 8
  %277 = load i32, i32* @I2C_AUTO_SUSPEND_DELAY, align 4
  %278 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_25__* %276, i32 %277)
  %279 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %280 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %281, align 8
  %283 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_25__* %282)
  %284 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %285 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %286, align 8
  %288 = call i32 @pm_runtime_enable(%struct.TYPE_25__* %287)
  %289 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %290 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %289, i32 0, i32 4
  %291 = call i32 @i2c_add_adapter(%struct.TYPE_27__* %290)
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %261
  %295 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %296 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %295, i32 0, i32 0
  %297 = load i32, i32* %8, align 4
  %298 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %296, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %297)
  %299 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %300 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %301, align 8
  %303 = call i32 @pm_runtime_disable(%struct.TYPE_25__* %302)
  %304 = load i32, i32* %8, align 4
  store i32 %304, i32* %2, align 4
  br label %309

305:                                              ; preds = %261
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %306, i32 0, i32 0
  %308 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_dbg(%struct.TYPE_25__* %307, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %309

309:                                              ; preds = %305, %294, %255, %223, %207, %165, %132, %120, %72, %48, %15
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local %struct.geni_i2c_dev* @devm_kzalloc(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_25__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_25__*, i8*) #1

declare dso_local i64 @has_acpi_companion(%struct.TYPE_25__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_25__*, i8*, ...) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_25__*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @KHZ(i32) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.TYPE_25__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @geni_i2c_clk_map_idx(%struct.geni_i2c_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.geni_i2c_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_25__*, i32, i32, i32, i8*, %struct.geni_i2c_dev*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_27__*, %struct.geni_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @geni_se_resources_on(%struct.TYPE_28__*) #1

declare dso_local i32 @geni_se_read_proto(%struct.TYPE_28__*) #1

declare dso_local i32 @geni_se_get_tx_fifo_depth(%struct.TYPE_28__*) #1

declare dso_local i32 @geni_se_resources_off(%struct.TYPE_28__*) #1

declare dso_local i32 @geni_se_init(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @geni_se_config_packing(%struct.TYPE_28__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_25__*, i8*, ...) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_25__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_27__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
