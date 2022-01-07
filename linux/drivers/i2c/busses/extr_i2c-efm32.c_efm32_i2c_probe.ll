; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-efm32.c_efm32_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-efm32.c_efm32_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.efm32_i2c_ddata = type { i32, i32, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32*, i32, i32 }
%struct.TYPE_10__ = type { %struct.device_node*, %struct.TYPE_12__* }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@efm32_i2c_algo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to determine base address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"memory resource too small\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to get irq (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to enable clock (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"energymicro,location\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"efm32,location\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"using location %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"fall back to location %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"using frequency %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"defaulting to 100 kHz\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"there is no input clock available\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"input clock too fast (%lu) to divide down to bus freq (%lu)\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"input clock = %lu, bus freq = %lu, clkdiv = %lu\0A\00", align 1
@REG_CLKDIV = common dso_local global i32 0, align 4
@REG_ROUTE = common dso_local global i32 0, align 4
@REG_ROUTE_SDAPEN = common dso_local global i32 0, align 4
@REG_ROUTE_SCLPEN = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@REG_CTRL_EN = common dso_local global i32 0, align 4
@REG_CTRL_BITO_160PCC = common dso_local global i32 0, align 4
@REG_CTRL_GIBITO = common dso_local global i32 0, align 4
@REG_IFC = common dso_local global i32 0, align 4
@REG_IFC__MASK = common dso_local global i32 0, align 4
@REG_IEN = common dso_local global i32 0, align 4
@REG_IF_TXC = common dso_local global i32 0, align 4
@REG_IF_ACK = common dso_local global i32 0, align 4
@REG_IF_NACK = common dso_local global i32 0, align 4
@REG_IF_ARBLOST = common dso_local global i32 0, align 4
@REG_IF_BUSERR = common dso_local global i32 0, align 4
@REG_IF_RXDATAV = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@REG_CMD_ABORT = common dso_local global i32 0, align 4
@efm32_i2c_irq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"failed to request irq (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @efm32_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.efm32_i2c_ddata*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %331

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.efm32_i2c_ddata* @devm_kzalloc(%struct.TYPE_12__* %23, i32 56, i32 %24)
  store %struct.efm32_i2c_ddata* %25, %struct.efm32_i2c_ddata** %4, align 8
  %26 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %27 = icmp ne %struct.efm32_i2c_ddata* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %331

31:                                               ; preds = %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.efm32_i2c_ddata* %33)
  %35 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %36 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %35, i32 0, i32 6
  %37 = call i32 @init_completion(i32* %36)
  %38 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %39 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strlcpy(i32 %41, i32 %44, i32 4)
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %48 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %51 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i32* @efm32_i2c_algo, i32** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %56 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.device_node*, %struct.device_node** %61, align 8
  %63 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %64 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store %struct.device_node* %62, %struct.device_node** %66, align 8
  %67 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %68 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %67, i32 0, i32 4
  %69 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %70 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %68, %struct.efm32_i2c_ddata* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @devm_clk_get(%struct.TYPE_12__* %72, i32* null)
  %74 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %75 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %77 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %31
  %82 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %83 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %2, align 4
  br label %331

91:                                               ; preds = %31
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load i32, i32* @IORESOURCE_MEM, align 4
  %94 = call %struct.resource* @platform_get_resource(%struct.platform_device* %92, i32 %93, i32 0)
  store %struct.resource* %94, %struct.resource** %5, align 8
  %95 = load %struct.resource*, %struct.resource** %5, align 8
  %96 = icmp ne %struct.resource* %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %331

103:                                              ; preds = %91
  %104 = load %struct.resource*, %struct.resource** %5, align 8
  %105 = call i32 @resource_size(%struct.resource* %104)
  %106 = icmp slt i32 %105, 66
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %331

