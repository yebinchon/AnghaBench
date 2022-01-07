; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.serio_driver = type { i32 }
%struct.wacom = type { i32, i32, i32, i32, i32, %struct.input_dev*, i32, i32, i32, i64, i64 }
%struct.input_dev = type { i32*, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_WACOM_IV = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@F_COVERS_SCREEN = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@F_HAS_STYLUS2 = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@F_HAS_SCROLLWHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @wacom_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.wacom*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wacom* @kzalloc(i32 64, i32 %11)
  store %struct.wacom* %12, %struct.wacom** %6, align 8
  %13 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %13, %struct.input_dev** %7, align 8
  %14 = load %struct.wacom*, %struct.wacom** %6, align 8
  %15 = icmp ne %struct.wacom* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = icmp ne %struct.input_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %236

20:                                               ; preds = %16
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = load %struct.wacom*, %struct.wacom** %6, align 8
  %23 = getelementptr inbounds %struct.wacom, %struct.wacom* %22, i32 0, i32 5
  store %struct.input_dev* %21, %struct.input_dev** %23, align 8
  %24 = load %struct.wacom*, %struct.wacom** %6, align 8
  %25 = getelementptr inbounds %struct.wacom, %struct.wacom* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.wacom*, %struct.wacom** %6, align 8
  %27 = getelementptr inbounds %struct.wacom, %struct.wacom* %26, i32 0, i32 1
  store i32 4, i32* %27, align 4
  %28 = load %struct.wacom*, %struct.wacom** %6, align 8
  %29 = getelementptr inbounds %struct.wacom, %struct.wacom* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.wacom*, %struct.wacom** %6, align 8
  %31 = getelementptr inbounds %struct.wacom, %struct.wacom* %30, i32 0, i32 10
  store i64 0, i64* %31, align 8
  %32 = load %struct.wacom*, %struct.wacom** %6, align 8
  %33 = getelementptr inbounds %struct.wacom, %struct.wacom* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.serio*, %struct.serio** %4, align 8
  %36 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.wacom*, %struct.wacom** %6, align 8
  %40 = getelementptr inbounds %struct.wacom, %struct.wacom* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @BUS_RS232, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @SERIO_WACOM_IV, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.serio*, %struct.serio** %4, align 8
  %53 = getelementptr inbounds %struct.serio, %struct.serio* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.serio*, %struct.serio** %4, align 8
  %60 = getelementptr inbounds %struct.serio, %struct.serio* %59, i32 0, i32 1
  %61 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32* %60, i32** %63, align 8
  %64 = load i32, i32* @EV_KEY, align 4
  %65 = call i32 @BIT_MASK(i32 %64)
  %66 = load i32, i32* @EV_ABS, align 4
  %67 = call i32 @BIT_MASK(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* @EV_REL, align 4
  %70 = call i32 @BIT_MASK(i32 %69)
  %71 = or i32 %68, %70
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @ABS_MISC, align 4
  %77 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @set_bit(i32 %76, i32 %79)
  %81 = load i32, i32* @BTN_TOOL_PEN, align 4
  %82 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @set_bit(i32 %81, i32 %84)
  %86 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %87 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @set_bit(i32 %86, i32 %89)
  %91 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  %92 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @set_bit(i32 %91, i32 %94)
  %96 = load i32, i32* @BTN_TOUCH, align 4
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @set_bit(i32 %96, i32 %99)
  %101 = load i32, i32* @BTN_STYLUS, align 4
  %102 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %103 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @set_bit(i32 %101, i32 %104)
  %106 = load i32, i32* @BTN_LEFT, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @set_bit(i32 %106, i32 %109)
  %111 = load i32, i32* @BTN_RIGHT, align 4
  %112 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @set_bit(i32 %111, i32 %114)
  %116 = load i32, i32* @BTN_MIDDLE, align 4
  %117 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @set_bit(i32 %116, i32 %119)
  %121 = load %struct.serio*, %struct.serio** %4, align 8
  %122 = load %struct.wacom*, %struct.wacom** %6, align 8
  %123 = call i32 @serio_set_drvdata(%struct.serio* %121, %struct.wacom* %122)
  %124 = load %struct.serio*, %struct.serio** %4, align 8
  %125 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %126 = call i32 @serio_open(%struct.serio* %124, %struct.serio_driver* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %20
  br label %236

130:                                              ; preds = %20
  %131 = load %struct.wacom*, %struct.wacom** %6, align 8
  %132 = load %struct.serio*, %struct.serio** %4, align 8
  %133 = call i32 @wacom_setup(%struct.wacom* %131, %struct.serio* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %233

137:                                              ; preds = %130
  %138 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %139 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %140 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @set_bit(i32 %138, i32 %141)
  %143 = load %struct.wacom*, %struct.wacom** %6, align 8
  %144 = getelementptr inbounds %struct.wacom, %struct.wacom* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @F_COVERS_SCREEN, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %137
  %150 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %151 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %152 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @__set_bit(i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %149, %137
  %156 = load %struct.wacom*, %struct.wacom** %6, align 8
  %157 = getelementptr inbounds %struct.wacom, %struct.wacom* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @F_HAS_STYLUS2, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* @BTN_STYLUS2, align 4
  %164 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %165 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @__set_bit(i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %162, %155
  %169 = load %struct.wacom*, %struct.wacom** %6, align 8
  %170 = getelementptr inbounds %struct.wacom, %struct.wacom* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @F_HAS_SCROLLWHEEL, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* @REL_WHEEL, align 4
  %177 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %178 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @__set_bit(i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.wacom*, %struct.wacom** %6, align 8
  %183 = getelementptr inbounds %struct.wacom, %struct.wacom* %182, i32 0, i32 5
  %184 = load %struct.input_dev*, %struct.input_dev** %183, align 8
  %185 = load i32, i32* @ABS_X, align 4
  %186 = load %struct.wacom*, %struct.wacom** %6, align 8
  %187 = getelementptr inbounds %struct.wacom, %struct.wacom* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @input_abs_set_res(%struct.input_dev* %184, i32 %185, i32 %188)
  %190 = load %struct.wacom*, %struct.wacom** %6, align 8
  %191 = getelementptr inbounds %struct.wacom, %struct.wacom* %190, i32 0, i32 5
  %192 = load %struct.input_dev*, %struct.input_dev** %191, align 8
  %193 = load i32, i32* @ABS_Y, align 4
  %194 = load %struct.wacom*, %struct.wacom** %6, align 8
  %195 = getelementptr inbounds %struct.wacom, %struct.wacom* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @input_abs_set_res(%struct.input_dev* %192, i32 %193, i32 %196)
  %198 = load %struct.wacom*, %struct.wacom** %6, align 8
  %199 = getelementptr inbounds %struct.wacom, %struct.wacom* %198, i32 0, i32 5
  %200 = load %struct.input_dev*, %struct.input_dev** %199, align 8
  %201 = load i32, i32* @ABS_X, align 4
  %202 = load %struct.wacom*, %struct.wacom** %6, align 8
  %203 = getelementptr inbounds %struct.wacom, %struct.wacom* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @input_set_abs_params(%struct.input_dev* %200, i32 %201, i32 0, i32 %204, i32 0, i32 0)
  %206 = load %struct.wacom*, %struct.wacom** %6, align 8
  %207 = getelementptr inbounds %struct.wacom, %struct.wacom* %206, i32 0, i32 5
  %208 = load %struct.input_dev*, %struct.input_dev** %207, align 8
  %209 = load i32, i32* @ABS_Y, align 4
  %210 = load %struct.wacom*, %struct.wacom** %6, align 8
  %211 = getelementptr inbounds %struct.wacom, %struct.wacom* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @input_set_abs_params(%struct.input_dev* %208, i32 %209, i32 0, i32 %212, i32 0, i32 0)
  %214 = load %struct.wacom*, %struct.wacom** %6, align 8
  %215 = getelementptr inbounds %struct.wacom, %struct.wacom* %214, i32 0, i32 5
  %216 = load %struct.input_dev*, %struct.input_dev** %215, align 8
  %217 = load i32, i32* @ABS_PRESSURE, align 4
  %218 = load %struct.wacom*, %struct.wacom** %6, align 8
  %219 = getelementptr inbounds %struct.wacom, %struct.wacom* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 7, %220
  %222 = shl i32 1, %221
  %223 = sub nsw i32 %222, 1
  %224 = call i32 @input_set_abs_params(%struct.input_dev* %216, i32 %217, i32 -1, i32 %223, i32 0, i32 0)
  %225 = load %struct.wacom*, %struct.wacom** %6, align 8
  %226 = getelementptr inbounds %struct.wacom, %struct.wacom* %225, i32 0, i32 5
  %227 = load %struct.input_dev*, %struct.input_dev** %226, align 8
  %228 = call i32 @input_register_device(%struct.input_dev* %227)
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %181
  br label %233

232:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %244

233:                                              ; preds = %231, %136
  %234 = load %struct.serio*, %struct.serio** %4, align 8
  %235 = call i32 @serio_close(%struct.serio* %234)
  br label %236

236:                                              ; preds = %233, %129, %19
  %237 = load %struct.serio*, %struct.serio** %4, align 8
  %238 = call i32 @serio_set_drvdata(%struct.serio* %237, %struct.wacom* null)
  %239 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %240 = call i32 @input_free_device(%struct.input_dev* %239)
  %241 = load %struct.wacom*, %struct.wacom** %6, align 8
  %242 = call i32 @kfree(%struct.wacom* %241)
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %236, %232
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local %struct.wacom* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.wacom*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @wacom_setup(%struct.wacom*, %struct.serio*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
