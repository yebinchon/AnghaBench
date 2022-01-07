; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_12__* }
%struct.xlr_i2c_private = type { i32, %struct.TYPE_14__, %struct.clk*, %struct.clk*, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32, i32, i32, i32*, i32*, %struct.xlr_i2c_private*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xlr_i2c_dt_ids = common dso_local global i32 0, align 4
@xlr_i2c_config_default = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@XLR_I2C_FLAG_IRQ = common dso_local global i32 0, align 4
@XLR_I2C_INT_EN = common dso_local global i32 0, align 4
@XLR_I2C_INT_STAT = common dso_local global i32 0, align 4
@xlr_i2c_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@XLR_I2C_CLKDIV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@xlr_i2c_algo = common dso_local global i32 0, align 4
@xlr_i2c_quirks = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"xlr-i2c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Added I2C Bus.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlr_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.xlr_i2c_private*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.xlr_i2c_private* @devm_kzalloc(%struct.TYPE_13__* %14, i32 104, i32 %15)
  store %struct.xlr_i2c_private* %16, %struct.xlr_i2c_private** %5, align 8
  %17 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %18 = icmp ne %struct.xlr_i2c_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %209

22:                                               ; preds = %1
  %23 = load i32, i32* @xlr_i2c_dt_ids, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 1
  %26 = call %struct.of_device_id* @of_match_device(i32 %23, %struct.TYPE_13__* %25)
  store %struct.of_device_id* %26, %struct.of_device_id** %4, align 8
  %27 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %28 = icmp ne %struct.of_device_id* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %34 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %33, i32 0, i32 5
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %34, align 8
  br label %38

35:                                               ; preds = %22
  %36 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %37 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %36, i32 0, i32 5
  store %struct.TYPE_12__* @xlr_i2c_config_default, %struct.TYPE_12__** %37, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_13__* %43, %struct.resource* %44)
  %46 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %47 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %46, i32 0, i32 3
  store %struct.clk* %45, %struct.clk** %47, align 8
  %48 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %49 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %48, i32 0, i32 3
  %50 = load %struct.clk*, %struct.clk** %49, align 8
  %51 = call i64 @IS_ERR(%struct.clk* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %55 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %54, i32 0, i32 3
  %56 = load %struct.clk*, %struct.clk** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.clk* %56)
  store i32 %57, i32* %2, align 4
  br label %209

58:                                               ; preds = %38
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = call i32 @platform_get_irq(%struct.platform_device* %59, i32 0)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %58
  %64 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %65 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %64, i32 0, i32 5
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @XLR_I2C_FLAG_IRQ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %63
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %75 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %77 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %76, i32 0, i32 3
  %78 = load %struct.clk*, %struct.clk** %77, align 8
  %79 = load i32, i32* @XLR_I2C_INT_EN, align 4
  %80 = call i32 @xlr_i2c_wreg(%struct.clk* %78, i32 %79, i64 0)
  %81 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %82 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %81, i32 0, i32 3
  %83 = load %struct.clk*, %struct.clk** %82, align 8
  %84 = load i32, i32* @XLR_I2C_INT_STAT, align 4
  %85 = call i32 @xlr_i2c_wreg(%struct.clk* %83, i32 %84, i64 15)
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 1
  %88 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %89 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @xlr_i2c_irq, align 4
  %92 = load i32, i32* @IRQF_SHARED, align 4
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 1
  %95 = call i32 @dev_name(%struct.TYPE_13__* %94)
  %96 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %97 = call i32 @devm_request_irq(%struct.TYPE_13__* %87, i32 %90, i32 %91, i32 %92, i32 %95, %struct.xlr_i2c_private* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %72
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %2, align 4
  br label %209

102:                                              ; preds = %72
  %103 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %104 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %103, i32 0, i32 4
  %105 = call i32 @init_waitqueue_head(i32* %104)
  br label %106

106:                                              ; preds = %102, %63, %58
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @of_property_read_u32(i32 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %10)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 100000, i32* %10, align 4
  br label %114

114:                                              ; preds = %113, %106
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 1
  %117 = call %struct.clk* @devm_clk_get(%struct.TYPE_13__* %116, i32* null)
  store %struct.clk* %117, %struct.clk** %7, align 8
  %118 = load %struct.clk*, %struct.clk** %7, align 8
  %119 = call i64 @IS_ERR(%struct.clk* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %146, label %121

121:                                              ; preds = %114
  %122 = load %struct.clk*, %struct.clk** %7, align 8
  %123 = call i32 @clk_prepare_enable(%struct.clk* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %2, align 4
  br label %209

128:                                              ; preds = %121
  %129 = load %struct.clk*, %struct.clk** %7, align 8
  %130 = call i64 @clk_get_rate(%struct.clk* %129)
  store i64 %130, i64* %8, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = mul nsw i32 2, %132
  %134 = call i64 @DIV_ROUND_UP(i64 %131, i32 %133)
  store i64 %134, i64* %9, align 8
  %135 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %136 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %135, i32 0, i32 3
  %137 = load %struct.clk*, %struct.clk** %136, align 8
  %138 = load i32, i32* @XLR_I2C_CLKDIV, align 4
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @xlr_i2c_wreg(%struct.clk* %137, i32 %138, i64 %139)
  %141 = load %struct.clk*, %struct.clk** %7, align 8
  %142 = call i32 @clk_disable(%struct.clk* %141)
  %143 = load %struct.clk*, %struct.clk** %7, align 8
  %144 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %145 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %144, i32 0, i32 2
  store %struct.clk* %143, %struct.clk** %145, align 8
  br label %146

146:                                              ; preds = %128, %114
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 1
  %149 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %150 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %152, align 8
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %158 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 8
  %161 = load i32, i32* @THIS_MODULE, align 4
  %162 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %163 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 7
  store i32 %161, i32* %164, align 8
  %165 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %166 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %167 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 6
  store %struct.xlr_i2c_private* %165, %struct.xlr_i2c_private** %168, align 8
  %169 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %170 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  store i32* @xlr_i2c_algo, i32** %171, align 8
  %172 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %173 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  store i32* @xlr_i2c_quirks, i32** %174, align 8
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %179 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  store i32 %177, i32* %180, align 8
  %181 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %182 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %183 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  store i32 %181, i32* %184, align 4
  %185 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %186 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @snprintf(i32 %188, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %190 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %191 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %190, i32 0, i32 1
  %192 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %193 = call i32 @i2c_set_adapdata(%struct.TYPE_14__* %191, %struct.xlr_i2c_private* %192)
  %194 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %195 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %194, i32 0, i32 1
  %196 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_14__* %195)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %146
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %2, align 4
  br label %209

201:                                              ; preds = %146
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %204 = call i32 @platform_set_drvdata(%struct.platform_device* %202, %struct.xlr_i2c_private* %203)
  %205 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %5, align 8
  %206 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = call i32 @dev_info(%struct.TYPE_11__* %207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %201, %199, %126, %100, %53, %19
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.xlr_i2c_private* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @xlr_i2c_wreg(%struct.clk*, i32, i64) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i32, %struct.xlr_i2c_private*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_14__*, %struct.xlr_i2c_private*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_14__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xlr_i2c_private*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
