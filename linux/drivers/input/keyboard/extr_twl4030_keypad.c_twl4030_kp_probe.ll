; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_kp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_kp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.twl4030_keypad_data = type { i64, i64, i32, %struct.matrix_keymap_data* }
%struct.matrix_keymap_data = type { i32 }
%struct.twl4030_keypad = type { i64, i64, i32, i32, i32*, i32, %struct.input_dev* }
%struct.input_dev = type { i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TWL4030 Keypad\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"twl4030_keypad/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Missing platform_data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TWL4030_MAX_ROWS = common dso_local global i64 0, align 8
@TWL4030_MAX_COLS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"Invalid rows/cols amount specified in platform/devicetree data\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"no keyboard irq assigned\0A\00", align 1
@TWL4030_ROW_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to build keymap\0A\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Unable to register twl4030 keypad device\0A\00", align 1
@do_kp_irq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"request_irq failed for irq no=%d: %d\0A\00", align 1
@KEYP_IMR1_KP = common dso_local global i32 0, align 4
@KEYP_IMR1_TO = common dso_local global i32 0, align 4
@KEYP_IMR1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_kp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_kp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl4030_keypad_data*, align 8
  %5 = alloca %struct.matrix_keymap_data*, align 8
  %6 = alloca %struct.twl4030_keypad*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = call %struct.twl4030_keypad_data* @dev_get_platdata(i32* %11)
  store %struct.twl4030_keypad_data* %12, %struct.twl4030_keypad_data** %4, align 8
  store %struct.matrix_keymap_data* null, %struct.matrix_keymap_data** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.twl4030_keypad* @devm_kzalloc(i32* %14, i32 48, i32 %15)
  store %struct.twl4030_keypad* %16, %struct.twl4030_keypad** %6, align 8
  %17 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %18 = icmp ne %struct.twl4030_keypad* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %238

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 1
  %25 = call %struct.input_dev* @devm_input_allocate_device(i32* %24)
  store %struct.input_dev* %25, %struct.input_dev** %7, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %238

31:                                               ; preds = %22
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %35 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %37 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %38 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %37, i32 0, i32 6
  store %struct.input_dev* %36, %struct.input_dev** %38, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @BUS_HOST, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 3, i32* %55, align 4
  %56 = load %struct.twl4030_keypad_data*, %struct.twl4030_keypad_data** %4, align 8
  %57 = icmp ne %struct.twl4030_keypad_data* %56, null
  br i1 %57, label %58, label %98

58:                                               ; preds = %31
  %59 = load %struct.twl4030_keypad_data*, %struct.twl4030_keypad_data** %4, align 8
  %60 = getelementptr inbounds %struct.twl4030_keypad_data, %struct.twl4030_keypad_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.twl4030_keypad_data*, %struct.twl4030_keypad_data** %4, align 8
  %65 = getelementptr inbounds %struct.twl4030_keypad_data, %struct.twl4030_keypad_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.twl4030_keypad_data*, %struct.twl4030_keypad_data** %4, align 8
  %70 = getelementptr inbounds %struct.twl4030_keypad_data, %struct.twl4030_keypad_data* %69, i32 0, i32 3
  %71 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %70, align 8
  %72 = icmp ne %struct.matrix_keymap_data* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68, %63, %58
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 1
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %238

79:                                               ; preds = %68
  %80 = load %struct.twl4030_keypad_data*, %struct.twl4030_keypad_data** %4, align 8
  %81 = getelementptr inbounds %struct.twl4030_keypad_data, %struct.twl4030_keypad_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %84 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.twl4030_keypad_data*, %struct.twl4030_keypad_data** %4, align 8
  %86 = getelementptr inbounds %struct.twl4030_keypad_data, %struct.twl4030_keypad_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %89 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.twl4030_keypad_data*, %struct.twl4030_keypad_data** %4, align 8
  %91 = getelementptr inbounds %struct.twl4030_keypad_data, %struct.twl4030_keypad_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %94 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.twl4030_keypad_data*, %struct.twl4030_keypad_data** %4, align 8
  %96 = getelementptr inbounds %struct.twl4030_keypad_data, %struct.twl4030_keypad_data* %95, i32 0, i32 3
  %97 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %96, align 8
  store %struct.matrix_keymap_data* %97, %struct.matrix_keymap_data** %5, align 8
  br label %113

98:                                               ; preds = %31
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 1
  %101 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %102 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %101, i32 0, i32 0
  %103 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %104 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %103, i32 0, i32 1
  %105 = call i32 @matrix_keypad_parse_properties(i32* %100, i64* %102, i64* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %238

110:                                              ; preds = %98
  %111 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %112 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %111, i32 0, i32 2
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %79
  %114 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %115 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TWL4030_MAX_ROWS, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %121 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TWL4030_MAX_COLS, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119, %113
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 1
  %128 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %238

131:                                              ; preds = %119
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = call i32 @platform_get_irq(%struct.platform_device* %132, i32 0)
  %134 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %135 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %137 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %131
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 1
  %143 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %238

146:                                              ; preds = %131
  %147 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %5, align 8
  %148 = load i64, i64* @TWL4030_MAX_ROWS, align 8
  %149 = load i32, i32* @TWL4030_ROW_SHIFT, align 4
  %150 = shl i32 1, %149
  %151 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %152 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %155 = call i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data* %147, i32* null, i64 %148, i32 %150, i32 %153, %struct.input_dev* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %146
  %159 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %160 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %2, align 4
  br label %238

164:                                              ; preds = %146
  %165 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %166 = load i32, i32* @EV_MSC, align 4
  %167 = load i32, i32* @MSC_SCAN, align 4
  %168 = call i32 @input_set_capability(%struct.input_dev* %165, i32 %166, i32 %167)
  %169 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %170 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %164
  %174 = load i32, i32* @EV_REP, align 4
  %175 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %176 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @__set_bit(i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %173, %164
  %180 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %181 = call i32 @input_register_device(%struct.input_dev* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %186 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @dev_err(i32* %187, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %2, align 4
  br label %238

190:                                              ; preds = %179
  %191 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %192 = call i32 @twl4030_kp_program(%struct.twl4030_keypad* %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* %9, align 4
  store i32 %196, i32* %2, align 4
  br label %238

197:                                              ; preds = %190
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 1
  %200 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %201 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @do_kp_irq, align 4
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %208 = call i32 @devm_request_threaded_irq(i32* %199, i32 %202, i32* null, i32 %203, i32 0, i32 %206, %struct.twl4030_keypad* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %197
  %212 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %213 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %216 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @dev_info(i32* %214, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %217, i32 %218)
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %238

221:                                              ; preds = %197
  %222 = load i32, i32* @KEYP_IMR1_KP, align 4
  %223 = load i32, i32* @KEYP_IMR1_TO, align 4
  %224 = or i32 %222, %223
  %225 = xor i32 %224, -1
  store i32 %225, i32* %8, align 4
  %226 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @KEYP_IMR1, align 4
  %229 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %226, i32 %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %221
  %232 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %6, align 8
  %233 = load i32, i32* @KEYP_IMR1, align 4
  %234 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %232, i32 255, i32 %233)
  %235 = load i32, i32* @EIO, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %2, align 4
  br label %238

237:                                              ; preds = %221
  store i32 0, i32* %2, align 4
  br label %238

238:                                              ; preds = %237, %231, %211, %195, %184, %158, %140, %125, %108, %73, %28, %19
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local %struct.twl4030_keypad_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.twl4030_keypad* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @matrix_keypad_parse_properties(i32*, i64*, i64*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data*, i32*, i64, i32, i32, %struct.input_dev*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @twl4030_kp_program(%struct.twl4030_keypad*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.twl4030_keypad*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
