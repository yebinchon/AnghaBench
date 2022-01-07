; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.mtk_i2c = type { %struct.TYPE_15__, %struct.TYPE_13__*, %struct.clk*, i64, %struct.clk*, %struct.clk*, %struct.clk*, i32, %struct.TYPE_14__*, i32, %struct.clk*, %struct.clk* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_13__ = type { i64, i32, i64, i32 }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@mtk_i2c_algorithm = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_DEFAULT_CLK_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot get main clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot get dma clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"arb\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pmic\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot get pmic clock\0A\00", align 1
@I2C_DRV_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to set the speed.\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"dma_set_mask return error.\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"clock enable failed!\0A\00", align 1
@mtk_i2c_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Request I2C IRQ %d fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_i2c*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_i2c* @devm_kzalloc(%struct.TYPE_14__* %10, i32 136, i32 %11)
  store %struct.mtk_i2c* %12, %struct.mtk_i2c** %5, align 8
  %13 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %14 = icmp ne %struct.mtk_i2c* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %329

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %7, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %7, align 8
  %25 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %23, %struct.resource* %24)
  %26 = bitcast i8* %25 to %struct.clk*
  %27 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %27, i32 0, i32 11
  store %struct.clk* %26, %struct.clk** %28, align 8
  %29 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %29, i32 0, i32 11
  %31 = load %struct.clk*, %struct.clk** %30, align 8
  %32 = call i64 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %35, i32 0, i32 11
  %37 = load %struct.clk*, %struct.clk** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.clk* %37)
  store i32 %38, i32* %2, align 4
  br label %329

39:                                               ; preds = %18
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 1)
  store %struct.resource* %42, %struct.resource** %7, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.resource*, %struct.resource** %7, align 8
  %46 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %44, %struct.resource* %45)
  %47 = bitcast i8* %46 to %struct.clk*
  %48 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %49 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %48, i32 0, i32 10
  store %struct.clk* %47, %struct.clk** %49, align 8
  %50 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %50, i32 0, i32 10
  %52 = load %struct.clk*, %struct.clk** %51, align 8
  %53 = call i64 @IS_ERR(%struct.clk* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %39
  %56 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %57 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %56, i32 0, i32 10
  %58 = load %struct.clk*, %struct.clk** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.clk* %58)
  store i32 %59, i32* %2, align 4
  br label %329

