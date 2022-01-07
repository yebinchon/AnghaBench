; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8, i8, i8, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

@WAC_CMD_LED_CONTROL = common dso_local global i8 0, align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@REMOTE = common dso_local global i64 0, align 8
@WAC_CMD_WL_LED_CONTROL = common dso_local global i8 0, align 1
@INTUOSP2_BT = common dso_local global i64 0, align 8
@WAC_CMD_WL_INTUOSP2 = common dso_local global i8 0, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_GENERIC = common dso_local global i64 0, align 8
@WAC_CMD_LED_CONTROL_GENERIC = common dso_local global i8 0, align 1
@INTUOS5S = common dso_local global i64 0, align 8
@INTUOSPL = common dso_local global i64 0, align 8
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@WAC_CMD_RETRIES = common dso_local global i32 0, align 4
@WACOM_21UX2 = common dso_local global i64 0, align 8
@WACOM_24HD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*)* @wacom_led_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_led_control(%struct.wacom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  %13 = load i8, i8* @WAC_CMD_LED_CONTROL, align 1
  store i8 %13, i8* %6, align 1
  store i32 9, i32* %7, align 4
  %14 = load %struct.wacom*, %struct.wacom** %3, align 8
  %15 = getelementptr inbounds %struct.wacom, %struct.wacom* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %275

22:                                               ; preds = %1
  %23 = load %struct.wacom*, %struct.wacom** %3, align 8
  %24 = getelementptr inbounds %struct.wacom, %struct.wacom* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REMOTE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %275

33:                                               ; preds = %22
  %34 = load %struct.wacom*, %struct.wacom** %3, align 8
  %35 = getelementptr inbounds %struct.wacom, %struct.wacom* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i8, i8* @WAC_CMD_WL_LED_CONTROL, align 1
  store i8 %40, i8* %6, align 1
  store i32 13, i32* %7, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load %struct.wacom*, %struct.wacom** %3, align 8
  %43 = getelementptr inbounds %struct.wacom, %struct.wacom* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INTUOSP2_BT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i8, i8* @WAC_CMD_WL_INTUOSP2, align 1
  store i8 %50, i8* %6, align 1
  store i32 51, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %41
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 %53, i32 %54)
  store i8* %55, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %275

61:                                               ; preds = %52
  %62 = load %struct.wacom*, %struct.wacom** %3, align 8
  %63 = getelementptr inbounds %struct.wacom, %struct.wacom* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HID_GENERIC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %61
  %70 = load i8, i8* @WAC_CMD_LED_CONTROL_GENERIC, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 %70, i8* %72, align 1
  %73 = load %struct.wacom*, %struct.wacom** %3, align 8
  %74 = getelementptr inbounds %struct.wacom, %struct.wacom* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 %76, i8* %78, align 1
  %79 = load %struct.wacom*, %struct.wacom** %3, align 8
  %80 = getelementptr inbounds %struct.wacom, %struct.wacom* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 3
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8 %87, i8* %89, align 1
  br label %263

90:                                               ; preds = %61
  %91 = load %struct.wacom*, %struct.wacom** %3, align 8
  %92 = getelementptr inbounds %struct.wacom, %struct.wacom* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @INTUOS5S, align 8
  %97 = icmp sge i64 %95, %96
  br i1 %97, label %98, label %160

98:                                               ; preds = %90
  %99 = load %struct.wacom*, %struct.wacom** %3, align 8
  %100 = getelementptr inbounds %struct.wacom, %struct.wacom* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @INTUOSPL, align 8
  %105 = icmp sle i64 %103, %104
  br i1 %105, label %106, label %160

106:                                              ; preds = %98
  %107 = load %struct.wacom*, %struct.wacom** %3, align 8
  %108 = getelementptr inbounds %struct.wacom, %struct.wacom* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 3
  store i32 %114, i32* %8, align 4
  %115 = load %struct.wacom*, %struct.wacom** %3, align 8
  %116 = getelementptr inbounds %struct.wacom, %struct.wacom* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 8
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 96
  %121 = ashr i32 %120, 5
  %122 = sub nsw i32 %121, 1
  %123 = and i32 %122, 3
  store i32 %123, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = shl i32 %124, 4
  %126 = load i32, i32* %9, align 4
  %127 = shl i32 %126, 2
  %128 = or i32 %125, %127
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %128, %129
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %11, align 1
  %132 = load i8, i8* %6, align 1
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 %132, i8* %134, align 1
  %135 = load %struct.wacom*, %struct.wacom** %3, align 8
  %136 = getelementptr inbounds %struct.wacom, %struct.wacom* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %106
  %141 = load %struct.wacom*, %struct.wacom** %3, align 8
  %142 = getelementptr inbounds %struct.wacom, %struct.wacom* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %145 = load i8*, i8** %4, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %148 = call i32 @wacom_get_report(i32 %143, i32 %144, i8* %145, i32 %146, i32 %147)
  %149 = load i8, i8* %6, align 1
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  store i8 %149, i8* %151, align 1
  %152 = load i8, i8* %11, align 1
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 4
  store i8 %152, i8* %154, align 1
  br label %159

