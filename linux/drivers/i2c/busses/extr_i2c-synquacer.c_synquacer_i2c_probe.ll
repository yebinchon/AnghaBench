; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__* }
%struct.platform_device = type { %struct.TYPE_17__, i32 }
%struct.synquacer_i2c = type { i32, %struct.TYPE_16__, i32, i32, %struct.TYPE_17__*, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"socionext,pclk-rate\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"clock source %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to enable clock (%d)\0A\00", align 1
@SYNQUACER_I2C_MIN_CLK_RATE = common dso_local global i32 0, align 4
@SYNQUACER_I2C_MAX_CLK_RATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"PCLK missing or out of range (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"no IRQ resource found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@synquacer_i2c_isr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"cannot claim IRQ %d\0A\00", align 1
@STATE_IDLE = common dso_local global i32 0, align 4
@synquacer_i2c_ops = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@SYNQUACER_I2C_SPEED_SM = common dso_local global i32 0, align 4
@SYNQUACER_I2C_SPEED_FM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to add bus to i2c core\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s: synquacer_i2c adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @synquacer_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.synquacer_i2c*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.synquacer_i2c* @devm_kzalloc(%struct.TYPE_17__* %9, i32 64, i32 %10)
  store %struct.synquacer_i2c* %11, %struct.synquacer_i2c** %4, align 8
  %12 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %13 = icmp ne %struct.synquacer_i2c* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %243

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @i2c_acpi_find_bus_speed(%struct.TYPE_17__* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @device_property_read_u32(%struct.TYPE_17__* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %6)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %31 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %30, i32 0, i32 0
  %32 = call i32 @device_property_read_u32(%struct.TYPE_17__* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @devm_clk_get(%struct.TYPE_17__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %37 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %39 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %27
  %44 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %45 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EPROBE_DEFER, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %243

54:                                               ; preds = %43, %27
  %55 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %56 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IS_ERR_OR_NULL(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %54
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %64 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_dbg(%struct.TYPE_17__* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %68 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_prepare_enable(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %243

79:                                               ; preds = %60
  %80 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %81 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_get_rate(i32 %82)
  %84 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %85 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %79, %54
  %87 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %88 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SYNQUACER_I2C_MIN_CLK_RATE, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %94 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SYNQUACER_I2C_MAX_CLK_RATE, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92, %86
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %102 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %243

107:                                              ; preds = %92
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = load i32, i32* @IORESOURCE_MEM, align 4
  %110 = call %struct.resource* @platform_get_resource(%struct.platform_device* %108, i32 %109, i32 0)
  store %struct.resource* %110, %struct.resource** %5, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.resource*, %struct.resource** %5, align 8
  %114 = call i32 @devm_ioremap_resource(%struct.TYPE_17__* %112, %struct.resource* %113)
  %115 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %116 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  %117 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %118 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %107
  %123 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %124 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @PTR_ERR(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %243

127:                                              ; preds = %107
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = call i32 @platform_get_irq(%struct.platform_device* %128, i32 0)
  %130 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %131 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 4
  %132 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %133 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @ENODEV, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %243

142:                                              ; preds = %127
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %146 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @synquacer_i2c_isr, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_name(%struct.TYPE_17__* %150)
  %152 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %153 = call i32 @devm_request_irq(%struct.TYPE_17__* %144, i32 %147, i32 %148, i32 0, i32 %151, %struct.synquacer_i2c* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %142
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %160 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %243

164:                                              ; preds = %142
  %165 = load i32, i32* @STATE_IDLE, align 4
  %166 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %167 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 8
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %171 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %170, i32 0, i32 4
  store %struct.TYPE_17__* %169, %struct.TYPE_17__** %171, align 8
  %172 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %173 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %172, i32 0, i32 1
  %174 = bitcast %struct.TYPE_16__* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 bitcast (%struct.TYPE_16__* @synquacer_i2c_ops to i8*), i64 24, i1 false)
  %175 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %176 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %175, i32 0, i32 1
  %177 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %178 = call i32 @i2c_set_adapdata(%struct.TYPE_16__* %176, %struct.synquacer_i2c* %177)
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %182 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  store %struct.TYPE_17__* %180, %struct.TYPE_17__** %184, align 8
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %190 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  store i32 %188, i32* %192, align 8
  %193 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %194 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = call i32 @ACPI_COMPANION(%struct.TYPE_17__* %197)
  %199 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_17__* %195, i32 %198)
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %204 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 8
  %206 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %207 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %206, i32 0, i32 3
  %208 = call i32 @init_completion(i32* %207)
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %209, 400000
  br i1 %210, label %211, label %215

211:                                              ; preds = %164
  %212 = load i32, i32* @SYNQUACER_I2C_SPEED_SM, align 4
  %213 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %214 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  br label %219

215:                                              ; preds = %164
  %216 = load i32, i32* @SYNQUACER_I2C_SPEED_FM, align 4
  %217 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %218 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %215, %211
  %220 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %221 = call i32 @synquacer_i2c_hw_init(%struct.synquacer_i2c* %220)
  %222 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %223 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %222, i32 0, i32 1
  %224 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_16__* %223)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %219
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %228, i32 0, i32 0
  %230 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %231 = load i32, i32* %7, align 4
  store i32 %231, i32* %2, align 4
  br label %243

232:                                              ; preds = %219
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %235 = call i32 @platform_set_drvdata(%struct.platform_device* %233, %struct.synquacer_i2c* %234)
  %236 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %237 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %236, i32 0, i32 0
  %238 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %239 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = call i32 @dev_name(%struct.TYPE_17__* %240)
  %242 = call i32 @dev_info(%struct.TYPE_17__* %237, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %241)
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %232, %227, %156, %136, %122, %98, %73, %51, %14
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.synquacer_i2c* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @i2c_acpi_find_bus_speed(%struct.TYPE_17__*) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_17__*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_17__*, i32, i32, i32, i32, %struct.synquacer_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_17__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_16__*, %struct.synquacer_i2c*) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.TYPE_17__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @synquacer_i2c_hw_init(%struct.synquacer_i2c*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_16__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.synquacer_i2c*) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
