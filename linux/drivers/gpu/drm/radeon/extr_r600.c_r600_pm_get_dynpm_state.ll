; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_pm_get_dynpm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_pm_get_dynpm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@RADEON_PM_STATE_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@RADEON_PM_MODE_NO_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Requested mode for not defined action\0A\00", align 1
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i64 0, align 8
@POWER_STATE_TYPE_BATTERY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Requested: e: %d m: %d p: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_pm_get_dynpm_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RADEON_IS_IGP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_R600, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %288

23:                                               ; preds = %17, %1
  store i32 0, i32* %4, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %285 [
    i32 130, label %35
    i32 131, label %46
    i32 128, label %181
    i32 132, label %270
    i32 129, label %284
  ]

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 8
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %287

46:                                               ; preds = %30
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  br label %142

64:                                               ; preds = %46
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %116

70:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %112, %70
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %115

78:                                               ; preds = %71
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 10
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @RADEON_PM_STATE_SINGLE_DISPLAY_ONLY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %112

92:                                               ; preds = %78
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %93, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 8
  br label %115

107:                                              ; preds = %92
  %108 = load i32, i32* %3, align 4
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  br label %115

112:                                              ; preds = %91
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %71

115:                                              ; preds = %107, %99, %71
  br label %141

116:                                              ; preds = %64
  %117 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  store i32 %127, i32* %130, align 8
  br label %140

131:                                              ; preds = %116
  %132 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  store i32 %136, i32* %139, align 8
  br label %140

140:                                              ; preds = %131, %122
  br label %141

141:                                              ; preds = %140, %115
  br label %142

142:                                              ; preds = %141, %53
  %143 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 5
  store i64 0, i64* %145, align 8
  %146 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %142
  %152 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 10
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @RADEON_PM_MODE_NO_DISPLAY, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %151
  %175 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %174, %151, %142
  br label %287

181:                                              ; preds = %30
  %182 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 1
  %191 = icmp eq i32 %185, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %181
  %193 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 4
  store i32 %196, i32* %199, align 8
  %200 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  br label %266

203:                                              ; preds = %181
  %204 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %205 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = icmp sgt i32 %207, 1
  br i1 %208, label %209, label %256

209:                                              ; preds = %203
  %210 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %252, %209
  %216 = load i32, i32* %3, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %255

218:                                              ; preds = %215
  %219 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 10
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = load i32, i32* %3, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @RADEON_PM_STATE_SINGLE_DISPLAY_ONLY, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %218
  br label %252

232:                                              ; preds = %218
  %233 = load i32, i32* %3, align 4
  %234 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %235 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = icmp sle i32 %233, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %232
  %240 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %245 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 4
  store i32 %243, i32* %246, align 8
  br label %255

247:                                              ; preds = %232
  %248 = load i32, i32* %3, align 4
  %249 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 4
  store i32 %248, i32* %251, align 8
  br label %255

252:                                              ; preds = %231
  %253 = load i32, i32* %3, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %3, align 4
  br label %215

255:                                              ; preds = %247, %239, %215
  br label %265

256:                                              ; preds = %203
  %257 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %258 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  %262 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %263 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 4
  store i32 %261, i32* %264, align 8
  br label %265

265:                                              ; preds = %256, %255
  br label %266

266:                                              ; preds = %265, %192
  %267 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %268 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 5
  store i64 0, i64* %269, align 8
  br label %287

270:                                              ; preds = %30
  %271 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %276 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 4
  store i32 %274, i32* %277, align 8
  %278 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %279 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 5
  store i64 0, i64* %280, align 8
  %281 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %282 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  store i32 0, i32* %283, align 8
  br label %287

284:                                              ; preds = %30
  br label %285

285:                                              ; preds = %30, %284
  %286 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %599

287:                                              ; preds = %270, %266, %180, %35
  br label %547

288:                                              ; preds = %17
  %289 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %290 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 4
  %293 = icmp sgt i32 %292, 1
  br i1 %293, label %294, label %364

