; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_bcm-keypad.c_bcm_kp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_bcm-keypad.c_bcm_kp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.bcm_kp = type { i64, i32*, i32*, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i8*, %struct.TYPE_11__, i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate the input device\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"keypad/input0\00", align 1
@bcm_kp_open = common dso_local global i32 0, align 4
@bcm_kp_close = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Missing keypad base address resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"peri_clk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"No clock specified. Assuming it's enabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@DEFAULT_CLK_HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bcm_kp_isr_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_kp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm_kp*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bcm_kp* @devm_kzalloc(%struct.TYPE_12__* %11, i32 40, i32 %12)
  store %struct.bcm_kp* %13, %struct.bcm_kp** %4, align 8
  %14 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %15 = icmp ne %struct.bcm_kp* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %261

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_12__* %21)
  store %struct.input_dev* %22, %struct.input_dev** %5, align 8
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = icmp ne %struct.input_dev* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_12__* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %261

31:                                               ; preds = %19
  %32 = load i32, i32* @EV_KEY, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__set_bit(i32 %32, i32 %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @of_property_read_bool(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i32, i32* @EV_REP, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__set_bit(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %61, align 8
  %62 = load i32, i32* @bcm_kp_open, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @bcm_kp_close, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @BUS_HOST, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  store i32 256, i32* %80, align 8
  %81 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %82 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %83 = call i32 @input_set_drvdata(%struct.input_dev* %81, %struct.bcm_kp* %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %86 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %85, i32 0, i32 5
  store %struct.input_dev* %84, %struct.input_dev** %86, align 8
  %87 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %88 = call i32 @bcm_kp_matrix_key_parse_dt(%struct.bcm_kp* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %49
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %261

93:                                               ; preds = %49
  %94 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %95 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %98 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %96, i32 %99, i32* null, %struct.input_dev* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(%struct.TYPE_12__* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %261

109:                                              ; preds = %93
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load i32, i32* @IORESOURCE_MEM, align 4
  %112 = call %struct.resource* @platform_get_resource(%struct.platform_device* %110, i32 %111, i32 0)
  store %struct.resource* %112, %struct.resource** %6, align 8
  %113 = load %struct.resource*, %struct.resource** %6, align 8
  %114 = icmp ne %struct.resource* %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @dev_err(%struct.TYPE_12__* %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %261

121:                                              ; preds = %109
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.resource*, %struct.resource** %6, align 8
  %125 = call i32* @devm_ioremap_resource(%struct.TYPE_12__* %123, %struct.resource* %124)
  %126 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %127 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %129 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @IS_ERR(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %135 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @PTR_ERR(i32* %136)
  store i32 %137, i32* %2, align 4
  br label %261

138:                                              ; preds = %121
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32* @devm_clk_get(%struct.TYPE_12__* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %142 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %143 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %142, i32 0, i32 1
  store i32* %141, i32** %143, align 8
  %144 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %145 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @IS_ERR(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %138
  %150 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %151 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @PTR_ERR(i32* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @ENOENT, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %149
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @EPROBE_DEFER, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp ne i32 %159, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 @dev_err(%struct.TYPE_12__* %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %158
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %2, align 4
  br label %261

169:                                              ; preds = %149
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 @dev_dbg(%struct.TYPE_12__* %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %173 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %174 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %173, i32 0, i32 1
  store i32* null, i32** %174, align 8
  br label %216

175:                                              ; preds = %138
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @of_property_read_u32(i32 %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load i32, i32* @DEFAULT_CLK_HZ, align 4
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %183, %175
  %186 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %187 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i64 @clk_round_rate(i32* %188, i32 %189)
  store i64 %190, i64* %9, align 8
  %191 = load i64, i64* %9, align 8
  %192 = icmp sle i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %261

196:                                              ; preds = %185
  %197 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %198 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %9, align 8
  %201 = call i32 @clk_set_rate(i32* %199, i64 %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %196
  %205 = load i32, i32* %7, align 4
  store i32 %205, i32* %2, align 4
  br label %261

206:                                              ; preds = %196
  %207 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %208 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @clk_prepare_enable(i32* %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %2, align 4
  br label %261

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215, %169
  %217 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %218 = call i32 @bcm_kp_stop(%struct.bcm_kp* %217)
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = call i64 @platform_get_irq(%struct.platform_device* %219, i32 0)
  %221 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %222 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  %223 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %224 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp slt i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %216
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %261

230:                                              ; preds = %216
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %234 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* @bcm_kp_isr_thread, align 4
  %237 = load i32, i32* @IRQF_ONESHOT, align 4
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.bcm_kp*, %struct.bcm_kp** %4, align 8
  %242 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %232, i64 %235, i32* null, i32 %236, i32 %237, i32 %240, %struct.bcm_kp* %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %230
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %246, i32 0, i32 0
  %248 = call i32 @dev_err(%struct.TYPE_12__* %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %249 = load i32, i32* %7, align 4
  store i32 %249, i32* %2, align 4
  br label %261

250:                                              ; preds = %230
  %251 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %252 = call i32 @input_register_device(%struct.input_dev* %251)
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = call i32 @dev_err(%struct.TYPE_12__* %257, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %2, align 4
  br label %261

260:                                              ; preds = %250
  store i32 0, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %255, %245, %227, %213, %204, %193, %167, %133, %115, %104, %91, %25, %16
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local %struct.bcm_kp* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.bcm_kp*) #1

declare dso_local i32 @bcm_kp_matrix_key_parse_dt(%struct.bcm_kp*) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, i32*, %struct.input_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @clk_round_rate(i32*, i32) #1

declare dso_local i32 @clk_set_rate(i32*, i64) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @bcm_kp_stop(%struct.bcm_kp*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i64, i32*, i32, i32, i32, %struct.bcm_kp*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
