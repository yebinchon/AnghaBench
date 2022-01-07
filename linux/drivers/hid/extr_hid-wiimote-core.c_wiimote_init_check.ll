; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@WIIMOTE_EXT_NONE = common dso_local global i64 0, align 8
@WIIPROTO_FLAG_MP_USED = common dso_local global i32 0, align 4
@WIIMOTE_MP_SINGLE = common dso_local global i64 0, align 8
@WIIPROTO_FLAG_EXT_ACTIVE = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_MP_PLUGGED = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_MP_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"state left: !EXT && MP\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"state left: EXT && !MP\0A\00", align 1
@WIIPROTO_FLAG_EXT_PLUGGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"state left: !EXT && !MP\0A\00", align 1
@WIIMOTE_MP_NONE = common dso_local global i64 0, align 8
@WIIMOTE_MP_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"state left: EXT && MP\0A\00", align 1
@WIIPROTO_FLAG_BUILTIN_MP = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_NO_MP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimote_data*)* @wiimote_init_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_init_check(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [6 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %8 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %9 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %17 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %21 = call i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data* %20)
  %22 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %23 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WIIMOTE_EXT_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %103

28:                                               ; preds = %1
  %29 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %30 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @WIIPROTO_FLAG_MP_USED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %103

39:                                               ; preds = %34
  %40 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %41 = call i64 @wiimote_cmd_read_mp_mapped(%struct.wiimote_data* %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @WIIMOTE_MP_SINGLE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %47 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %54 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %52, %39
  %62 = phi i1 [ false, %39 ], [ %60, %52 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %68 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WIIPROTO_FLAG_MP_PLUGGED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %66, %61
  %76 = phi i1 [ false, %61 ], [ %74, %66 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %82 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %80, %75
  %89 = phi i1 [ false, %75 ], [ %87, %80 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %6, align 4
  %91 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %92 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = call i32 @spin_unlock_irq(i32* %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %88
  %98 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %99 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @hid_dbg(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %88
  store i32 0, i32* %7, align 4
  br label %349

103:                                              ; preds = %34, %28, %1
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @WIIPROTO_FLAG_MP_USED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %169, label %108

108:                                              ; preds = %103
  %109 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %110 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @WIIMOTE_EXT_NONE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %169

115:                                              ; preds = %108
  %116 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %117 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 0
  %118 = call i64 @wiimote_cmd_read_ext(%struct.wiimote_data* %116, i64* %117)
  store i64 %118, i64* %4, align 8
  %119 = load i64, i64* %4, align 8
  %120 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %121 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %119, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %6, align 4
  %126 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %127 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  %129 = call i32 @spin_lock_irq(i32* %128)
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %115
  %133 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %134 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br label %141

141:                                              ; preds = %132, %115
  %142 = phi i1 [ false, %115 ], [ %140, %132 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %148 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %146, %141
  %155 = phi i1 [ false, %141 ], [ %153, %146 ]
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %6, align 4
  %157 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %158 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  %160 = call i32 @spin_unlock_irq(i32* %159)
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %154
  %164 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %165 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @hid_dbg(i32 %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %163, %154
  store i32 1, i32* %7, align 4
  br label %349

169:                                              ; preds = %108, %103
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @WIIPROTO_FLAG_MP_USED, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %250, label %174

174:                                              ; preds = %169
  %175 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %176 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @WIIMOTE_EXT_NONE, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %250

181:                                              ; preds = %174
  %182 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %183 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 0
  %184 = call i64 @wiimote_cmd_read_ext(%struct.wiimote_data* %182, i64* %183)
  store i64 %184, i64* %4, align 8
  %185 = load i64, i64* %4, align 8
  %186 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %187 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %185, %189
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %6, align 4
  %192 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %193 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 3
  %195 = call i32 @spin_lock_irq(i32* %194)
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %181
  %199 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %200 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  br label %207

207:                                              ; preds = %198, %181
  %208 = phi i1 [ false, %181 ], [ %206, %198 ]
  %209 = zext i1 %208 to i32
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %214 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  br label %221

221:                                              ; preds = %212, %207
  %222 = phi i1 [ false, %207 ], [ %220, %212 ]
  %223 = zext i1 %222 to i32
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %228 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  br label %235

235:                                              ; preds = %226, %221
  %236 = phi i1 [ false, %221 ], [ %234, %226 ]
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %6, align 4
  %238 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %239 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 3
  %241 = call i32 @spin_unlock_irq(i32* %240)
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %235
  %245 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %246 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @hid_dbg(i32 %247, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %249

249:                                              ; preds = %244, %235
  store i32 1, i32* %7, align 4
  br label %349

250:                                              ; preds = %174, %169
  %251 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %252 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @WIIMOTE_EXT_NONE, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %348

257:                                              ; preds = %250
  %258 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %259 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %348

263:                                              ; preds = %257
  %264 = load i32, i32* %3, align 4
  %265 = load i32, i32* @WIIPROTO_FLAG_MP_USED, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %348

268:                                              ; preds = %263
  %269 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %270 = call i64 @wiimote_cmd_read_mp_mapped(%struct.wiimote_data* %269)
  store i64 %270, i64* %4, align 8
  %271 = load i64, i64* %4, align 8
  %272 = load i64, i64* @WIIMOTE_MP_NONE, align 8
  %273 = icmp ne i64 %271, %272
  %274 = zext i1 %273 to i32
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %268
  %278 = load i64, i64* %4, align 8
  %279 = load i64, i64* @WIIMOTE_MP_UNKNOWN, align 8
  %280 = icmp ne i64 %278, %279
  br label %281

281:                                              ; preds = %277, %268
  %282 = phi i1 [ false, %268 ], [ %280, %277 ]
  %283 = zext i1 %282 to i32
  store i32 %283, i32* %6, align 4
  %284 = load i32, i32* %6, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load i64, i64* %4, align 8
  %288 = load i64, i64* @WIIMOTE_MP_SINGLE, align 8
  %289 = icmp ne i64 %287, %288
  br label %290

290:                                              ; preds = %286, %281
  %291 = phi i1 [ false, %281 ], [ %289, %286 ]
  %292 = zext i1 %291 to i32
  store i32 %292, i32* %6, align 4
  %293 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %294 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 3
  %296 = call i32 @spin_lock_irq(i32* %295)
  %297 = load i32, i32* %6, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %290
  %300 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %301 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br label %307

307:                                              ; preds = %299, %290
  %308 = phi i1 [ false, %290 ], [ %306, %299 ]
  %309 = zext i1 %308 to i32
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* %6, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %307
  %313 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %314 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br label %320

320:                                              ; preds = %312, %307
  %321 = phi i1 [ false, %307 ], [ %319, %312 ]
  %322 = zext i1 %321 to i32
  store i32 %322, i32* %6, align 4
  %323 = load i32, i32* %6, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %320
  %326 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %327 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br label %333

333:                                              ; preds = %325, %320
  %334 = phi i1 [ false, %320 ], [ %332, %325 ]
  %335 = zext i1 %334 to i32
  store i32 %335, i32* %6, align 4
  %336 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %337 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 3
  %339 = call i32 @spin_unlock_irq(i32* %338)
  %340 = load i32, i32* %6, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %333
  %343 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %344 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @hid_dbg(i32 %345, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %347

347:                                              ; preds = %342, %333
  store i32 0, i32* %7, align 4
  br label %349

348:                                              ; preds = %263, %257, %250
  store i32 0, i32* %6, align 4
  br label %349

349:                                              ; preds = %348, %347, %249, %168, %102
  %350 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %351 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %350)
  %352 = load i32, i32* %6, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %370

354:                                              ; preds = %349
  %355 = load i32, i32* %7, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %370

357:                                              ; preds = %354
  %358 = load i32, i32* %3, align 4
  %359 = load i32, i32* @WIIPROTO_FLAG_BUILTIN_MP, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %357
  %363 = load i32, i32* %3, align 4
  %364 = load i32, i32* @WIIPROTO_FLAG_NO_MP, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %362
  %368 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %369 = call i32 @wiimote_init_poll_mp(%struct.wiimote_data* %368)
  br label %370

370:                                              ; preds = %367, %362, %357, %354, %349
  %371 = load i32, i32* %6, align 4
  ret i32 %371
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data*) #1

declare dso_local i64 @wiimote_cmd_read_mp_mapped(%struct.wiimote_data*) #1

declare dso_local i32 @hid_dbg(i32, i8*) #1

declare dso_local i64 @wiimote_cmd_read_ext(%struct.wiimote_data*, i64*) #1

declare dso_local i32 @wiimote_cmd_release(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_init_poll_mp(%struct.wiimote_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
