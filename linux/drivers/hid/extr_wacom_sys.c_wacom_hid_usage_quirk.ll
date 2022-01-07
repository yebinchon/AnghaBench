; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_hid_usage_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_hid_usage_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i32 }
%struct.hid_field = type { i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.hid_field**, i32 }
%struct.hid_usage = type { i32, i32 }
%struct.wacom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.wacom_features }
%struct.wacom_features = type { i64, i32 }

@USB_VENDOR_ID_WACOM = common dso_local global i64 0, align 8
@HID_UP_MSVENDOR = common dso_local global i64 0, align 8
@HID_GENERIC = common dso_local global i64 0, align 8
@HID_DG_PEN = common dso_local global i64 0, align 8
@HID_DG_STYLUS = common dso_local global i64 0, align 8
@HID_DG_TIPSWITCH = common dso_local global i64 0, align 8
@HID_DG_BARRELSWITCH = common dso_local global i64 0, align 8
@HID_DG_ERASER = common dso_local global i64 0, align 8
@HID_DG_INVERT = common dso_local global i64 0, align 8
@HID_DG_INRANGE = common dso_local global i64 0, align 8
@HID_DG_BARRELSWITCH2 = common dso_local global i32 0, align 4
@WACOM_HID_WT_SERIALNUMBER = common dso_local global i32 0, align 4
@HID_DG_TOOLSERIALNUMBER = common dso_local global i64 0, align 8
@WACOM_QUIRK_AESPEN = common dso_local global i32 0, align 4
@WACOM_HID_WD_TOOLTYPE = common dso_local global i32 0, align 4
@S16_MIN = common dso_local global i64 0, align 8
@S16_MAX = common dso_local global i32 0, align 4
@S32_MIN = common dso_local global i64 0, align 8
@S32_MAX = common dso_local global i32 0, align 4
@WACOM_HID_WD_SERIALHI = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@HID_GD_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* @wacom_hid_usage_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_hid_usage_quirk(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca %struct.hid_usage*, align 8
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca %struct.wacom_features*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_field*, align 8
  %12 = alloca %struct.hid_field*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_field* %1, %struct.hid_field** %5, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %6, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.wacom* %14, %struct.wacom** %7, align 8
  %15 = load %struct.wacom*, %struct.wacom** %7, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store %struct.wacom_features* %17, %struct.wacom_features** %8, align 8
  %18 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %19 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wacom_equivalent_usage(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_VENDOR_ID_WACOM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %3
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 16896
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %34 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HID_UP_MSVENDOR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %40 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %39, i32 0, i32 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wacom*, %struct.wacom** %7, align 8
  %45 = getelementptr inbounds %struct.wacom, %struct.wacom* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.wacom*, %struct.wacom** %7, align 8
  %48 = getelementptr inbounds %struct.wacom, %struct.wacom* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 2, i32* %49, align 8
  br label %50

50:                                               ; preds = %38, %32, %27, %3
  %51 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %52 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HID_GENERIC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %152

56:                                               ; preds = %50
  %57 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %58 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 851968
  br i1 %60, label %61, label %152

61:                                               ; preds = %56
  %62 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %63 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HID_DG_PEN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %152

67:                                               ; preds = %61
  %68 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %69 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HID_DG_STYLUS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %152

73:                                               ; preds = %67
  %74 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %75 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %151

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %84 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %151

87:                                               ; preds = %80
  %88 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %89 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %88, i32 0, i32 7
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @HID_DG_TIPSWITCH, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %151

99:                                               ; preds = %87
  %100 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %101 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %100, i32 0, i32 7
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HID_DG_BARRELSWITCH, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %151

111:                                              ; preds = %99
  %112 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %113 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %112, i32 0, i32 7
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HID_DG_ERASER, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %111
  %124 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %125 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %124, i32 0, i32 7
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @HID_DG_INVERT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %123
  %136 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %137 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %136, i32 0, i32 7
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @HID_DG_INRANGE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load i32, i32* @HID_DG_BARRELSWITCH2, align 4
  %149 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %150 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %135, %123, %111, %99, %87, %80, %73
  br label %152

152:                                              ; preds = %151, %67, %61, %56, %50
  %153 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %154 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @WACOM_HID_WT_SERIALNUMBER, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %269

158:                                              ; preds = %152
  %159 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %160 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 16
  br i1 %162, label %163, label %269

163:                                              ; preds = %158
  %164 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %165 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 2
  %168 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %169 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %168, i32 0, i32 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %167, %172
  br i1 %173, label %174, label %269

174:                                              ; preds = %163
  %175 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %176 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %175, i32 0, i32 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load %struct.hid_field**, %struct.hid_field*** %178, align 8
  %180 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %181 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %179, i64 %184
  %186 = load %struct.hid_field*, %struct.hid_field** %185, align 8
  store %struct.hid_field* %186, %struct.hid_field** %11, align 8
  %187 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %188 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %187, i32 0, i32 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load %struct.hid_field**, %struct.hid_field*** %190, align 8
  %192 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %193 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 2
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %191, i64 %196
  %198 = load %struct.hid_field*, %struct.hid_field** %197, align 8
  store %struct.hid_field* %198, %struct.hid_field** %12, align 8
  %199 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %200 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %268

203:                                              ; preds = %174
  %204 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %205 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %204, i32 0, i32 7
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @HID_DG_TOOLSERIALNUMBER, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %268

212:                                              ; preds = %203
  %213 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %214 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 32
  br i1 %216, label %217, label %268

217:                                              ; preds = %212
  %218 = load %struct.hid_field*, %struct.hid_field** %12, align 8
  %219 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %268

222:                                              ; preds = %217
  %223 = load %struct.hid_field*, %struct.hid_field** %12, align 8
  %224 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %223, i32 0, i32 7
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 4278190080
  br i1 %229, label %230, label %268

230:                                              ; preds = %222
  %231 = load %struct.hid_field*, %struct.hid_field** %12, align 8
  %232 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 8
  br i1 %234, label %235, label %268

235:                                              ; preds = %230
  %236 = load i32, i32* @WACOM_QUIRK_AESPEN, align 4
  %237 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %238 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* @WACOM_HID_WD_TOOLTYPE, align 4
  %242 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %243 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = load i64, i64* @S16_MIN, align 8
  %245 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %246 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %245, i32 0, i32 6
  store i64 %244, i64* %246, align 8
  %247 = load i32, i32* @S16_MAX, align 4
  %248 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %249 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  %250 = load i64, i64* @S32_MIN, align 8
  %251 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %252 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %251, i32 0, i32 6
  store i64 %250, i64* %252, align 8
  %253 = load i32, i32* @S32_MAX, align 4
  %254 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %255 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %254, i32 0, i32 5
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* @WACOM_HID_WD_SERIALHI, align 4
  %257 = sext i32 %256 to i64
  %258 = load %struct.hid_field*, %struct.hid_field** %12, align 8
  %259 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %258, i32 0, i32 7
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  store i64 %257, i64* %262, align 8
  %263 = load %struct.hid_field*, %struct.hid_field** %12, align 8
  %264 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %263, i32 0, i32 6
  store i64 0, i64* %264, align 8
  %265 = load i32, i32* @U8_MAX, align 4
  %266 = load %struct.hid_field*, %struct.hid_field** %12, align 8
  %267 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %235, %230, %222, %217, %212, %203, %174
  br label %269

269:                                              ; preds = %268, %163, %158, %152
  %270 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %271 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @USB_VENDOR_ID_WACOM, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %291

275:                                              ; preds = %269
  %276 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %277 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = icmp eq i32 %278, 856
  br i1 %279, label %280, label %291

280:                                              ; preds = %275
  %281 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %282 = call i64 @WACOM_PEN_FIELD(%struct.hid_field* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* @HID_GD_Y, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %290 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %289, i32 0, i32 5
  store i32 43200, i32* %290, align 4
  br label %291

291:                                              ; preds = %288, %284, %280, %275, %269
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

declare dso_local i64 @WACOM_PEN_FIELD(%struct.hid_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
