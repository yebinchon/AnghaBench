; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-lpc2k.c_i2c_lpc2k_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-lpc2k.c_i2c_lpc2k_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.lpc2k_i2c = type { i64, i64, %struct.TYPE_12__, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't get interrupt resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error getting clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to enable clock.\0A\00", align 1
@i2c_lpc2k_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"can't request interrupt.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"can't get I2C base clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_STD_MODE_DUTY = common dso_local global i32 0, align 4
@I2C_FAST_MODE_DUTY = common dso_local global i32 0, align 4
@I2C_FAST_MODE_PLUS_DUTY = common dso_local global i32 0, align 4
@LPC24XX_I2SCLH = common dso_local global i64 0, align 8
@LPC24XX_I2SCLL = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"LPC2K I2C adapter\00", align 1
@i2c_lpc2k_algorithm = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"LPC2K I2C adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_lpc2k_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_lpc2k_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc2k_i2c*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lpc2k_i2c* @devm_kzalloc(%struct.TYPE_13__* %11, i32 64, i32 %12)
  store %struct.lpc2k_i2c* %13, %struct.lpc2k_i2c** %4, align 8
  %14 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %15 = icmp ne %struct.lpc2k_i2c* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %229

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i64 @devm_ioremap_resource(%struct.TYPE_13__* %24, %struct.resource* %25)
  %27 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %28 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %30 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @IS_ERR(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %36 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @PTR_ERR(i64 %37)
  store i32 %38, i32* %2, align 4
  br label %229

39:                                               ; preds = %19
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call i64 @platform_get_irq(%struct.platform_device* %40, i32 0)
  %42 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %43 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %45 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.TYPE_13__* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %53 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %229

56:                                               ; preds = %39
  %57 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %58 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %57, i32 0, i32 4
  %59 = call i32 @init_waitqueue_head(i32* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i64 @devm_clk_get(%struct.TYPE_13__* %61, i32* null)
  %63 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %64 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %66 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @IS_ERR(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_err(%struct.TYPE_13__* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %75 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @PTR_ERR(i64 %76)
  store i32 %77, i32* %2, align 4
  br label %229

78:                                               ; preds = %56
  %79 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %80 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @clk_prepare_enable(i64 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_err(%struct.TYPE_13__* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %229

90:                                               ; preds = %78
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %94 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @i2c_lpc2k_handler, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_name(%struct.TYPE_13__* %99)
  %101 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %102 = call i32 @devm_request_irq(%struct.TYPE_13__* %92, i32 %96, i32 %97, i32 0, i32 %100, %struct.lpc2k_i2c* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_err(%struct.TYPE_13__* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %223

109:                                              ; preds = %90
  %110 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %111 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @disable_irq_nosync(i32 %113)
  %115 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %116 = call i32 @i2c_lpc2k_reset(%struct.lpc2k_i2c* %115)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @of_property_read_u32(i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  store i32 100000, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %109
  %126 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %127 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @clk_get_rate(i64 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @dev_err(%struct.TYPE_13__* %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %9, align 4
  br label %223

138:                                              ; preds = %125
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sdiv i32 %139, %140
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp sle i32 %142, 100000
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @I2C_STD_MODE_DUTY, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sdiv i32 %147, 100
  store i32 %148, i32* %7, align 4
  br label %163

149:                                              ; preds = %138
  %150 = load i32, i32* %6, align 4
  %151 = icmp sle i32 %150, 400000
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @I2C_FAST_MODE_DUTY, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sdiv i32 %155, 100
  store i32 %156, i32* %7, align 4
  br label %162

157:                                              ; preds = %149
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @I2C_FAST_MODE_PLUS_DUTY, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sdiv i32 %160, 100
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %144
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %166 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @LPC24XX_I2SCLH, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %164, i64 %169)
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %7, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %175 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @LPC24XX_I2SCLL, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writel(i32 %173, i64 %178)
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %182 = call i32 @platform_set_drvdata(%struct.platform_device* %180, %struct.lpc2k_i2c* %181)
  %183 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %184 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %183, i32 0, i32 2
  %185 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %186 = call i32 @i2c_set_adapdata(%struct.TYPE_12__* %184, %struct.lpc2k_i2c* %185)
  %187 = load i32, i32* @THIS_MODULE, align 4
  %188 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %189 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 4
  %191 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %192 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @strlcpy(i32 %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %196 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %197 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  store i32* @i2c_lpc2k_algorithm, i32** %198, align 8
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %202 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  store %struct.TYPE_13__* %200, %struct.TYPE_13__** %204, align 8
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %210 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  store i32 %208, i32* %212, align 8
  %213 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %214 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %213, i32 0, i32 2
  %215 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %214)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %163
  br label %223

219:                                              ; preds = %163
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @dev_info(%struct.TYPE_13__* %221, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %229

223:                                              ; preds = %218, %132, %105
  %224 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %4, align 8
  %225 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @clk_disable_unprepare(i64 %226)
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %223, %219, %85, %70, %48, %34, %16
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local %struct.lpc2k_i2c* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i32, %struct.lpc2k_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @i2c_lpc2k_reset(%struct.lpc2k_i2c*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc2k_i2c*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_12__*, %struct.lpc2k_i2c*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