155:                                              ; preds = %106
  %156 = load i8, i8* %11, align 1
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8 %156, i8* %158, align 1
  br label %159

159:                                              ; preds = %155, %140
  br label %262

160:                                              ; preds = %98, %90
  %161 = load %struct.wacom*, %struct.wacom** %3, align 8
  %162 = getelementptr inbounds %struct.wacom, %struct.wacom* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @INTUOSP2_BT, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %160
  %169 = load i8, i8* %6, align 1
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  store i8 %169, i8* %171, align 1
  %172 = load i8*, i8** %4, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 4
  store i8 100, i8* %173, align 1
  %174 = load i8*, i8** %4, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 5
  store i8 100, i8* %175, align 1
  %176 = load i8*, i8** %4, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 6
  store i8 100, i8* %177, align 1
  %178 = load i8*, i8** %4, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 7
  store i8 100, i8* %179, align 1
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 8
  store i8 100, i8* %181, align 1
  %182 = load %struct.wacom*, %struct.wacom** %3, align 8
  %183 = getelementptr inbounds %struct.wacom, %struct.wacom* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i8, i8* %184, align 8
  %186 = load i8*, i8** %4, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 9
  store i8 %185, i8* %187, align 1
  %188 = load %struct.wacom*, %struct.wacom** %3, align 8
  %189 = getelementptr inbounds %struct.wacom, %struct.wacom* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 3
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %4, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 10
  store i8 %196, i8* %198, align 1
  br label %261

199:                                              ; preds = %160
  %200 = load %struct.wacom*, %struct.wacom** %3, align 8
  %201 = getelementptr inbounds %struct.wacom, %struct.wacom* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, 4
  store i32 %207, i32* %12, align 4
  %208 = load %struct.wacom*, %struct.wacom** %3, align 8
  %209 = getelementptr inbounds %struct.wacom, %struct.wacom* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @WACOM_21UX2, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %199
  %216 = load %struct.wacom*, %struct.wacom** %3, align 8
  %217 = getelementptr inbounds %struct.wacom, %struct.wacom* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @WACOM_24HD, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %215, %199
  %224 = load %struct.wacom*, %struct.wacom** %3, align 8
  %225 = getelementptr inbounds %struct.wacom, %struct.wacom* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = shl i32 %230, 4
  %232 = or i32 %231, 64
  %233 = load i32, i32* %12, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %223, %215
  %236 = load i8, i8* %6, align 1
  %237 = load i8*, i8** %4, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 0
  store i8 %236, i8* %238, align 1
  %239 = load i32, i32* %12, align 4
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %4, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  store i8 %240, i8* %242, align 1
  %243 = load %struct.wacom*, %struct.wacom** %3, align 8
  %244 = getelementptr inbounds %struct.wacom, %struct.wacom* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i8, i8* %245, align 8
  %247 = load i8*, i8** %4, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 2
  store i8 %246, i8* %248, align 1
  %249 = load %struct.wacom*, %struct.wacom** %3, align 8
  %250 = getelementptr inbounds %struct.wacom, %struct.wacom* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i8, i8* %251, align 1
  %253 = load i8*, i8** %4, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 3
  store i8 %252, i8* %254, align 1
  %255 = load %struct.wacom*, %struct.wacom** %3, align 8
  %256 = getelementptr inbounds %struct.wacom, %struct.wacom* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = load i8, i8* %257, align 2
  %259 = load i8*, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 4
  store i8 %258, i8* %260, align 1
  br label %261

261:                                              ; preds = %235, %168
  br label %262

262:                                              ; preds = %261, %159
  br label %263

263:                                              ; preds = %262, %69
  %264 = load %struct.wacom*, %struct.wacom** %3, align 8
  %265 = getelementptr inbounds %struct.wacom, %struct.wacom* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %268 = load i8*, i8** %4, align 8
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %271 = call i32 @wacom_set_report(i32 %266, i32 %267, i8* %268, i32 %269, i32 %270)
  store i32 %271, i32* %5, align 4
  %272 = load i8*, i8** %4, align 8
  %273 = call i32 @kfree(i8* %272)
  %274 = load i32, i32* %5, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %263, %58, %30, %19
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @wacom_get_report(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @wacom_set_report(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
