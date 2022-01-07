; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.matrix_keymap_data = type { i32 }
%struct.imx_keypad = type { i32, i64*, i32, i32, i32, i32, i32, i64, %struct.input_dev* }
%struct.input_dev = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"no keymap defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate the input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"not enough memory for driver data\0A\00", align 1
@imx_keypad_check_for_events = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get keypad clock\0A\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@imx_keypad_open = common dso_local global i32 0, align 4
@imx_keypad_close = common dso_local global i32 0, align 4
@MAX_MATRIX_KEY_ROWS = common dso_local global i32 0, align 4
@MAX_MATRIX_KEY_COLS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@MATRIX_ROW_SHIFT = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"enabled rows mask: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"enabled cols mask: %x\0A\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@imx_keypad_irq_handler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_keypad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.matrix_keymap_data*, align 8
  %5 = alloca %struct.imx_keypad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.matrix_keymap_data* @dev_get_platdata(%struct.TYPE_13__* %13)
  store %struct.matrix_keymap_data* %14, %struct.matrix_keymap_data** %4, align 8
  %15 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %4, align 8
  %16 = icmp ne %struct.matrix_keymap_data* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_13__* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %261

29:                                               ; preds = %17, %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32 @platform_get_irq(%struct.platform_device* %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %261

36:                                               ; preds = %29
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_13__* %38)
  store %struct.input_dev* %39, %struct.input_dev** %6, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %41 = icmp ne %struct.input_dev* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_13__* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %261

48:                                               ; preds = %36
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.imx_keypad* @devm_kzalloc(%struct.TYPE_13__* %50, i32 56, i32 %51)
  store %struct.imx_keypad* %52, %struct.imx_keypad** %5, align 8
  %53 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %54 = icmp ne %struct.imx_keypad* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_13__* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %261

61:                                               ; preds = %48
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %64 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %63, i32 0, i32 8
  store %struct.input_dev* %62, %struct.input_dev** %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %67 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %69 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %68, i32 0, i32 7
  store i64 0, i64* %69, align 8
  %70 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %71 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %70, i32 0, i32 6
  %72 = load i32, i32* @imx_keypad_check_for_events, align 4
  %73 = call i32 @timer_setup(i32* %71, i32 %72, i32 0)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %74, i32 0)
  %76 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %77 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %79 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %61
  %84 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %85 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %261

88:                                               ; preds = %61
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @devm_clk_get(%struct.TYPE_13__* %90, i32* null)
  %92 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %93 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %95 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %88
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @dev_err(%struct.TYPE_13__* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %104 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @PTR_ERR(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %261

107:                                              ; preds = %88
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @BUS_HOST, align 4
  %114 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %121, align 8
  %122 = load i32, i32* @imx_keypad_open, align 4
  %123 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %124 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @imx_keypad_close, align 4
  %126 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %127 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %4, align 8
  %129 = load i32, i32* @MAX_MATRIX_KEY_ROWS, align 4
  %130 = load i32, i32* @MAX_MATRIX_KEY_COLS, align 4
  %131 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %132 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %135 = call i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data* %128, i32* null, i32 %129, i32 %130, i64* %133, %struct.input_dev* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %107
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @dev_err(%struct.TYPE_13__* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %261

143:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %185, %143
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @MAX_MATRIX_KEY_ROWS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %188

148:                                              ; preds = %144
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %181, %148
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @MAX_MATRIX_KEY_COLS, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %149
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @MATRIX_ROW_SHIFT, align 4
  %157 = call i32 @MATRIX_SCAN_CODE(i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %9, align 4
  %158 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %159 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @KEY_RESERVED, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %153
  %168 = load i32, i32* %10, align 4
  %169 = shl i32 1, %168
  %170 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %171 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* %11, align 4
  %175 = shl i32 1, %174
  %176 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %177 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %167, %153
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %149

184:                                              ; preds = %149
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %144

188:                                              ; preds = %144
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %192 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @dev_dbg(%struct.TYPE_13__* %190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %198 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @dev_dbg(%struct.TYPE_13__* %196, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* @EV_REP, align 4
  %202 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %203 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @__set_bit(i32 %201, i32 %204)
  %206 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %207 = load i32, i32* @EV_MSC, align 4
  %208 = load i32, i32* @MSC_SCAN, align 4
  %209 = call i32 @input_set_capability(%struct.input_dev* %206, i32 %207, i32 %208)
  %210 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %211 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %212 = call i32 @input_set_drvdata(%struct.input_dev* %210, %struct.imx_keypad* %211)
  %213 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %214 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @clk_prepare_enable(i32 %215)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %188
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %2, align 4
  br label %261

221:                                              ; preds = %188
  %222 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %223 = call i32 @imx_keypad_inhibit(%struct.imx_keypad* %222)
  %224 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %225 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @clk_disable_unprepare(i32 %226)
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %228, i32 0, i32 0
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* @imx_keypad_irq_handler, align 4
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %236 = call i32 @devm_request_irq(%struct.TYPE_13__* %229, i32 %230, i32 %231, i32 0, i32 %234, %struct.imx_keypad* %235)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %221
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = call i32 @dev_err(%struct.TYPE_13__* %241, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %2, align 4
  br label %261

244:                                              ; preds = %221
  %245 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %246 = call i32 @input_register_device(%struct.input_dev* %245)
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = call i32 @dev_err(%struct.TYPE_13__* %251, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %2, align 4
  br label %261

254:                                              ; preds = %244
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %257 = call i32 @platform_set_drvdata(%struct.platform_device* %255, %struct.imx_keypad* %256)
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %258, i32 0, i32 0
  %260 = call i32 @device_init_wakeup(%struct.TYPE_13__* %259, i32 1)
  store i32 0, i32* %2, align 4
  br label %261

261:                                              ; preds = %254, %249, %239, %219, %138, %99, %83, %55, %42, %34, %23
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local %struct.matrix_keymap_data* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_13__*) #1

declare dso_local %struct.imx_keypad* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data*, i32*, i32, i32, i64*, %struct.input_dev*) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.imx_keypad*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @imx_keypad_inhibit(%struct.imx_keypad*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i32, %struct.imx_keypad*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_keypad*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