113:                                              ; preds = %103
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.resource*, %struct.resource** %5, align 8
  %117 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %115, %struct.resource* %116)
  %118 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %119 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %121 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @IS_ERR(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %113
  %126 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %127 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @PTR_ERR(i32 %128)
  store i32 %129, i32* %2, align 4
  br label %331

130:                                              ; preds = %113
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = call i32 @platform_get_irq(%struct.platform_device* %131, i32 0)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* %10, align 4
  %139 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %142, %135
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %2, align 4
  br label %331

147:                                              ; preds = %130
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %150 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %152 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @clk_prepare_enable(i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load i32, i32* %10, align 4
  %161 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %2, align 4
  br label %331

163:                                              ; preds = %147
  %164 = load %struct.device_node*, %struct.device_node** %7, align 8
  %165 = call i32 @of_property_read_u32(%struct.device_node* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.device_node*, %struct.device_node** %7, align 8
  %170 = call i32 @of_property_read_u32(%struct.device_node* %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %8)
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %168, %163
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %171
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = call i32 (%struct.TYPE_12__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_12__* %176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %178)
  br label %187

180:                                              ; preds = %171
  %181 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %182 = call i32 @efm32_i2c_get_configured_location(%struct.efm32_i2c_ddata* %181)
  store i32 %182, i32* %8, align 4
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load i32, i32* %8, align 4
  %186 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %180, %174
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %190 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.device_node*, %struct.device_node** %7, align 8
  %192 = call i32 @of_property_read_u32(%struct.device_node* %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* %9)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %187
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = call i32 (%struct.TYPE_12__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_12__* %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %199)
  br label %205

201:                                              ; preds = %187
  store i32 100000, i32* %9, align 4
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %203, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %205

205:                                              ; preds = %201, %195
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %208 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %210 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @clk_get_rate(i32 %211)
  store i64 %212, i64* %6, align 8
  %213 = load i64, i64* %6, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %205
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %217, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %10, align 4
  br label %324

221:                                              ; preds = %205
  %222 = load i64, i64* %6, align 8
  %223 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %224 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 8, %225
  %227 = call i32 @DIV_ROUND_UP(i64 %222, i32 %226)
  %228 = sub nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = icmp sge i32 %229, 512
  br i1 %230, label %231, label %241

231:                                              ; preds = %221
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load i64, i64* %6, align 8
  %235 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %236 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %233, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i64 %234, i32 %237)
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %10, align 4
  br label %324

241:                                              ; preds = %221
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %242, i32 0, i32 0
  %244 = load i64, i64* %6, align 8
  %245 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %246 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = call i32 (%struct.TYPE_12__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_12__* %243, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i64 %244, i32 %247, i64 %249)
  %251 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %252 = load i32, i32* @REG_CLKDIV, align 4
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @REG_CLKDIV_DIV(i32 %253)
  %255 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %251, i32 %252, i32 %254)
  %256 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %257 = load i32, i32* @REG_ROUTE, align 4
  %258 = load i32, i32* @REG_ROUTE_SDAPEN, align 4
  %259 = load i32, i32* @REG_ROUTE_SCLPEN, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %262 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @REG_ROUTE_LOCATION(i32 %263)
  %265 = or i32 %260, %264
  %266 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %256, i32 %257, i32 %265)
  %267 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %268 = load i32, i32* @REG_CTRL, align 4
  %269 = load i32, i32* @REG_CTRL_EN, align 4
  %270 = load i32, i32* @REG_CTRL_BITO_160PCC, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @REG_CTRL_GIBITO, align 4
  %273 = mul nsw i32 0, %272
  %274 = or i32 %271, %273
  %275 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %267, i32 %268, i32 %274)
  %276 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %277 = load i32, i32* @REG_IFC, align 4
  %278 = load i32, i32* @REG_IFC__MASK, align 4
  %279 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %276, i32 %277, i32 %278)
  %280 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %281 = load i32, i32* @REG_IEN, align 4
  %282 = load i32, i32* @REG_IF_TXC, align 4
  %283 = load i32, i32* @REG_IF_ACK, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @REG_IF_NACK, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @REG_IF_ARBLOST, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @REG_IF_BUSERR, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @REG_IF_RXDATAV, align 4
  %292 = or i32 %290, %291
  %293 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %280, i32 %281, i32 %292)
  %294 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %295 = load i32, i32* @REG_CMD, align 4
  %296 = load i32, i32* @REG_CMD_ABORT, align 4
  %297 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %294, i32 %295, i32 %296)
  %298 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %299 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @efm32_i2c_irq, align 4
  %302 = load i32, i32* @DRIVER_NAME, align 4
  %303 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %304 = call i32 @request_irq(i32 %300, i32 %301, i32 0, i32 %302, %struct.efm32_i2c_ddata* %303)
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %241
  %308 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %309 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %308, i32 0, i32 0
  %310 = load i32, i32* %10, align 4
  %311 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %309, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %310)
  br label %324

312:                                              ; preds = %241
  %313 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %314 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %313, i32 0, i32 4
  %315 = call i32 @i2c_add_adapter(%struct.TYPE_11__* %314)
  store i32 %315, i32* %10, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %312
  %319 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %320 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %323 = call i32 @free_irq(i32 %321, %struct.efm32_i2c_ddata* %322)
  br label %324

324:                                              ; preds = %318, %307, %231, %215
  %325 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %4, align 8
  %326 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @clk_disable_unprepare(i32 %327)
  br label %329

329:                                              ; preds = %324, %312
  %330 = load i32, i32* %10, align 4
  store i32 %330, i32* %2, align 4
  br label %331

331:                                              ; preds = %329, %157, %145, %125, %107, %97, %81, %28, %18
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local %struct.efm32_i2c_ddata* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.efm32_i2c_ddata*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, %struct.efm32_i2c_ddata*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_12__*, i8*, i64, ...) #1

declare dso_local i32 @efm32_i2c_get_configured_location(%struct.efm32_i2c_ddata*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata*, i32, i32) #1

declare dso_local i32 @REG_CLKDIV_DIV(i32) #1

declare dso_local i32 @REG_ROUTE_LOCATION(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.efm32_i2c_ddata*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_11__*) #1

declare dso_local i32 @free_irq(i32, %struct.efm32_i2c_ddata*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