294:                                              ; preds = %288
  %295 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %296 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 4
  store i32 -1, i32* %297, align 8
  store i32 1, i32* %3, align 4
  br label %298

298:                                              ; preds = %350, %294
  %299 = load i32, i32* %3, align 4
  %300 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %301 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %299, %303
  br i1 %304, label %305, label %353

305:                                              ; preds = %298
  %306 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %307 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 10
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %308, align 8
  %310 = load i32, i32* %3, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @RADEON_PM_STATE_SINGLE_DISPLAY_ONLY, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %305
  br label %350

319:                                              ; preds = %305
  %320 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %321 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 10
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %322, align 8
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @POWER_STATE_TYPE_PERFORMANCE, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %343, label %331

331:                                              ; preds = %319
  %332 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %333 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 10
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %334, align 8
  %336 = load i32, i32* %3, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @POWER_STATE_TYPE_BATTERY, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %331, %319
  %344 = load i32, i32* %3, align 4
  %345 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %346 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 4
  store i32 %344, i32* %347, align 8
  br label %353

348:                                              ; preds = %331
  br label %349

349:                                              ; preds = %348
  br label %350

350:                                              ; preds = %349, %318
  %351 = load i32, i32* %3, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %3, align 4
  br label %298

353:                                              ; preds = %343, %298
  %354 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %355 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %359, label %363

359:                                              ; preds = %353
  %360 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %361 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 4
  store i32 0, i32* %362, align 8
  br label %363

363:                                              ; preds = %359, %353
  br label %368

364:                                              ; preds = %288
  %365 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %366 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 4
  store i32 1, i32* %367, align 8
  br label %368

368:                                              ; preds = %364, %363
  %369 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %370 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  switch i32 %372, label %544 [
    i32 130, label %373
    i32 131, label %380
    i32 128, label %456
    i32 132, label %529
    i32 129, label %543
  ]

373:                                              ; preds = %368
  %374 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %375 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 5
  store i64 0, i64* %376, align 8
  %377 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %378 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 1
  store i32 0, i32* %379, align 4
  br label %546

380:                                              ; preds = %368
  %381 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %382 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %386 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %384, %388
  br i1 %389, label %390, label %413

390:                                              ; preds = %380
  %391 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %392 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 9
  %394 = load i64, i64* %393, align 8
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %390
  %397 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %398 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 5
  store i64 0, i64* %399, align 8
  %400 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %401 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 1
  store i32 0, i32* %402, align 4
  br label %412

403:                                              ; preds = %390
  %404 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %405 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 9
  %407 = load i64, i64* %406, align 8
  %408 = sub i64 %407, 1
  %409 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %410 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 5
  store i64 %408, i64* %411, align 8
  br label %412

412:                                              ; preds = %403, %396
  br label %420

413:                                              ; preds = %380
  %414 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %415 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 5
  store i64 0, i64* %416, align 8
  %417 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %418 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 1
  store i32 0, i32* %419, align 4
  br label %420

420:                                              ; preds = %413, %412
  %421 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %422 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 7
  %424 = load i32, i32* %423, align 4
  %425 = icmp sgt i32 %424, 0
  br i1 %425, label %426, label %455

426:                                              ; preds = %420
  %427 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %428 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %427, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 10
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** %429, align 8
  %431 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %432 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 3
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %437, align 8
  %439 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %440 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 5
  %442 = load i64, i64* %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @RADEON_PM_MODE_NO_DISPLAY, align 4
  %447 = and i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %426
  %450 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %451 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 5
  %453 = load i64, i64* %452, align 8
  %454 = add i64 %453, 1
  store i64 %454, i64* %452, align 8
  br label %455

455:                                              ; preds = %449, %426, %420
  br label %546

456:                                              ; preds = %368
  %457 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %458 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %462 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 6
  %464 = load i32, i32* %463, align 8
  %465 = icmp eq i32 %460, %464
  br i1 %465, label %466, label %507

