; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_spear-keyboard.c_spear_kbd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_spear-keyboard.c_spear_kbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.kbd_platform_data = type { i32, i64, i32, %struct.matrix_keymap_data* }
%struct.matrix_keymap_data = type { i32 }
%struct.spear_kbd = type { i32, i32, i64, i32, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i8*, i8*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"not enough memory for driver data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to allocate input device\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Spear Keyboard\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"keyboard/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@spear_kbd_open = common dso_local global i32 0, align 4
@spear_kbd_close = common dso_local global i32 0, align 4
@NUM_ROWS = common dso_local global i32 0, align 4
@NUM_COLS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to build keymap\0A\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@spear_kbd_interrupt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Unable to register keyboard device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_kbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_kbd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kbd_platform_data*, align 8
  %5 = alloca %struct.matrix_keymap_data*, align 8
  %6 = alloca %struct.spear_kbd*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.kbd_platform_data* @dev_get_platdata(i32* %12)
  store %struct.kbd_platform_data* %13, %struct.kbd_platform_data** %4, align 8
  %14 = load %struct.kbd_platform_data*, %struct.kbd_platform_data** %4, align 8
  %15 = icmp ne %struct.kbd_platform_data* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.kbd_platform_data*, %struct.kbd_platform_data** %4, align 8
  %18 = getelementptr inbounds %struct.kbd_platform_data, %struct.kbd_platform_data* %17, i32 0, i32 3
  %19 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %18, align 8
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi %struct.matrix_keymap_data* [ %19, %16 ], [ null, %20 ]
  store %struct.matrix_keymap_data* %22, %struct.matrix_keymap_data** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @platform_get_irq(%struct.platform_device* %23, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %225

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.spear_kbd* @devm_kzalloc(i32* %31, i32 40, i32 %32)
  store %struct.spear_kbd* %33, %struct.spear_kbd** %6, align 8
  %34 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %35 = icmp ne %struct.spear_kbd* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %225

42:                                               ; preds = %29
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call %struct.input_dev* @devm_input_allocate_device(i32* %44)
  store %struct.input_dev* %45, %struct.input_dev** %7, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = icmp ne %struct.input_dev* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %225

54:                                               ; preds = %42
  %55 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %56 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %57 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %56, i32 0, i32 7
  store %struct.input_dev* %55, %struct.input_dev** %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %60 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.kbd_platform_data*, %struct.kbd_platform_data** %4, align 8
  %62 = icmp ne %struct.kbd_platform_data* %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %66 = call i32 @spear_kbd_parse_dt(%struct.platform_device* %64, %struct.spear_kbd* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %2, align 4
  br label %225

71:                                               ; preds = %63
  br label %88

72:                                               ; preds = %54
  %73 = load %struct.kbd_platform_data*, %struct.kbd_platform_data** %4, align 8
  %74 = getelementptr inbounds %struct.kbd_platform_data, %struct.kbd_platform_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %77 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.kbd_platform_data*, %struct.kbd_platform_data** %4, align 8
  %79 = getelementptr inbounds %struct.kbd_platform_data, %struct.kbd_platform_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %82 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.kbd_platform_data*, %struct.kbd_platform_data** %4, align 8
  %84 = getelementptr inbounds %struct.kbd_platform_data, %struct.kbd_platform_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %87 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %72, %71
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load i32, i32* @IORESOURCE_MEM, align 4
  %91 = call %struct.resource* @platform_get_resource(%struct.platform_device* %89, i32 %90, i32 0)
  store %struct.resource* %91, %struct.resource** %8, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.resource*, %struct.resource** %8, align 8
  %95 = call i32 @devm_ioremap_resource(i32* %93, %struct.resource* %94)
  %96 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %97 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %99 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @IS_ERR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %88
  %104 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %105 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PTR_ERR(i32 %106)
  store i32 %107, i32* %2, align 4
  br label %225

108:                                              ; preds = %88
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @devm_clk_get(i32* %110, i32* null)
  %112 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %113 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %115 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @IS_ERR(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %108
  %120 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %121 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @PTR_ERR(i32 %122)
  store i32 %123, i32* %2, align 4
  br label %225

124:                                              ; preds = %108
  %125 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %126 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %126, align 8
  %127 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %128, align 8
  %129 = load i32, i32* @BUS_HOST, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 4
  %133 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 4
  %136 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %140 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  store i32 256, i32* %141, align 4
  %142 = load i32, i32* @spear_kbd_open, align 4
  %143 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %144 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @spear_kbd_close, align 4
  %146 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %147 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %5, align 8
  %149 = load i32, i32* @NUM_ROWS, align 4
  %150 = load i32, i32* @NUM_COLS, align 4
  %151 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %152 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %155 = call i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data* %148, i32* null, i32 %149, i32 %150, i32 %153, %struct.input_dev* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %124
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = call i32 @dev_err(i32* %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %2, align 4
  br label %225

163:                                              ; preds = %124
  %164 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %165 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* @EV_REP, align 4
  %170 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %171 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @__set_bit(i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %168, %163
  %175 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %176 = load i32, i32* @EV_MSC, align 4
  %177 = load i32, i32* @MSC_SCAN, align 4
  %178 = call i32 @input_set_capability(%struct.input_dev* %175, i32 %176, i32 %177)
  %179 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %180 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %181 = call i32 @input_set_drvdata(%struct.input_dev* %179, %struct.spear_kbd* %180)
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @spear_kbd_interrupt, align 4
  %186 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %187 = call i32 @devm_request_irq(i32* %183, i32 %184, i32 %185, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.spear_kbd* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %174
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call i32 @dev_err(i32* %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %2, align 4
  br label %225

195:                                              ; preds = %174
  %196 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %197 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @clk_prepare(i32 %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %2, align 4
  br label %225

204:                                              ; preds = %195
  %205 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %206 = call i32 @input_register_device(%struct.input_dev* %205)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %204
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = call i32 @dev_err(i32* %211, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %213 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %214 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @clk_unprepare(i32 %215)
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %2, align 4
  br label %225

218:                                              ; preds = %204
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = call i32 @device_init_wakeup(i32* %220, i32 1)
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %224 = call i32 @platform_set_drvdata(%struct.platform_device* %222, %struct.spear_kbd* %223)
  store i32 0, i32* %2, align 4
  br label %225

225:                                              ; preds = %218, %209, %202, %190, %158, %119, %103, %69, %48, %36, %27
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.kbd_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.spear_kbd* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @spear_kbd_parse_dt(%struct.platform_device*, %struct.spear_kbd*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data*, i32*, i32, i32, i32, %struct.input_dev*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.spear_kbd*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.spear_kbd*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spear_kbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
