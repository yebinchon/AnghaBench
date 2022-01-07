; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, %struct.alps_data*, i64, i32, i32, i32, i32, %struct.TYPE_8__, %struct.input_dev* }
%struct.alps_data = type { {}*, i32, i64, i32, %struct.psmouse*, %struct.input_dev*, i32, i32 (%struct.alps_data*, %struct.input_dev*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.input_dev = type { i32*, i32*, i32*, i8*, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }

@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ALPS_WHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@ALPS_FW_BK_1 = common dso_local global i32 0, align 4
@ALPS_FW_BK_2 = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@ALPS_FOUR_BUTTONS = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@ALPS_BUTTONPAD = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to allocate trackstick device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/input1\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"AlpsPS/2 ALPS DualPoint Stick\00", align 1
@BUS_I8042 = common dso_local global i32 0, align 4
@PSMOUSE_ALPS = common dso_local global i32 0, align 4
@ALPS_DUALPOINT_WITH_PRESSURE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@INPUT_PROP_POINTING_STICK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to register trackstick device: %d\0A\00", align 1
@alps_register_bare_ps2_mouse = common dso_local global i32 0, align 4
@alps_process_byte = common dso_local global i32 0, align 4
@alps_poll = common dso_local global i32 0, align 4
@alps_disconnect = common dso_local global i32 0, align 4
@alps_reconnect = common dso_local global i32 0, align 4
@ALPS_PROTO_V4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alps_init(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2
  %10 = load %struct.alps_data*, %struct.alps_data** %9, align 8
  store %struct.alps_data* %10, %struct.alps_data** %4, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 9
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %5, align 8
  %14 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %15 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.psmouse*)**
  %17 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %16, align 8
  %18 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %19 = call i32 %17(%struct.psmouse* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %388

23:                                               ; preds = %1
  %24 = load i32, i32* @EV_REL, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @__clear_bit(i32 %24, i32* %27)
  %29 = load i32, i32* @REL_X, align 4
  %30 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @__clear_bit(i32 %29, i32* %32)
  %34 = load i32, i32* @REL_Y, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @__clear_bit(i32 %34, i32* %37)
  %39 = load i32, i32* @EV_KEY, align 4
  %40 = call i32 @BIT_MASK(i32 %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @EV_KEY, align 4
  %45 = call i64 @BIT_WORD(i32 %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %40
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @BTN_TOUCH, align 4
  %50 = call i32 @BIT_MASK(i32 %49)
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @BTN_TOUCH, align 4
  %55 = call i64 @BIT_WORD(i32 %54)
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %50
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %60 = call i32 @BIT_MASK(i32 %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %65 = call i64 @BIT_WORD(i32 %64)
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %60
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @BTN_LEFT, align 4
  %70 = call i32 @BIT_MASK(i32 %69)
  %71 = load i32, i32* @BTN_RIGHT, align 4
  %72 = call i32 @BIT_MASK(i32 %71)
  %73 = or i32 %70, %72
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @BTN_LEFT, align 4
  %78 = call i64 @BIT_WORD(i32 %77)
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %73
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @EV_ABS, align 4
  %83 = call i32 @BIT_MASK(i32 %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @EV_ABS, align 4
  %88 = call i64 @BIT_WORD(i32 %87)
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %83
  store i32 %91, i32* %89, align 4
  %92 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %93 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %92, i32 0, i32 7
  %94 = load i32 (%struct.alps_data*, %struct.input_dev*)*, i32 (%struct.alps_data*, %struct.input_dev*)** %93, align 8
  %95 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %96 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %97 = call i32 %94(%struct.alps_data* %95, %struct.input_dev* %96)
  %98 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %99 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ALPS_WHEEL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %23
  %105 = load i32, i32* @EV_REL, align 4
  %106 = call i32 @BIT_MASK(i32 %105)
  %107 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @EV_REL, align 4
  %111 = call i64 @BIT_WORD(i32 %110)
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %106
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* @REL_WHEEL, align 4
  %116 = call i32 @BIT_MASK(i32 %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @REL_WHEEL, align 4
  %121 = call i64 @BIT_WORD(i32 %120)
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %116
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %104, %23
  %126 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %127 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ALPS_FW_BK_1, align 4
  %130 = load i32, i32* @ALPS_FW_BK_2, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %125
  %135 = load i32, i32* @BTN_FORWARD, align 4
  %136 = call i32 @BIT_MASK(i32 %135)
  %137 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %138 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @BTN_FORWARD, align 4
  %141 = call i64 @BIT_WORD(i32 %140)
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %136
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* @BTN_BACK, align 4
  %146 = call i32 @BIT_MASK(i32 %145)
  %147 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %148 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* @BTN_BACK, align 4
  %151 = call i64 @BIT_WORD(i32 %150)
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %146
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %134, %125
  %156 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %157 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ALPS_FOUR_BUTTONS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %203

162:                                              ; preds = %155
  %163 = load i32, i32* @BTN_0, align 4
  %164 = call i32 @BIT_MASK(i32 %163)
  %165 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @BTN_0, align 4
  %169 = call i64 @BIT_WORD(i32 %168)
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %164
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* @BTN_1, align 4
  %174 = call i32 @BIT_MASK(i32 %173)
  %175 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %176 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @BTN_1, align 4
  %179 = call i64 @BIT_WORD(i32 %178)
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %174
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @BTN_2, align 4
  %184 = call i32 @BIT_MASK(i32 %183)
  %185 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %186 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @BTN_2, align 4
  %189 = call i64 @BIT_WORD(i32 %188)
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %184
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* @BTN_3, align 4
  %194 = call i32 @BIT_MASK(i32 %193)
  %195 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %196 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* @BTN_3, align 4
  %199 = call i64 @BIT_WORD(i32 %198)
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %194
  store i32 %202, i32* %200, align 4
  br label %233

203:                                              ; preds = %155
  %204 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %205 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @ALPS_BUTTONPAD, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %203
  %211 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %212 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %213 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @set_bit(i32 %211, i32 %214)
  %216 = load i32, i32* @BTN_RIGHT, align 4
  %217 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %218 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @clear_bit(i32 %216, i32* %219)
  br label %232

221:                                              ; preds = %203
  %222 = load i32, i32* @BTN_MIDDLE, align 4
  %223 = call i32 @BIT_MASK(i32 %222)
  %224 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %225 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* @BTN_MIDDLE, align 4
  %228 = call i64 @BIT_WORD(i32 %227)
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %223
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %221, %210
  br label %233

233:                                              ; preds = %232, %162
  %234 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %235 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @ALPS_DUALPOINT, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %351

240:                                              ; preds = %233
  %241 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %241, %struct.input_dev** %7, align 8
  %242 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %243 = icmp ne %struct.input_dev* %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %240
  %245 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %246 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_err(%struct.psmouse* %245, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %6, align 4
  br label %388

249:                                              ; preds = %240
  %250 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %251 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %254 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %253, i32 0, i32 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @snprintf(i32 %252, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %258)
  %260 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %261 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %264 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 8
  %265 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %266 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %265, i32 0, i32 3
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %266, align 8
  %267 = load i32, i32* @BUS_I8042, align 4
  %268 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %269 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %268, i32 0, i32 6
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 3
  store i32 %267, i32* %270, align 4
  %271 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %272 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %271, i32 0, i32 6
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  store i32 2, i32* %273, align 8
  %274 = load i32, i32* @PSMOUSE_ALPS, align 4
  %275 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %276 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %275, i32 0, i32 6
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 2
  store i32 %274, i32* %277, align 8
  %278 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %279 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %282 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %281, i32 0, i32 6
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  store i64 %280, i64* %283, align 8
  %284 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %285 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %284, i32 0, i32 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %290 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  store i32* %288, i32** %291, align 8
  %292 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %293 = load i32, i32* @EV_REL, align 4
  %294 = load i32, i32* @REL_X, align 4
  %295 = call i32 @input_set_capability(%struct.input_dev* %292, i32 %293, i32 %294)
  %296 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %297 = load i32, i32* @EV_REL, align 4
  %298 = load i32, i32* @REL_Y, align 4
  %299 = call i32 @input_set_capability(%struct.input_dev* %296, i32 %297, i32 %298)
  %300 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %301 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @ALPS_DUALPOINT_WITH_PRESSURE, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %249
  %307 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %308 = load i32, i32* @EV_ABS, align 4
  %309 = load i32, i32* @ABS_PRESSURE, align 4
  %310 = call i32 @input_set_capability(%struct.input_dev* %307, i32 %308, i32 %309)
  %311 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %312 = load i32, i32* @ABS_PRESSURE, align 4
  %313 = call i32 @input_set_abs_params(%struct.input_dev* %311, i32 %312, i32 0, i32 127, i32 0, i32 0)
  br label %314

314:                                              ; preds = %306, %249
  %315 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %316 = load i32, i32* @EV_KEY, align 4
  %317 = load i32, i32* @BTN_LEFT, align 4
  %318 = call i32 @input_set_capability(%struct.input_dev* %315, i32 %316, i32 %317)
  %319 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %320 = load i32, i32* @EV_KEY, align 4
  %321 = load i32, i32* @BTN_RIGHT, align 4
  %322 = call i32 @input_set_capability(%struct.input_dev* %319, i32 %320, i32 %321)
  %323 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %324 = load i32, i32* @EV_KEY, align 4
  %325 = load i32, i32* @BTN_MIDDLE, align 4
  %326 = call i32 @input_set_capability(%struct.input_dev* %323, i32 %324, i32 %325)
  %327 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %328 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %329 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @__set_bit(i32 %327, i32 %330)
  %332 = load i32, i32* @INPUT_PROP_POINTING_STICK, align 4
  %333 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %334 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @__set_bit(i32 %332, i32 %335)
  %337 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %338 = call i32 @input_register_device(%struct.input_dev* %337)
  store i32 %338, i32* %6, align 4
  %339 = load i32, i32* %6, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %314
  %342 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %343 = load i32, i32* %6, align 4
  %344 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_err(%struct.psmouse* %342, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %343)
  %345 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %346 = call i32 @input_free_device(%struct.input_dev* %345)
  br label %388

347:                                              ; preds = %314
  %348 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %349 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %350 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %349, i32 0, i32 5
  store %struct.input_dev* %348, %struct.input_dev** %350, align 8
  br label %351

351:                                              ; preds = %347, %233
  %352 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %353 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %354 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %353, i32 0, i32 4
  store %struct.psmouse* %352, %struct.psmouse** %354, align 8
  %355 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %356 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %355, i32 0, i32 3
  %357 = load i32, i32* @alps_register_bare_ps2_mouse, align 4
  %358 = call i32 @INIT_DELAYED_WORK(i32* %356, i32 %357)
  %359 = load i32, i32* @alps_process_byte, align 4
  %360 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %361 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %360, i32 0, i32 7
  store i32 %359, i32* %361, align 4
  %362 = load i32, i32* @alps_poll, align 4
  %363 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %364 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %363, i32 0, i32 6
  store i32 %362, i32* %364, align 8
  %365 = load i32, i32* @alps_disconnect, align 4
  %366 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %367 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %366, i32 0, i32 5
  store i32 %365, i32* %367, align 4
  %368 = load i32, i32* @alps_reconnect, align 4
  %369 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %370 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %369, i32 0, i32 4
  store i32 %368, i32* %370, align 8
  %371 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %372 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @ALPS_PROTO_V4, align 8
  %375 = icmp eq i64 %373, %374
  %376 = zext i1 %375 to i64
  %377 = select i1 %375, i32 8, i32 6
  %378 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %379 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  %380 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %381 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %380, i32 0, i32 3
  store i64 0, i64* %381, align 8
  %382 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %383 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = mul nsw i32 %384, 2
  %386 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %387 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  store i32 0, i32* %2, align 4
  br label %398

388:                                              ; preds = %341, %244, %22
  %389 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %390 = call i32 @psmouse_reset(%struct.psmouse* %389)
  %391 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %392 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %391, i32 0, i32 2
  %393 = load %struct.alps_data*, %struct.alps_data** %392, align 8
  %394 = call i32 @kfree(%struct.alps_data* %393)
  %395 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %396 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %395, i32 0, i32 2
  store %struct.alps_data* null, %struct.alps_data** %396, align 8
  %397 = load i32, i32* %6, align 4
  store i32 %397, i32* %2, align 4
  br label %398

398:                                              ; preds = %388, %351
  %399 = load i32, i32* %2, align 4
  ret i32 %399
}

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i32 @kfree(%struct.alps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
