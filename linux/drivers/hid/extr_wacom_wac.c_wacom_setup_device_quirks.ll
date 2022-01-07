; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_device_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_device_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_3__*, %struct.wacom_wac }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wacom_wac = type { %struct.TYPE_4__*, %struct.wacom_features }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.wacom_features = type { i32, i32, i32, i32, i64, i32, i32, i32, i64 }

@GRAPHIRE_BT = common dso_local global i32 0, align 4
@WACOM_G4 = common dso_local global i32 0, align 4
@INTUOS3S = common dso_local global i32 0, align 4
@WACOM_MO = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_PEN = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_PAD = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_TOUCH = common dso_local global i32 0, align 4
@INTUOS5S = common dso_local global i32 0, align 4
@INTUOSPL = common dso_local global i32 0, align 4
@INTUOSHT = common dso_local global i32 0, align 4
@BAMBOO_PT = common dso_local global i32 0, align 4
@WACOM_PKGLEN_BBTOUCH3 = common dso_local global i64 0, align 8
@INTUOSHT2 = common dso_local global i32 0, align 4
@WACOM_PKGLEN_BBTOUCH = common dso_local global i64 0, align 8
@BAMBOO_PEN = common dso_local global i32 0, align 4
@BAMBOO_PAD = common dso_local global i32 0, align 4
@REMOTE = common dso_local global i32 0, align 4
@INTUOSP2_BT = common dso_local global i32 0, align 4
@INTUOSP2S_BT = common dso_local global i32 0, align 4
@WACOM_QUIRK_BATTERY = common dso_local global i32 0, align 4
@INTUOSHT3_BT = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_DIRECT = common dso_local global i32 0, align 4
@BUS_BLUETOOTH = common dso_local global i64 0, align 8
@BAMBOO_TOUCH = common dso_local global i32 0, align 4
@WACOM_QUIRK_BBTOUCH_LOWRES = common dso_local global i32 0, align 4
@WIRELESS = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_WL_MONITOR = common dso_local global i32 0, align 4
@WACOM_QUIRK_TOOLSERIAL = common dso_local global i32 0, align 4
@BTN_TOOL_BRUSH = common dso_local global i32 0, align 4
@BTN_TOOL_PENCIL = common dso_local global i32 0, align 4
@BTN_TOOL_AIRBRUSH = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wacom_setup_device_quirks(%struct.wacom* %0) #0 {
  %2 = alloca %struct.wacom*, align 8
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  store %struct.wacom* %0, %struct.wacom** %2, align 8
  %5 = load %struct.wacom*, %struct.wacom** %2, align 8
  %6 = getelementptr inbounds %struct.wacom, %struct.wacom* %5, i32 0, i32 1
  store %struct.wacom_wac* %6, %struct.wacom_wac** %3, align 8
  %7 = load %struct.wacom*, %struct.wacom** %2, align 8
  %8 = getelementptr inbounds %struct.wacom, %struct.wacom* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %8, i32 0, i32 1
  store %struct.wacom_features* %9, %struct.wacom_features** %4, align 8
  %10 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %11 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GRAPHIRE_BT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %38, label %15

15:                                               ; preds = %1
  %16 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %17 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WACOM_G4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %23 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 144
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %28 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @INTUOS3S, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %34 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WACOM_MO, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32, %21, %15, %1
  %39 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %40 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %47 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %48 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %38
  br label %52

52:                                               ; preds = %51, %32, %26
  %53 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %54 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %61 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %66 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %65, i32 0, i32 2
  store i32 1023, i32* %66, align 8
  %67 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %68 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %67, i32 0, i32 3
  store i32 1023, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %59, %52
  %70 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %71 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @INTUOS5S, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %77 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @INTUOSPL, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %93, label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %83 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @INTUOSHT, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %167

87:                                               ; preds = %81
  %88 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %89 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BAMBOO_PT, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %167

93:                                               ; preds = %87, %75
  %94 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %95 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @WACOM_PKGLEN_BBTOUCH3, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %153

99:                                               ; preds = %93
  %100 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %101 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %106 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %107 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %99
  %111 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %112 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @INTUOSHT, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %118 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @BAMBOO_PT, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %124 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %125 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %116, %110
  %129 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %130 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @INTUOSHT2, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %128
  %135 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %136 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sdiv i32 %137, 10
  %139 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %140 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %142 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %143, 10
  %145 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %146 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %152

147:                                              ; preds = %128
  %148 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %149 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %148, i32 0, i32 2
  store i32 4096, i32* %149, align 8
  %150 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %151 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %150, i32 0, i32 3
  store i32 4096, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %134
  br label %166

153:                                              ; preds = %93
  %154 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %155 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @WACOM_PKGLEN_BBTOUCH, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %161 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %162 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %153
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %87, %81
  %168 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %169 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @BAMBOO_PEN, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %175 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @WACOM_PKGLEN_BBTOUCH3, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %181 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %182 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %179, %173, %167
  %186 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %187 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @BAMBOO_PAD, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %193 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %194 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %191, %185
  %196 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %197 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @REMOTE, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %203 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %204 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %201, %195
  %206 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %207 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @INTUOSP2_BT, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %213 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @INTUOSP2S_BT, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %211, %205
  %218 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %219 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %224 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* @WACOM_QUIRK_BATTERY, align 4
  %228 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %229 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %217, %211
  %233 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %234 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @INTUOSHT3_BT, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %232
  %239 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %240 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %243 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load i32, i32* @WACOM_QUIRK_BATTERY, align 4
  %247 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %248 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %238, %232
  %252 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %253 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  switch i32 %254, label %261 [
    i32 139, label %255
    i32 145, label %255
    i32 144, label %255
    i32 143, label %255
    i32 134, label %255
    i32 133, label %255
    i32 146, label %255
    i32 132, label %255
    i32 130, label %255
    i32 147, label %255
    i32 148, label %255
    i32 149, label %255
    i32 128, label %255
    i32 135, label %255
    i32 131, label %255
    i32 129, label %255
    i32 138, label %255
    i32 136, label %255
    i32 137, label %255
    i32 142, label %255
    i32 141, label %255
    i32 140, label %255
  ]