60:                                               ; preds = %39
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i32 @platform_get_irq(%struct.platform_device* %61, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %329

67:                                               ; preds = %60
  %68 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %69 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %68, i32 0, i32 9
  %70 = call i32 @init_completion(i32* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call %struct.TYPE_13__* @of_device_get_match_data(%struct.TYPE_14__* %72)
  %74 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %75 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %74, i32 0, i32 1
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %81 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %87 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %86, i32 0, i32 8
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %91 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %93, align 8
  %94 = load i32, i32* @THIS_MODULE, align 4
  %95 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %96 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 8
  %98 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %99 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  store i32* @mtk_i2c_algorithm, i32** %100, align 8
  %101 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %102 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %101, i32 0, i32 1
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %107 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @HZ, align 4
  %110 = mul nsw i32 2, %109
  %111 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %112 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %115 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %122 = call i32 @mtk_i2c_parse_dt(i32 %120, %struct.mtk_i2c* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %67
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %329

128:                                              ; preds = %67
  %129 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %130 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %129, i32 0, i32 1
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @I2C_DEFAULT_CLK_DIV, align 4
  %137 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %138 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %128
  %142 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %143 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %148 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %329

156:                                              ; preds = %146, %141
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i8* @devm_clk_get(%struct.TYPE_14__* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %160 = bitcast i8* %159 to %struct.clk*
  %161 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %162 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %161, i32 0, i32 4
  store %struct.clk* %160, %struct.clk** %162, align 8
  %163 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %164 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %163, i32 0, i32 4
  %165 = load %struct.clk*, %struct.clk** %164, align 8
  %166 = call i64 @IS_ERR(%struct.clk* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %156
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %172 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %173 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %172, i32 0, i32 4
  %174 = load %struct.clk*, %struct.clk** %173, align 8
  %175 = call i32 @PTR_ERR(%struct.clk* %174)
  store i32 %175, i32* %2, align 4
  br label %329

176:                                              ; preds = %156
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i8* @devm_clk_get(%struct.TYPE_14__* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %180 = bitcast i8* %179 to %struct.clk*
  %181 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %182 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %181, i32 0, i32 6
  store %struct.clk* %180, %struct.clk** %182, align 8
  %183 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %184 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %183, i32 0, i32 6
  %185 = load %struct.clk*, %struct.clk** %184, align 8
  %186 = call i64 @IS_ERR(%struct.clk* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %176
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %192 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %193 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %192, i32 0, i32 6
  %194 = load %struct.clk*, %struct.clk** %193, align 8
  %195 = call i32 @PTR_ERR(%struct.clk* %194)
  store i32 %195, i32* %2, align 4
  br label %329

196:                                              ; preds = %176
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = call i8* @devm_clk_get(%struct.TYPE_14__* %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %200 = bitcast i8* %199 to %struct.clk*
  %201 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %202 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %201, i32 0, i32 5
  store %struct.clk* %200, %struct.clk** %202, align 8
  %203 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %204 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %203, i32 0, i32 5
  %205 = load %struct.clk*, %struct.clk** %204, align 8
  %206 = call i64 @IS_ERR(%struct.clk* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %196
  %209 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %210 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %209, i32 0, i32 5
  store %struct.clk* null, %struct.clk** %210, align 8
  br label %211

211:                                              ; preds = %208, %196
  %212 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %213 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %212, i32 0, i32 4
  %214 = load %struct.clk*, %struct.clk** %213, align 8
  store %struct.clk* %214, %struct.clk** %6, align 8
  %215 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %216 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %211
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i8* @devm_clk_get(%struct.TYPE_14__* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %223 = bitcast i8* %222 to %struct.clk*
  %224 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %225 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %224, i32 0, i32 2
  store %struct.clk* %223, %struct.clk** %225, align 8
  %226 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %227 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %226, i32 0, i32 2
  %228 = load %struct.clk*, %struct.clk** %227, align 8
  %229 = call i64 @IS_ERR(%struct.clk* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %219
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %233, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %235 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %236 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %235, i32 0, i32 2
  %237 = load %struct.clk*, %struct.clk** %236, align 8
  %238 = call i32 @PTR_ERR(%struct.clk* %237)
  store i32 %238, i32* %2, align 4
  br label %329

239:                                              ; preds = %219
  %240 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %241 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %240, i32 0, i32 2
  %242 = load %struct.clk*, %struct.clk** %241, align 8
  store %struct.clk* %242, %struct.clk** %6, align 8
  br label %243

243:                                              ; preds = %239, %211
  %244 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %245 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @I2C_DRV_NAME, align 4
  %249 = call i32 @strlcpy(i32 %247, i32 %248, i32 4)
  %250 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %251 = load %struct.clk*, %struct.clk** %6, align 8
  %252 = call i32 @clk_get_rate(%struct.clk* %251)
  %253 = call i32 @mtk_i2c_set_speed(%struct.mtk_i2c* %250, i32 %252)
  store i32 %253, i32* %4, align 4
  %254 = load i32, i32* %4, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %243
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %258, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %2, align 4
  br label %329

262:                                              ; preds = %243
  %263 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %264 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %263, i32 0, i32 1
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %282

269:                                              ; preds = %262
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = call i32 @DMA_BIT_MASK(i32 33)
  %273 = call i32 @dma_set_mask(%struct.TYPE_14__* %271, i32 %272)
  store i32 %273, i32* %4, align 4
  %274 = load i32, i32* %4, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %269
  %277 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %278 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %277, i32 0, i32 0
  %279 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %278, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %280 = load i32, i32* %4, align 4
  store i32 %280, i32* %2, align 4
  br label %329

281:                                              ; preds = %269
  br label %282

282:                                              ; preds = %281, %262
  %283 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %284 = call i32 @mtk_i2c_clock_enable(%struct.mtk_i2c* %283)
  store i32 %284, i32* %4, align 4
  %285 = load i32, i32* %4, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %289 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %288, i32 0, i32 0
  %290 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %289, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %291 = load i32, i32* %4, align 4
  store i32 %291, i32* %2, align 4
  br label %329

292:                                              ; preds = %282
  %293 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %294 = call i32 @mtk_i2c_init_hw(%struct.mtk_i2c* %293)
  %295 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %296 = call i32 @mtk_i2c_clock_disable(%struct.mtk_i2c* %295)
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %297, i32 0, i32 0
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @mtk_i2c_irq, align 4
  %301 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %302 = load i32, i32* @I2C_DRV_NAME, align 4
  %303 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %304 = call i32 @devm_request_irq(%struct.TYPE_14__* %298, i32 %299, i32 %300, i32 %301, i32 %302, %struct.mtk_i2c* %303)
  store i32 %304, i32* %4, align 4
  %305 = load i32, i32* %4, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %292
  %308 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %309 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %308, i32 0, i32 0
  %310 = load i32, i32* %8, align 4
  %311 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %309, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %310)
  %312 = load i32, i32* %4, align 4
  store i32 %312, i32* %2, align 4
  br label %329

313:                                              ; preds = %292
  %314 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %315 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %314, i32 0, i32 0
  %316 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %317 = call i32 @i2c_set_adapdata(%struct.TYPE_15__* %315, %struct.mtk_i2c* %316)
  %318 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %319 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %318, i32 0, i32 0
  %320 = call i32 @i2c_add_adapter(%struct.TYPE_15__* %319)
  store i32 %320, i32* %4, align 4
  %321 = load i32, i32* %4, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %313
  %324 = load i32, i32* %4, align 4
  store i32 %324, i32* %2, align 4
  br label %329

325:                                              ; preds = %313
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %328 = call i32 @platform_set_drvdata(%struct.platform_device* %326, %struct.mtk_i2c* %327)
  store i32 0, i32* %2, align 4
  br label %329

329:                                              ; preds = %325, %323, %307, %287, %276, %256, %231, %188, %168, %153, %125, %65, %55, %34, %15
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local %struct.mtk_i2c* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.TYPE_13__* @of_device_get_match_data(%struct.TYPE_14__*) #1

declare dso_local i32 @mtk_i2c_parse_dt(i32, %struct.mtk_i2c*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mtk_i2c_set_speed(%struct.mtk_i2c*, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @dma_set_mask(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @mtk_i2c_clock_enable(%struct.mtk_i2c*) #1

declare dso_local i32 @mtk_i2c_init_hw(%struct.mtk_i2c*) #1

declare dso_local i32 @mtk_i2c_clock_disable(%struct.mtk_i2c*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.mtk_i2c*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_15__*, %struct.mtk_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_15__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
