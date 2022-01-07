; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_pro2_bt_pen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_pro2_bt_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, i8*, %struct.TYPE_3__*, i64*, %struct.TYPE_4__, %struct.input_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i8 }
%struct.input_dev = type { i32 }

@INTUOSP2_BT = common dso_local global i64 0, align 8
@INTUOSP2S_BT = common dso_local global i64 0, align 8
@BTN_TOOL_RUBBER = common dso_local global i64 0, align 8
@BTN_TOOL_PEN = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i64 0, align 8
@BTN_STYLUS = common dso_local global i64 0, align 8
@BTN_STYLUS2 = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_intuos_pro2_bt_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_intuos_pro2_bt_pen(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %14 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %15 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %14, i32 0, i32 6
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %5, align 8
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %18 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %21 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INTUOSP2_BT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %28 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INTUOSP2S_BT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %26, %1
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 99
  %36 = call i8* @get_unaligned_le64(i8* %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %39 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 107
  %44 = call zeroext i8 @get_unaligned_le16(i8* %43)
  %45 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %46 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %44, i8* %48, align 1
  store i32 14, i32* %3, align 4
  store i32 7, i32* %4, align 4
  br label %65

49:                                               ; preds = %26
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 33
  %52 = call i8* @get_unaligned_le64(i8* %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %55 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 41
  %60 = call zeroext i8 @get_unaligned_le16(i8* %59)
  %61 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %62 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %60, i8* %64, align 1
  store i32 8, i32* %3, align 4
  store i32 4, i32* %4, align 4
  br label %65

65:                                               ; preds = %49, %33
  %66 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %67 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 52
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %75 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 32
  %80 = and i32 %79, 1048575
  %81 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %82 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %86, %80
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %84, align 1
  br label %89

89:                                               ; preds = %73, %65
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %385, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %388

94:                                               ; preds = %90
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %3, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  store i8* %101, i8** %8, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 128
  store i32 %106, i32* %9, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 64
  store i32 %111, i32* %10, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 32
  store i32 %116, i32* %11, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 16
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %94
  br label %385

125:                                              ; preds = %94
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %149, label %128

128:                                              ; preds = %125
  %129 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %130 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %129, i32 0, i32 3
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  %133 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %134 = call i32 @wacom_exit_report(%struct.wacom_wac* %133)
  %135 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %136 = call i32 @input_sync(%struct.input_dev* %135)
  %137 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %138 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %137, i32 0, i32 4
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %142 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  store i8 0, i8* %144, align 1
  %145 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %146 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 0, i32* %148, align 4
  br label %388

149:                                              ; preds = %125
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %258

152:                                              ; preds = %149
  %153 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %154 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %153, i32 0, i32 4
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %195, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i64, i64* @BTN_TOOL_RUBBER, align 8
  %164 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %165 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %164, i32 0, i32 4
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  store i64 %163, i64* %167, align 8
  br label %194

168:                                              ; preds = %159
  %169 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %170 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %168
  %176 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %177 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = call i64 @wacom_intuos_get_tool_type(i32 %181)
  %183 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %184 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %183, i32 0, i32 4
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  store i64 %182, i64* %186, align 8
  br label %193

187:                                              ; preds = %168
  %188 = load i64, i64* @BTN_TOOL_PEN, align 8
  %189 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %190 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %189, i32 0, i32 4
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  store i64 %188, i64* %192, align 8
  br label %193

193:                                              ; preds = %187, %175
  br label %194

194:                                              ; preds = %193, %162
  br label %195

195:                                              ; preds = %194, %152
  %196 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %197 = load i32, i32* @ABS_X, align 4
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = call zeroext i8 @get_unaligned_le16(i8* %199)
  %201 = call i32 @input_report_abs(%struct.input_dev* %196, i32 %197, i8 zeroext %200)
  %202 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %203 = load i32, i32* @ABS_Y, align 4
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 3
  %206 = call zeroext i8 @get_unaligned_le16(i8* %205)
  %207 = call i32 @input_report_abs(%struct.input_dev* %202, i32 %203, i8 zeroext %206)
  %208 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %209 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @INTUOSP2_BT, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %221, label %214

214:                                              ; preds = %195
  %215 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %216 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @INTUOSP2S_BT, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %257

221:                                              ; preds = %214, %195
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 9
  %224 = call zeroext i8 @get_unaligned_le16(i8* %223)
  %225 = zext i8 %224 to i32
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 450
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp sgt i32 %228, 899
  br i1 %229, label %230, label %233

230:                                              ; preds = %221
  %231 = load i32, i32* %13, align 4
  %232 = sub nsw i32 %231, 1800
  store i32 %232, i32* %13, align 4
  br label %233

233:                                              ; preds = %230, %221
  %234 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %235 = load i32, i32* @ABS_TILT_X, align 4
  %236 = load i8*, i8** %8, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 7
  %238 = load i8, i8* %237, align 1
  %239 = call i32 @input_report_abs(%struct.input_dev* %234, i32 %235, i8 zeroext %238)
  %240 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %241 = load i32, i32* @ABS_TILT_Y, align 4
  %242 = load i8*, i8** %8, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 8
  %244 = load i8, i8* %243, align 1
  %245 = call i32 @input_report_abs(%struct.input_dev* %240, i32 %241, i8 zeroext %244)
  %246 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %247 = load i32, i32* @ABS_Z, align 4
  %248 = load i32, i32* %13, align 4
  %249 = trunc i32 %248 to i8
  %250 = call i32 @input_report_abs(%struct.input_dev* %246, i32 %247, i8 zeroext %249)
  %251 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %252 = load i32, i32* @ABS_WHEEL, align 4
  %253 = load i8*, i8** %8, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 11
  %255 = call zeroext i8 @get_unaligned_le16(i8* %254)
  %256 = call i32 @input_report_abs(%struct.input_dev* %251, i32 %252, i8 zeroext %255)
  br label %257

257:                                              ; preds = %233, %214
  br label %258

258:                                              ; preds = %257, %149
  %259 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %260 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %259, i32 0, i32 4
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %377

265:                                              ; preds = %258
  %266 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %267 = load i32, i32* @ABS_PRESSURE, align 4
  %268 = load i8*, i8** %8, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 5
  %270 = call zeroext i8 @get_unaligned_le16(i8* %269)
  %271 = call i32 @input_report_abs(%struct.input_dev* %266, i32 %267, i8 zeroext %270)
  %272 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %273 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @INTUOSP2_BT, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %285, label %278

278:                                              ; preds = %265
  %279 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %280 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @INTUOSP2S_BT, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %305

285:                                              ; preds = %278, %265
  %286 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %287 = load i32, i32* @ABS_DISTANCE, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load i8*, i8** %8, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 13
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  br label %301

295:                                              ; preds = %285
  %296 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %297 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  %299 = load i8, i8* %298, align 8
  %300 = zext i8 %299 to i32
  br label %301

301:                                              ; preds = %295, %290
  %302 = phi i32 [ %294, %290 ], [ %300, %295 ]
  %303 = trunc i32 %302 to i8
  %304 = call i32 @input_report_abs(%struct.input_dev* %286, i32 %287, i8 zeroext %303)
  br label %325

305:                                              ; preds = %278
  %306 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %307 = load i32, i32* @ABS_DISTANCE, align 4
  %308 = load i32, i32* %11, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load i8*, i8** %8, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 7
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  br label %321

315:                                              ; preds = %305
  %316 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %317 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 1
  %319 = load i8, i8* %318, align 8
  %320 = zext i8 %319 to i32
  br label %321

321:                                              ; preds = %315, %310
  %322 = phi i32 [ %314, %310 ], [ %320, %315 ]
  %323 = trunc i32 %322 to i8
  %324 = call i32 @input_report_abs(%struct.input_dev* %306, i32 %307, i8 zeroext %323)
  br label %325

325:                                              ; preds = %321, %301
  %326 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %327 = load i64, i64* @BTN_TOUCH, align 8
  %328 = load i8*, i8** %8, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 0
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = and i32 %331, 9
  %333 = call i32 @input_report_key(%struct.input_dev* %326, i64 %327, i32 %332)
  %334 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %335 = load i64, i64* @BTN_STYLUS, align 8
  %336 = load i8*, i8** %8, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = and i32 %339, 2
  %341 = call i32 @input_report_key(%struct.input_dev* %334, i64 %335, i32 %340)
  %342 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %343 = load i64, i64* @BTN_STYLUS2, align 8
  %344 = load i8*, i8** %8, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 0
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = and i32 %347, 4
  %349 = call i32 @input_report_key(%struct.input_dev* %342, i64 %343, i32 %348)
  %350 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %351 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %352 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %351, i32 0, i32 4
  %353 = load i64*, i64** %352, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 0
  %355 = load i64, i64* %354, align 8
  %356 = load i32, i32* %10, align 4
  %357 = call i32 @input_report_key(%struct.input_dev* %350, i64 %355, i32 %356)
  %358 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %359 = load i32, i32* @EV_MSC, align 4
  %360 = load i32, i32* @MSC_SERIAL, align 4
  %361 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %362 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 0
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @input_event(%struct.input_dev* %358, i32 %359, i32 %360, i32 %365)
  %367 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %368 = load i32, i32* @ABS_MISC, align 4
  %369 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %370 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %369, i32 0, i32 2
  %371 = load i8*, i8** %370, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 0
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = call zeroext i8 @wacom_intuos_id_mangle(i32 %374)
  %376 = call i32 @input_report_abs(%struct.input_dev* %367, i32 %368, i8 zeroext %375)
  br label %377

377:                                              ; preds = %325, %258
  %378 = load i32, i32* %10, align 4
  %379 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %380 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %379, i32 0, i32 3
  %381 = load %struct.TYPE_3__*, %struct.TYPE_3__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 0
  store i32 %378, i32* %382, align 4
  %383 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %384 = call i32 @input_sync(%struct.input_dev* %383)
  br label %385

385:                                              ; preds = %377, %124
  %386 = load i32, i32* %7, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %7, align 4
  br label %90

388:                                              ; preds = %128, %90
  ret void
}

declare dso_local i8* @get_unaligned_le64(i8*) #1

declare dso_local zeroext i8 @get_unaligned_le16(i8*) #1

declare dso_local i32 @wacom_exit_report(%struct.wacom_wac*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i64 @wacom_intuos_get_tool_type(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local zeroext i8 @wacom_intuos_id_mangle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