255:                                              ; preds = %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251, %251
  %256 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %257 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %258 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %251, %255
  %262 = load %struct.wacom*, %struct.wacom** %2, align 8
  %263 = getelementptr inbounds %struct.wacom, %struct.wacom* %262, i32 0, i32 0
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @BUS_BLUETOOTH, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %261
  %270 = load i32, i32* @WACOM_QUIRK_BATTERY, align 4
  %271 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %272 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %269, %261
  %276 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %277 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @BAMBOO_PT, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %287, label %281

281:                                              ; preds = %275
  %282 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %283 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @BAMBOO_TOUCH, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %315

287:                                              ; preds = %281, %275
  %288 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %289 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @WACOM_PKGLEN_BBTOUCH, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %315

293:                                              ; preds = %287
  %294 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %295 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = shl i32 %296, 5
  store i32 %297, i32* %295, align 8
  %298 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %299 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = shl i32 %300, 5
  store i32 %301, i32* %299, align 4
  %302 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %303 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = shl i32 %304, 5
  store i32 %305, i32* %303, align 8
  %306 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %307 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = shl i32 %308, 5
  store i32 %309, i32* %307, align 4
  %310 = load i32, i32* @WACOM_QUIRK_BBTOUCH_LOWRES, align 4
  %311 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %312 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 8
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 8
  br label %315

315:                                              ; preds = %293, %287, %281
  %316 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %317 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @WIRELESS, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %334

321:                                              ; preds = %315
  %322 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %323 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @WACOM_DEVICETYPE_WL_MONITOR, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %321
  %328 = load i32, i32* @WACOM_QUIRK_BATTERY, align 4
  %329 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %330 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %328
  store i32 %332, i32* %330, align 8
  br label %333

333:                                              ; preds = %327, %321
  br label %334

334:                                              ; preds = %333, %315
  %335 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %336 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @REMOTE, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %346

340:                                              ; preds = %334
  %341 = load i32, i32* @WACOM_DEVICETYPE_WL_MONITOR, align 4
  %342 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %343 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 4
  br label %346

346:                                              ; preds = %340, %334
  %347 = load %struct.wacom*, %struct.wacom** %2, align 8
  %348 = getelementptr inbounds %struct.wacom, %struct.wacom* %347, i32 0, i32 0
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = icmp eq i32 %351, 898
  br i1 %352, label %360, label %353

353:                                              ; preds = %346
  %354 = load %struct.wacom*, %struct.wacom** %2, align 8
  %355 = getelementptr inbounds %struct.wacom, %struct.wacom* %354, i32 0, i32 0
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 893
  br i1 %359, label %360, label %444

360:                                              ; preds = %353, %346
  %361 = load i32, i32* @WACOM_QUIRK_TOOLSERIAL, align 4
  %362 = xor i32 %361, -1
  %363 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %364 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 8
  %366 = and i32 %365, %362
  store i32 %366, i32* %364, align 8
  %367 = load i32, i32* @BTN_TOOL_BRUSH, align 4
  %368 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %369 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %368, i32 0, i32 0
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @__clear_bit(i32 %367, i32 %372)
  %374 = load i32, i32* @BTN_TOOL_PENCIL, align 4
  %375 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %376 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %375, i32 0, i32 0
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @__clear_bit(i32 %374, i32 %379)
  %381 = load i32, i32* @BTN_TOOL_AIRBRUSH, align 4
  %382 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %383 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %382, i32 0, i32 0
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @__clear_bit(i32 %381, i32 %386)
  %388 = load i32, i32* @ABS_Z, align 4
  %389 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %390 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %389, i32 0, i32 0
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @__clear_bit(i32 %388, i32 %393)
  %395 = load i32, i32* @ABS_DISTANCE, align 4
  %396 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %397 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %396, i32 0, i32 0
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @__clear_bit(i32 %395, i32 %400)
  %402 = load i32, i32* @ABS_TILT_X, align 4
  %403 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %404 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %403, i32 0, i32 0
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @__clear_bit(i32 %402, i32 %407)
  %409 = load i32, i32* @ABS_TILT_Y, align 4
  %410 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %411 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %410, i32 0, i32 0
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @__clear_bit(i32 %409, i32 %414)
  %416 = load i32, i32* @ABS_WHEEL, align 4
  %417 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %418 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %417, i32 0, i32 0
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @__clear_bit(i32 %416, i32 %421)
  %423 = load i32, i32* @ABS_MISC, align 4
  %424 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %425 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %424, i32 0, i32 0
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @__clear_bit(i32 %423, i32 %428)
  %430 = load i32, i32* @MSC_SERIAL, align 4
  %431 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %432 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %431, i32 0, i32 0
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @__clear_bit(i32 %430, i32 %435)
  %437 = load i32, i32* @EV_MSC, align 4
  %438 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %439 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %438, i32 0, i32 0
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @__clear_bit(i32 %437, i32 %442)
  br label %444

444:                                              ; preds = %360, %353
  ret void
}

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
