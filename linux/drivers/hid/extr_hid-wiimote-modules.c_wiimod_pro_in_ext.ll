; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_pro_in_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_pro_in_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }

@WIIPROTO_FLAG_PRO_CALIB_DONE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@wiimod_pro_map = common dso_local global i32* null, align 8
@WIIMOD_PRO_KEY_RIGHT = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_DOWN = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_TL = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_MINUS = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_HOME = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_PLUS = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_TR = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_ZL = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_B = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_Y = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_A = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_X = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_ZR = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_LEFT = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_UP = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_THUMBL = common dso_local global i64 0, align 8
@WIIMOD_PRO_KEY_THUMBR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @wiimod_pro_in_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_pro_in_ext(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 255
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  %17 = shl i32 %16, 8
  %18 = or i32 %12, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  %27 = shl i32 %26, 8
  %28 = or i32 %22, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  %37 = shl i32 %36, 8
  %38 = or i32 %32, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  %47 = shl i32 %46, 8
  %48 = or i32 %42, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 2048
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 2048, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 2048
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 2048, %55
  store i32 %56, i32* %6, align 4
  %57 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %58 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @WIIPROTO_FLAG_PRO_CALIB_DONE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %119, label %64

64:                                               ; preds = %2
  %65 = load i32, i32* @WIIPROTO_FLAG_PRO_CALIB_DONE, align 4
  %66 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %67 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @abs(i32 %71) #3
  %73 = icmp slt i32 %72, 500
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 0, %75
  %77 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %78 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %64
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @abs(i32 %83) #3
  %85 = icmp slt i32 %84, 500
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 0, %87
  %89 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %90 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %82
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @abs(i32 %95) #3
  %97 = icmp slt i32 %96, 500
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 0, %99
  %101 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %102 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %98, %94
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @abs(i32 %107) #3
  %109 = icmp slt i32 %108, 500
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 0, %111
  %113 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %114 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %106
  br label %119

119:                                              ; preds = %118, %2
  %120 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %121 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %129 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %137 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %145 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %153 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ABS_X, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @input_report_abs(i32 %155, i32 %156, i32 %157)
  %159 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %160 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ABS_Y, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @input_report_abs(i32 %162, i32 %163, i32 %164)
  %166 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %167 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ABS_RX, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @input_report_abs(i32 %169, i32 %170, i32 %171)
  %173 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %174 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @ABS_RY, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @input_report_abs(i32 %176, i32 %177, i32 %178)
  %180 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %181 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** @wiimod_pro_map, align 8
  %185 = load i64, i64* @WIIMOD_PRO_KEY_RIGHT, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %4, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 8
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 128
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i32 @input_report_key(i32 %183, i32 %187, i32 %194)
  %196 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %197 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32*, i32** @wiimod_pro_map, align 8
  %201 = load i64, i64* @WIIMOD_PRO_KEY_DOWN, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %4, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 8
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, 64
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = call i32 @input_report_key(i32 %199, i32 %203, i32 %210)
  %212 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %213 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** @wiimod_pro_map, align 8
  %217 = load i64, i64* @WIIMOD_PRO_KEY_TL, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %4, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 8
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 32
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @input_report_key(i32 %215, i32 %219, i32 %226)
  %228 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %229 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32*, i32** @wiimod_pro_map, align 8
  %233 = load i64, i64* @WIIMOD_PRO_KEY_MINUS, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %4, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 8
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 16
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = call i32 @input_report_key(i32 %231, i32 %235, i32 %242)
  %244 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %245 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32*, i32** @wiimod_pro_map, align 8
  %249 = load i64, i64* @WIIMOD_PRO_KEY_HOME, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %4, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 8
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, 8
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = call i32 @input_report_key(i32 %247, i32 %251, i32 %258)
  %260 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %261 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32*, i32** @wiimod_pro_map, align 8
  %265 = load i64, i64* @WIIMOD_PRO_KEY_PLUS, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %4, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 8
  %270 = load i32, i32* %269, align 4
  %271 = and i32 %270, 4
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = call i32 @input_report_key(i32 %263, i32 %267, i32 %274)
  %276 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %277 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32*, i32** @wiimod_pro_map, align 8
  %281 = load i64, i64* @WIIMOD_PRO_KEY_TR, align 8
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** %4, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 8
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 2
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = call i32 @input_report_key(i32 %279, i32 %283, i32 %290)
  %292 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %293 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32*, i32** @wiimod_pro_map, align 8
  %297 = load i64, i64* @WIIMOD_PRO_KEY_ZL, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %4, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 9
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 128
  %304 = icmp ne i32 %303, 0
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = call i32 @input_report_key(i32 %295, i32 %299, i32 %306)
  %308 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %309 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32*, i32** @wiimod_pro_map, align 8
  %313 = load i64, i64* @WIIMOD_PRO_KEY_B, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** %4, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 9
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, 64
  %320 = icmp ne i32 %319, 0
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = call i32 @input_report_key(i32 %311, i32 %315, i32 %322)
  %324 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %325 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32*, i32** @wiimod_pro_map, align 8
  %329 = load i64, i64* @WIIMOD_PRO_KEY_Y, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** %4, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 9
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, 32
  %336 = icmp ne i32 %335, 0
  %337 = xor i1 %336, true
  %338 = zext i1 %337 to i32
  %339 = call i32 @input_report_key(i32 %327, i32 %331, i32 %338)
  %340 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %341 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32*, i32** @wiimod_pro_map, align 8
  %345 = load i64, i64* @WIIMOD_PRO_KEY_A, align 8
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i32*, i32** %4, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 9
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 16
  %352 = icmp ne i32 %351, 0
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i32
  %355 = call i32 @input_report_key(i32 %343, i32 %347, i32 %354)
  %356 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %357 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32*, i32** @wiimod_pro_map, align 8
  %361 = load i64, i64* @WIIMOD_PRO_KEY_X, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load i32*, i32** %4, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 9
  %366 = load i32, i32* %365, align 4
  %367 = and i32 %366, 8
  %368 = icmp ne i32 %367, 0
  %369 = xor i1 %368, true
  %370 = zext i1 %369 to i32
  %371 = call i32 @input_report_key(i32 %359, i32 %363, i32 %370)
  %372 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %373 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32*, i32** @wiimod_pro_map, align 8
  %377 = load i64, i64* @WIIMOD_PRO_KEY_ZR, align 8
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %4, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 9
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, 4
  %384 = icmp ne i32 %383, 0
  %385 = xor i1 %384, true
  %386 = zext i1 %385 to i32
  %387 = call i32 @input_report_key(i32 %375, i32 %379, i32 %386)
  %388 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %389 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32*, i32** @wiimod_pro_map, align 8
  %393 = load i64, i64* @WIIMOD_PRO_KEY_LEFT, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load i32*, i32** %4, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 9
  %398 = load i32, i32* %397, align 4
  %399 = and i32 %398, 2
  %400 = icmp ne i32 %399, 0
  %401 = xor i1 %400, true
  %402 = zext i1 %401 to i32
  %403 = call i32 @input_report_key(i32 %391, i32 %395, i32 %402)
  %404 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %405 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32*, i32** @wiimod_pro_map, align 8
  %409 = load i64, i64* @WIIMOD_PRO_KEY_UP, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load i32*, i32** %4, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 9
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, 1
  %416 = icmp ne i32 %415, 0
  %417 = xor i1 %416, true
  %418 = zext i1 %417 to i32
  %419 = call i32 @input_report_key(i32 %407, i32 %411, i32 %418)
  %420 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %421 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load i32*, i32** @wiimod_pro_map, align 8
  %425 = load i64, i64* @WIIMOD_PRO_KEY_THUMBL, align 8
  %426 = getelementptr inbounds i32, i32* %424, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = load i32*, i32** %4, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 10
  %430 = load i32, i32* %429, align 4
  %431 = and i32 %430, 2
  %432 = icmp ne i32 %431, 0
  %433 = xor i1 %432, true
  %434 = zext i1 %433 to i32
  %435 = call i32 @input_report_key(i32 %423, i32 %427, i32 %434)
  %436 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %437 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32*, i32** @wiimod_pro_map, align 8
  %441 = load i64, i64* @WIIMOD_PRO_KEY_THUMBR, align 8
  %442 = getelementptr inbounds i32, i32* %440, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32*, i32** %4, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 10
  %446 = load i32, i32* %445, align 4
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  %451 = call i32 @input_report_key(i32 %439, i32 %443, i32 %450)
  %452 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %453 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = call i32 @input_sync(i32 %455)
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #2

declare dso_local i32 @input_report_key(i32, i32, i32) #2

declare dso_local i32 @input_sync(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
