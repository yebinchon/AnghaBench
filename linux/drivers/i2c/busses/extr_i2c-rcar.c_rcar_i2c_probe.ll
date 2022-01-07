; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32, i32 }
%struct.device = type { i32 }
%struct.rcar_i2c_priv = type { i32, i32, i32, i8*, i8*, i8*, i32, i32, %struct.i2c_adapter, i32, i8*, i32, i8* }
%struct.i2c_adapter = type { i32, i32, i32*, i32*, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.i2c_timings = type { i32 }

@RCAR_MIN_DMA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid min DMA length\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@rcar_i2c_algo = common dso_local global i32 0, align 4
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@rcar_i2c_bri = common dso_local global i32 0, align 4
@rcar_i2c_quirks = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@I2C_RCAR_GEN3 = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"multi-master\00", align 1
@ID_P_PM_BLOCKED = common dso_local global i32 0, align 4
@rcar_i2c_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"cannot get irq %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_i2c_priv*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.i2c_timings, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load i32, i32* @RCAR_MIN_DMA_LEN, align 4
  %12 = icmp slt i32 %11, 3
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON_MSG(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rcar_i2c_priv* @devm_kzalloc(%struct.device* %15, i32 144, i32 %16)
  store %struct.rcar_i2c_priv* %17, %struct.rcar_i2c_priv** %4, align 8
  %18 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %19 = icmp ne %struct.rcar_i2c_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %223

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i8* @devm_clk_get(%struct.device* %24, i32* null)
  %26 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %26, i32 0, i32 12
  store i8* %25, i8** %27, align 8
  %28 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %29 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %28, i32 0, i32 12
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %37 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %36, i32 0, i32 12
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %2, align 4
  br label %223

40:                                               ; preds = %23
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call i32 @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  %44 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %45 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 8
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %48 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @devm_ioremap_resource(%struct.device* %46, i32 %49)
  %51 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %52 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %51, i32 0, i32 10
  store i8* %50, i8** %52, align 8
  %53 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %54 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %53, i32 0, i32 10
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %60 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %59, i32 0, i32 10
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %223

63:                                               ; preds = %40
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i64 @of_device_get_match_data(%struct.device* %64)
  %66 = trunc i64 %65 to i32
  %67 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %68 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %70 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %69, i32 0, i32 9
  %71 = call i32 @init_waitqueue_head(i32* %70)
  %72 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %73 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %72, i32 0, i32 8
  store %struct.i2c_adapter* %73, %struct.i2c_adapter** %5, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %79, i32 0, i32 6
  store i32* @rcar_i2c_algo, i32** %80, align 8
  %81 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %83 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %84, i32 0, i32 0
  store i32 3, i32* %85, align 8
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store %struct.device* %86, %struct.device** %89, align 8
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %97 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %96, i32 0, i32 3
  store i32* @rcar_i2c_bri, i32** %97, align 8
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %98, i32 0, i32 2
  store i32* @rcar_i2c_quirks, i32** %99, align 8
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %101 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %102 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %100, %struct.rcar_i2c_priv* %101)
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @strlcpy(i32 %105, i32 %108, i32 4)
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 @i2c_parse_fw_timings(%struct.device* %110, %struct.i2c_timings* %7, i32 0)
  %112 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %113 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %112, i32 0, i32 7
  %114 = call i32 @sg_init_table(i32* %113, i32 1)
  %115 = load i32, i32* @DMA_NONE, align 4
  %116 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %117 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @EPROBE_DEFER, align 4
  %119 = sub nsw i32 0, %118
  %120 = call i8* @ERR_PTR(i32 %119)
  %121 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %122 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %124 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %123, i32 0, i32 5
  store i8* %120, i8** %124, align 8
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = call i32 @pm_runtime_enable(%struct.device* %125)
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = call i32 @pm_runtime_get_sync(%struct.device* %127)
  %129 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %130 = call i32 @rcar_i2c_clock_calculate(%struct.rcar_i2c_priv* %129, %struct.i2c_timings* %7)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %63
  br label %216

134:                                              ; preds = %63
  %135 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %136 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @I2C_RCAR_GEN3, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %134
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i8* @devm_reset_control_get_exclusive(%struct.device* %143, i32* null)
  %145 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %146 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %148 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @IS_ERR(i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %141
  %153 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %154 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @reset_control_status(i8* %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load i32, i32* @ENOTSUPP, align 4
  %161 = sub nsw i32 0, %160
  %162 = call i8* @ERR_PTR(i32 %161)
  %163 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %164 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %159, %152
  br label %166

166:                                              ; preds = %165, %141
  br label %167

167:                                              ; preds = %166, %134
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = getelementptr inbounds %struct.device, %struct.device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @of_property_read_bool(i32 %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load i32, i32* @ID_P_PM_BLOCKED, align 4
  %175 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %176 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %182

179:                                              ; preds = %167
  %180 = load %struct.device*, %struct.device** %6, align 8
  %181 = call i32 @pm_runtime_put(%struct.device* %180)
  br label %182

182:                                              ; preds = %179, %173
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = call i32 @platform_get_irq(%struct.platform_device* %183, i32 0)
  %185 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %186 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.device*, %struct.device** %6, align 8
  %188 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %189 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @rcar_i2c_irq, align 4
  %192 = load %struct.device*, %struct.device** %6, align 8
  %193 = call i32 @dev_name(%struct.device* %192)
  %194 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %195 = call i32 @devm_request_irq(%struct.device* %187, i32 %190, i32 %191, i32 0, i32 %193, %struct.rcar_i2c_priv* %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %182
  %199 = load %struct.device*, %struct.device** %6, align 8
  %200 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %201 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %199, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  br label %219

204:                                              ; preds = %182
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %207 = call i32 @platform_set_drvdata(%struct.platform_device* %205, %struct.rcar_i2c_priv* %206)
  %208 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %209 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %219

213:                                              ; preds = %204
  %214 = load %struct.device*, %struct.device** %6, align 8
  %215 = call i32 @dev_info(%struct.device* %214, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %223

216:                                              ; preds = %133
  %217 = load %struct.device*, %struct.device** %6, align 8
  %218 = call i32 @pm_runtime_put(%struct.device* %217)
  br label %219

219:                                              ; preds = %216, %212, %198
  %220 = load %struct.device*, %struct.device** %6, align 8
  %221 = call i32 @pm_runtime_disable(%struct.device* %220)
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %219, %213, %58, %33, %20
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @BUILD_BUG_ON_MSG(i32, i8*) #1

declare dso_local %struct.rcar_i2c_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.rcar_i2c_priv*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @i2c_parse_fw_timings(%struct.device*, %struct.i2c_timings*, i32) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @rcar_i2c_clock_calculate(%struct.rcar_i2c_priv*, %struct.i2c_timings*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_status(i8*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.rcar_i2c_priv*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_i2c_priv*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