466:                                              ; preds = %456
  %467 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %468 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 9
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %472 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 10
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** %473, align 8
  %475 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %476 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %475, i32 0, i32 2
  %477 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i32 0, i32 4
  %478 = load i32, i32* %477, align 8
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 8
  %483 = sub nsw i32 %482, 1
  %484 = sext i32 %483 to i64
  %485 = icmp eq i64 %470, %484
  br i1 %485, label %486, label %497

486:                                              ; preds = %466
  %487 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %488 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %487, i32 0, i32 2
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 9
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %492 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 5
  store i64 %490, i64* %493, align 8
  %494 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %495 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %494, i32 0, i32 2
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 0
  store i32 0, i32* %496, align 8
  br label %506

497:                                              ; preds = %466
  %498 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %499 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 9
  %501 = load i64, i64* %500, align 8
  %502 = add i64 %501, 1
  %503 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %504 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %504, i32 0, i32 5
  store i64 %502, i64* %505, align 8
  br label %506

506:                                              ; preds = %497, %486
  br label %528

507:                                              ; preds = %456
  %508 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %509 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 10
  %511 = load %struct.TYPE_5__*, %struct.TYPE_5__** %510, align 8
  %512 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %513 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 8
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i64 %516
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 4
  %519 = load i32, i32* %518, align 8
  %520 = sub nsw i32 %519, 1
  %521 = sext i32 %520 to i64
  %522 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %523 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i32 0, i32 5
  store i64 %521, i64* %524, align 8
  %525 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %526 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 0
  store i32 0, i32* %527, align 8
  br label %528

528:                                              ; preds = %507, %506
  br label %546

529:                                              ; preds = %368
  %530 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %531 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %531, i32 0, i32 8
  %533 = load i32, i32* %532, align 8
  %534 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %535 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %535, i32 0, i32 4
  store i32 %533, i32* %536, align 8
  %537 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %538 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %538, i32 0, i32 5
  store i64 0, i64* %539, align 8
  %540 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %541 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %540, i32 0, i32 2
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i32 0, i32 0
  store i32 0, i32* %542, align 8
  br label %546

543:                                              ; preds = %368
  br label %544

544:                                              ; preds = %368, %543
  %545 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %599

546:                                              ; preds = %529, %528, %455, %373
  br label %547

547:                                              ; preds = %546, %287
  %548 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %549 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 10
  %551 = load %struct.TYPE_5__*, %struct.TYPE_5__** %550, align 8
  %552 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %553 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %552, i32 0, i32 2
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 4
  %555 = load i32, i32* %554, align 8
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %551, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %557, i32 0, i32 3
  %559 = load %struct.TYPE_4__*, %struct.TYPE_4__** %558, align 8
  %560 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %561 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %561, i32 0, i32 5
  %563 = load i64, i64* %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %559, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %568 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %567, i32 0, i32 2
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %568, i32 0, i32 10
  %570 = load %struct.TYPE_5__*, %struct.TYPE_5__** %569, align 8
  %571 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %572 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %572, i32 0, i32 4
  %574 = load i32, i32* %573, align 8
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %570, i64 %575
  %577 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %576, i32 0, i32 3
  %578 = load %struct.TYPE_4__*, %struct.TYPE_4__** %577, align 8
  %579 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %580 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %579, i32 0, i32 2
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %580, i32 0, i32 5
  %582 = load i64, i64* %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %578, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %587 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %587, i32 0, i32 10
  %589 = load %struct.TYPE_5__*, %struct.TYPE_5__** %588, align 8
  %590 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %591 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %590, i32 0, i32 2
  %592 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %591, i32 0, i32 4
  %593 = load i32, i32* %592, align 8
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 8
  %598 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %566, i32 %585, i32 %597)
  br label %599

599:                                              ; preds = %547, %544, %285
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
