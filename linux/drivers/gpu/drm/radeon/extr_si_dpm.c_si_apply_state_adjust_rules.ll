; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.radeon_clock_and_voltage_limits, i32, i32, i32, i32, %struct.radeon_clock_and_voltage_limits }
%struct.radeon_clock_and_voltage_limits = type { i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.radeon_ps = type { i64, i64, i64, i64, i64 }
%struct.ni_ps = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i64 }

@CHIP_HAINAN = common dso_local global i64 0, align 8
@CHIP_OLAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @si_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_apply_state_adjust_rules(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.ni_ps*, align 8
  %6 = alloca %struct.radeon_clock_and_voltage_limits*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %21 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %20)
  store %struct.ni_ps* %21, %struct.ni_ps** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_HAINAN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %2
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 129
  br i1 %33, label %69, label %34

34:                                               ; preds = %27
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %69, label %41

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 195
  br i1 %47, label %69, label %48

48:                                               ; preds = %41
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 26212
  br i1 %54, label %69, label %55

55:                                               ; preds = %48
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 3
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 26213
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 26215
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %55, %48, %41, %34, %27
  store i32 75000, i32* %17, align 4
  br label %70

70:                                               ; preds = %69, %62
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 195
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 26213
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %70
  store i32 60000, i32* %17, align 4
  store i32 80000, i32* %18, align 4
  br label %85

85:                                               ; preds = %84, %77
  br label %144

86:                                               ; preds = %2
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CHIP_OLAND, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %143

92:                                               ; preds = %86
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 199
  br i1 %98, label %141, label %99

99:                                               ; preds = %92
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 3
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 128
  br i1 %105, label %141, label %106

106:                                              ; preds = %99
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 3
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 129
  br i1 %112, label %141, label %113

113:                                              ; preds = %106
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 3
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 131
  br i1 %119, label %141, label %120

120:                                              ; preds = %113
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 135
  br i1 %126, label %141, label %127

127:                                              ; preds = %120
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 26116
  br i1 %133, label %141, label %134

134:                                              ; preds = %127
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 26117
  br i1 %140, label %141, label %142

141:                                              ; preds = %134, %127, %120, %113, %106, %99, %92
  store i32 75000, i32* %17, align 4
  br label %142

142:                                              ; preds = %141, %134
  br label %143

143:                                              ; preds = %142, %86
  br label %144

144:                                              ; preds = %143, %85
  %145 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %146 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %188

149:                                              ; preds = %144
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %164 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %163, i32 0, i32 4
  store i64 %162, i64* %164, align 8
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %179 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %182 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %185 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @si_get_vce_clock_voltage(%struct.radeon_device* %180, i64 %183, i64 %186, i64* %13)
  br label %193

188:                                              ; preds = %144
  %189 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %190 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %189, i32 0, i32 4
  store i64 0, i64* %190, align 8
  %191 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %192 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %188, %149
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 1
  br i1 %199, label %204, label %200

200:                                              ; preds = %193
  %201 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %202 = call i64 @ni_dpm_vblank_too_short(%struct.radeon_device* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200, %193
  store i32 1, i32* %7, align 4
  br label %205

205:                                              ; preds = %204, %200
  %206 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %207 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %212 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210, %205
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %216

216:                                              ; preds = %215, %210
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 5
  store %struct.radeon_clock_and_voltage_limits* %228, %struct.radeon_clock_and_voltage_limits** %6, align 8
  br label %235

229:                                              ; preds = %216
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  store %struct.radeon_clock_and_voltage_limits* %234, %struct.radeon_clock_and_voltage_limits** %6, align 8
  br label %235

235:                                              ; preds = %229, %223
  %236 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %237 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %238, 2
  store i32 %239, i32* %19, align 4
  br label %240

240:                                              ; preds = %280, %235
  %241 = load i32, i32* %19, align 4
  %242 = icmp sge i32 %241, 0
  br i1 %242, label %243, label %283

243:                                              ; preds = %240
  %244 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %245 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %244, i32 0, i32 2
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = load i32, i32* %19, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %253 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %252, i32 0, i32 2
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %253, align 8
  %255 = load i32, i32* %19, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp sgt i64 %251, %260
  br i1 %261, label %262, label %279

262:                                              ; preds = %243
  %263 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %264 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %263, i32 0, i32 2
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %264, align 8
  %266 = load i32, i32* %19, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %273 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %272, i32 0, i32 2
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %273, align 8
  %275 = load i32, i32* %19, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  store i64 %271, i64* %278, align 8
  br label %279

279:                                              ; preds = %262, %243
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %19, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %19, align 4
  br label %240

283:                                              ; preds = %240
  %284 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %398

290:                                              ; preds = %283
  store i32 0, i32* %19, align 4
  br label %291

291:                                              ; preds = %394, %290
  %292 = load i32, i32* %19, align 4
  %293 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %294 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %397

297:                                              ; preds = %291
  %298 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %299 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %298, i32 0, i32 2
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %299, align 8
  %301 = load i32, i32* %19, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %307 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp sgt i32 %305, %308
  br i1 %309, label %310, label %321

310:                                              ; preds = %297
  %311 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %312 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %315 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %314, i32 0, i32 2
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %315, align 8
  %317 = load i32, i32* %19, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 1
  store i32 %313, i32* %320, align 8
  br label %321

321:                                              ; preds = %310, %297
  %322 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %323 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %322, i32 0, i32 2
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %323, align 8
  %325 = load i32, i32* %19, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %331 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp sgt i32 %329, %332
  br i1 %333, label %334, label %345

334:                                              ; preds = %321
  %335 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %336 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %339 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %338, i32 0, i32 2
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %339, align 8
  %341 = load i32, i32* %19, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 2
  store i32 %337, i32* %344, align 4
  br label %345

345:                                              ; preds = %334, %321
  %346 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %347 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %346, i32 0, i32 2
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %347, align 8
  %349 = load i32, i32* %19, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %355 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = icmp sgt i64 %353, %356
  br i1 %357, label %358, label %369

358:                                              ; preds = %345
  %359 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %360 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %363 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %362, i32 0, i32 2
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %363, align 8
  %365 = load i32, i32* %19, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  store i64 %361, i64* %368, align 8
  br label %369

369:                                              ; preds = %358, %345
  %370 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %371 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %370, i32 0, i32 2
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %371, align 8
  %373 = load i32, i32* %19, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %379 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = icmp sgt i64 %377, %380
  br i1 %381, label %382, label %393

382:                                              ; preds = %369
  %383 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %384 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %387 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %386, i32 0, i32 2
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %387, align 8
  %389 = load i32, i32* %19, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 3
  store i64 %385, i64* %392, align 8
  br label %393

393:                                              ; preds = %382, %369
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %19, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %19, align 4
  br label %291

397:                                              ; preds = %291
  br label %398

398:                                              ; preds = %397, %283
  %399 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %400 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 4
  %404 = call i32 @btc_get_max_clock_from_voltage_dependency_table(i32* %403, i32* %14)
  %405 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %406 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 3
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 3
  %410 = call i32 @btc_get_max_clock_from_voltage_dependency_table(i32* %409, i32* %15)
  %411 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %412 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 3
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 2
  %416 = call i32 @btc_get_max_clock_from_voltage_dependency_table(i32* %415, i32* %16)
  store i32 0, i32* %19, align 4
  br label %417

417:                                              ; preds = %544, %398
  %418 = load i32, i32* %19, align 4
  %419 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %420 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = icmp slt i32 %418, %421
  br i1 %422, label %423, label %547

423:                                              ; preds = %417
  %424 = load i32, i32* %14, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %447

426:                                              ; preds = %423
  %427 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %428 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %427, i32 0, i32 2
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %428, align 8
  %430 = load i32, i32* %19, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %14, align 4
  %436 = icmp sgt i32 %434, %435
  br i1 %436, label %437, label %446

437:                                              ; preds = %426
  %438 = load i32, i32* %14, align 4
  %439 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %440 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %439, i32 0, i32 2
  %441 = load %struct.TYPE_14__*, %struct.TYPE_14__** %440, align 8
  %442 = load i32, i32* %19, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 2
  store i32 %438, i32* %445, align 4
  br label %446

446:                                              ; preds = %437, %426
  br label %447

447:                                              ; preds = %446, %423
  %448 = load i32, i32* %15, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %471

450:                                              ; preds = %447
  %451 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %452 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %451, i32 0, i32 2
  %453 = load %struct.TYPE_14__*, %struct.TYPE_14__** %452, align 8
  %454 = load i32, i32* %19, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* %15, align 4
  %460 = icmp sgt i32 %458, %459
  br i1 %460, label %461, label %470

461:                                              ; preds = %450
  %462 = load i32, i32* %15, align 4
  %463 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %464 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %463, i32 0, i32 2
  %465 = load %struct.TYPE_14__*, %struct.TYPE_14__** %464, align 8
  %466 = load i32, i32* %19, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 1
  store i32 %462, i32* %469, align 8
  br label %470

470:                                              ; preds = %461, %450
  br label %471

471:                                              ; preds = %470, %447
  %472 = load i32, i32* %16, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %495

474:                                              ; preds = %471
  %475 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %476 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %475, i32 0, i32 2
  %477 = load %struct.TYPE_14__*, %struct.TYPE_14__** %476, align 8
  %478 = load i32, i32* %19, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* %16, align 4
  %484 = icmp sgt i32 %482, %483
  br i1 %484, label %485, label %494

485:                                              ; preds = %474
  %486 = load i32, i32* %16, align 4
  %487 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %488 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %487, i32 0, i32 2
  %489 = load %struct.TYPE_14__*, %struct.TYPE_14__** %488, align 8
  %490 = load i32, i32* %19, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i32 0, i32 1
  store i32 %486, i32* %493, align 8
  br label %494

494:                                              ; preds = %485, %474
  br label %495

495:                                              ; preds = %494, %471
  %496 = load i32, i32* %18, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %519

498:                                              ; preds = %495
  %499 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %500 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %499, i32 0, i32 2
  %501 = load %struct.TYPE_14__*, %struct.TYPE_14__** %500, align 8
  %502 = load i32, i32* %19, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* %18, align 4
  %508 = icmp sgt i32 %506, %507
  br i1 %508, label %509, label %518

509:                                              ; preds = %498
  %510 = load i32, i32* %18, align 4
  %511 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %512 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %511, i32 0, i32 2
  %513 = load %struct.TYPE_14__*, %struct.TYPE_14__** %512, align 8
  %514 = load i32, i32* %19, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %516, i32 0, i32 1
  store i32 %510, i32* %517, align 8
  br label %518

518:                                              ; preds = %509, %498
  br label %519

519:                                              ; preds = %518, %495
  %520 = load i32, i32* %17, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %543

522:                                              ; preds = %519
  %523 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %524 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %523, i32 0, i32 2
  %525 = load %struct.TYPE_14__*, %struct.TYPE_14__** %524, align 8
  %526 = load i32, i32* %19, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %525, i64 %527
  %529 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 4
  %531 = load i32, i32* %17, align 4
  %532 = icmp sgt i32 %530, %531
  br i1 %532, label %533, label %542

533:                                              ; preds = %522
  %534 = load i32, i32* %17, align 4
  %535 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %536 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %535, i32 0, i32 2
  %537 = load %struct.TYPE_14__*, %struct.TYPE_14__** %536, align 8
  %538 = load i32, i32* %19, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %537, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %540, i32 0, i32 2
  store i32 %534, i32* %541, align 4
  br label %542

542:                                              ; preds = %533, %522
  br label %543

543:                                              ; preds = %542, %519
  br label %544

544:                                              ; preds = %543
  %545 = load i32, i32* %19, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %19, align 4
  br label %417

547:                                              ; preds = %417
  %548 = load i32, i32* %7, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %573

550:                                              ; preds = %547
  %551 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %552 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %551, i32 0, i32 2
  %553 = load %struct.TYPE_14__*, %struct.TYPE_14__** %552, align 8
  %554 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %555 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = sub nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %553, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 8
  store i32 %561, i32* %9, align 4
  %562 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %563 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %562, i32 0, i32 2
  %564 = load %struct.TYPE_14__*, %struct.TYPE_14__** %563, align 8
  %565 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %566 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = sub nsw i32 %567, 1
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %564, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %570, i32 0, i32 3
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %12, align 8
  br label %586

573:                                              ; preds = %547
  %574 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %575 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %574, i32 0, i32 2
  %576 = load %struct.TYPE_14__*, %struct.TYPE_14__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %576, i64 0
  %578 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 8
  store i32 %579, i32* %9, align 4
  %580 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %581 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %580, i32 0, i32 2
  %582 = load %struct.TYPE_14__*, %struct.TYPE_14__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %582, i64 0
  %584 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %583, i32 0, i32 3
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %12, align 8
  br label %586

586:                                              ; preds = %573, %550
  %587 = load i32, i32* %8, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %612

589:                                              ; preds = %586
  %590 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %591 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %590, i32 0, i32 2
  %592 = load %struct.TYPE_14__*, %struct.TYPE_14__** %591, align 8
  %593 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %594 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = sub nsw i32 %595, 1
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %592, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %598, i32 0, i32 2
  %600 = load i32, i32* %599, align 4
  store i32 %600, i32* %10, align 4
  %601 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %602 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %601, i32 0, i32 2
  %603 = load %struct.TYPE_14__*, %struct.TYPE_14__** %602, align 8
  %604 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %605 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  %607 = sub nsw i32 %606, 1
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %603, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %609, i32 0, i32 0
  %611 = load i64, i64* %610, align 8
  store i64 %611, i64* %11, align 8
  br label %625

612:                                              ; preds = %586
  %613 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %614 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %613, i32 0, i32 2
  %615 = load %struct.TYPE_14__*, %struct.TYPE_14__** %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %615, i64 0
  %617 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %616, i32 0, i32 2
  %618 = load i32, i32* %617, align 4
  store i32 %618, i32* %10, align 4
  %619 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %620 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %619, i32 0, i32 2
  %621 = load %struct.TYPE_14__*, %struct.TYPE_14__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %621, i64 0
  %623 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %622, i32 0, i32 0
  %624 = load i64, i64* %623, align 8
  store i64 %624, i64* %11, align 8
  br label %625

625:                                              ; preds = %612, %589
  %626 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %627 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %626, i32 0, i32 0
  %628 = load i64, i64* %627, align 8
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %691

630:                                              ; preds = %625
  %631 = load i32, i32* %10, align 4
  %632 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %633 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %634, i32 0, i32 4
  %636 = load %struct.TYPE_9__*, %struct.TYPE_9__** %635, align 8
  %637 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %638 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %638, i32 0, i32 0
  %640 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %639, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %636, i64 %641
  %643 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = icmp slt i32 %631, %644
  br i1 %645, label %646, label %660

646:                                              ; preds = %630
  %647 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %648 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %647, i32 0, i32 1
  %649 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %649, i32 0, i32 4
  %651 = load %struct.TYPE_9__*, %struct.TYPE_9__** %650, align 8
  %652 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %653 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %653, i32 0, i32 0
  %655 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %654, i32 0, i32 0
  %656 = load i64, i64* %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %651, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  store i32 %659, i32* %10, align 4
  br label %660

660:                                              ; preds = %646, %630
  %661 = load i32, i32* %9, align 4
  %662 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %663 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %662, i32 0, i32 1
  %664 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %663, i32 0, i32 0
  %665 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %664, i32 0, i32 4
  %666 = load %struct.TYPE_9__*, %struct.TYPE_9__** %665, align 8
  %667 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %668 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %667, i32 0, i32 1
  %669 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %668, i32 0, i32 0
  %670 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %669, i32 0, i32 0
  %671 = load i64, i64* %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %666, i64 %671
  %673 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = icmp slt i32 %661, %674
  br i1 %675, label %676, label %690

676:                                              ; preds = %660
  %677 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %678 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %677, i32 0, i32 1
  %679 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %678, i32 0, i32 0
  %680 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %679, i32 0, i32 4
  %681 = load %struct.TYPE_9__*, %struct.TYPE_9__** %680, align 8
  %682 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %683 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %683, i32 0, i32 0
  %685 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %684, i32 0, i32 0
  %686 = load i64, i64* %685, align 8
  %687 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %681, i64 %686
  %688 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %687, i32 0, i32 1
  %689 = load i32, i32* %688, align 4
  store i32 %689, i32* %9, align 4
  br label %690

690:                                              ; preds = %676, %660
  br label %691

691:                                              ; preds = %690, %625
  %692 = load i32, i32* %10, align 4
  %693 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %694 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %693, i32 0, i32 2
  %695 = load %struct.TYPE_14__*, %struct.TYPE_14__** %694, align 8
  %696 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %695, i64 0
  %697 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %696, i32 0, i32 2
  store i32 %692, i32* %697, align 4
  %698 = load i32, i32* %9, align 4
  %699 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %700 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %699, i32 0, i32 2
  %701 = load %struct.TYPE_14__*, %struct.TYPE_14__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %701, i64 0
  %703 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %702, i32 0, i32 1
  store i32 %698, i32* %703, align 8
  %704 = load i64, i64* %11, align 8
  %705 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %706 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %705, i32 0, i32 2
  %707 = load %struct.TYPE_14__*, %struct.TYPE_14__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %707, i64 0
  %709 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %708, i32 0, i32 0
  store i64 %704, i64* %709, align 8
  %710 = load i64, i64* %12, align 8
  %711 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %712 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %711, i32 0, i32 2
  %713 = load %struct.TYPE_14__*, %struct.TYPE_14__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %713, i64 0
  %715 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %714, i32 0, i32 3
  store i64 %710, i64* %715, align 8
  %716 = load i32, i32* %8, align 4
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %783

718:                                              ; preds = %691
  %719 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %720 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %719, i32 0, i32 2
  %721 = load %struct.TYPE_14__*, %struct.TYPE_14__** %720, align 8
  %722 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %721, i64 0
  %723 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %722, i32 0, i32 2
  %724 = load i32, i32* %723, align 4
  store i32 %724, i32* %10, align 4
  store i32 1, i32* %19, align 4
  br label %725

725:                                              ; preds = %752, %718
  %726 = load i32, i32* %19, align 4
  %727 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %728 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 8
  %730 = icmp slt i32 %726, %729
  br i1 %730, label %731, label %755

731:                                              ; preds = %725
  %732 = load i32, i32* %10, align 4
  %733 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %734 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %733, i32 0, i32 2
  %735 = load %struct.TYPE_14__*, %struct.TYPE_14__** %734, align 8
  %736 = load i32, i32* %19, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %735, i64 %737
  %739 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %738, i32 0, i32 2
  %740 = load i32, i32* %739, align 4
  %741 = icmp slt i32 %732, %740
  br i1 %741, label %742, label %751

742:                                              ; preds = %731
  %743 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %744 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %743, i32 0, i32 2
  %745 = load %struct.TYPE_14__*, %struct.TYPE_14__** %744, align 8
  %746 = load i32, i32* %19, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %745, i64 %747
  %749 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %748, i32 0, i32 2
  %750 = load i32, i32* %749, align 4
  store i32 %750, i32* %10, align 4
  br label %751

751:                                              ; preds = %742, %731
  br label %752

752:                                              ; preds = %751
  %753 = load i32, i32* %19, align 4
  %754 = add nsw i32 %753, 1
  store i32 %754, i32* %19, align 4
  br label %725

755:                                              ; preds = %725
  store i32 0, i32* %19, align 4
  br label %756

756:                                              ; preds = %779, %755
  %757 = load i32, i32* %19, align 4
  %758 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %759 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 8
  %761 = icmp slt i32 %757, %760
  br i1 %761, label %762, label %782

762:                                              ; preds = %756
  %763 = load i32, i32* %10, align 4
  %764 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %765 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %764, i32 0, i32 2
  %766 = load %struct.TYPE_14__*, %struct.TYPE_14__** %765, align 8
  %767 = load i32, i32* %19, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %766, i64 %768
  %770 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %769, i32 0, i32 2
  store i32 %763, i32* %770, align 4
  %771 = load i64, i64* %11, align 8
  %772 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %773 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %772, i32 0, i32 2
  %774 = load %struct.TYPE_14__*, %struct.TYPE_14__** %773, align 8
  %775 = load i32, i32* %19, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %774, i64 %776
  %778 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %777, i32 0, i32 0
  store i64 %771, i64* %778, align 8
  br label %779

779:                                              ; preds = %762
  %780 = load i32, i32* %19, align 4
  %781 = add nsw i32 %780, 1
  store i32 %781, i32* %19, align 4
  br label %756

782:                                              ; preds = %756
  br label %867

783:                                              ; preds = %691
  store i32 1, i32* %19, align 4
  br label %784

784:                                              ; preds = %863, %783
  %785 = load i32, i32* %19, align 4
  %786 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %787 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 8
  %789 = icmp slt i32 %785, %788
  br i1 %789, label %790, label %866

790:                                              ; preds = %784
  %791 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %792 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %791, i32 0, i32 2
  %793 = load %struct.TYPE_14__*, %struct.TYPE_14__** %792, align 8
  %794 = load i32, i32* %19, align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %793, i64 %795
  %797 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %796, i32 0, i32 2
  %798 = load i32, i32* %797, align 4
  %799 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %800 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %799, i32 0, i32 2
  %801 = load %struct.TYPE_14__*, %struct.TYPE_14__** %800, align 8
  %802 = load i32, i32* %19, align 4
  %803 = sub nsw i32 %802, 1
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %801, i64 %804
  %806 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %805, i32 0, i32 2
  %807 = load i32, i32* %806, align 4
  %808 = icmp slt i32 %798, %807
  br i1 %808, label %809, label %826

809:                                              ; preds = %790
  %810 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %811 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %810, i32 0, i32 2
  %812 = load %struct.TYPE_14__*, %struct.TYPE_14__** %811, align 8
  %813 = load i32, i32* %19, align 4
  %814 = sub nsw i32 %813, 1
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %812, i64 %815
  %817 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %816, i32 0, i32 2
  %818 = load i32, i32* %817, align 4
  %819 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %820 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %819, i32 0, i32 2
  %821 = load %struct.TYPE_14__*, %struct.TYPE_14__** %820, align 8
  %822 = load i32, i32* %19, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %821, i64 %823
  %825 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %824, i32 0, i32 2
  store i32 %818, i32* %825, align 4
  br label %826

826:                                              ; preds = %809, %790
  %827 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %828 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %827, i32 0, i32 2
  %829 = load %struct.TYPE_14__*, %struct.TYPE_14__** %828, align 8
  %830 = load i32, i32* %19, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %829, i64 %831
  %833 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %832, i32 0, i32 0
  %834 = load i64, i64* %833, align 8
  %835 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %836 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %835, i32 0, i32 2
  %837 = load %struct.TYPE_14__*, %struct.TYPE_14__** %836, align 8
  %838 = load i32, i32* %19, align 4
  %839 = sub nsw i32 %838, 1
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %837, i64 %840
  %842 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %841, i32 0, i32 0
  %843 = load i64, i64* %842, align 8
  %844 = icmp slt i64 %834, %843
  br i1 %844, label %845, label %862

845:                                              ; preds = %826
  %846 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %847 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %846, i32 0, i32 2
  %848 = load %struct.TYPE_14__*, %struct.TYPE_14__** %847, align 8
  %849 = load i32, i32* %19, align 4
  %850 = sub nsw i32 %849, 1
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %848, i64 %851
  %853 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %852, i32 0, i32 0
  %854 = load i64, i64* %853, align 8
  %855 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %856 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %855, i32 0, i32 2
  %857 = load %struct.TYPE_14__*, %struct.TYPE_14__** %856, align 8
  %858 = load i32, i32* %19, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %857, i64 %859
  %861 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %860, i32 0, i32 0
  store i64 %854, i64* %861, align 8
  br label %862

862:                                              ; preds = %845, %826
  br label %863

863:                                              ; preds = %862
  %864 = load i32, i32* %19, align 4
  %865 = add nsw i32 %864, 1
  store i32 %865, i32* %19, align 4
  br label %784

866:                                              ; preds = %784
  br label %867

867:                                              ; preds = %866, %782
  %868 = load i32, i32* %7, align 4
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %870, label %935

870:                                              ; preds = %867
  %871 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %872 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %871, i32 0, i32 2
  %873 = load %struct.TYPE_14__*, %struct.TYPE_14__** %872, align 8
  %874 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %873, i64 0
  %875 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %874, i32 0, i32 1
  %876 = load i32, i32* %875, align 8
  store i32 %876, i32* %9, align 4
  store i32 1, i32* %19, align 4
  br label %877

877:                                              ; preds = %904, %870
  %878 = load i32, i32* %19, align 4
  %879 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %880 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %879, i32 0, i32 0
  %881 = load i32, i32* %880, align 8
  %882 = icmp slt i32 %878, %881
  br i1 %882, label %883, label %907

883:                                              ; preds = %877
  %884 = load i32, i32* %9, align 4
  %885 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %886 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %885, i32 0, i32 2
  %887 = load %struct.TYPE_14__*, %struct.TYPE_14__** %886, align 8
  %888 = load i32, i32* %19, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %887, i64 %889
  %891 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %890, i32 0, i32 1
  %892 = load i32, i32* %891, align 8
  %893 = icmp slt i32 %884, %892
  br i1 %893, label %894, label %903

894:                                              ; preds = %883
  %895 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %896 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %895, i32 0, i32 2
  %897 = load %struct.TYPE_14__*, %struct.TYPE_14__** %896, align 8
  %898 = load i32, i32* %19, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %897, i64 %899
  %901 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %900, i32 0, i32 1
  %902 = load i32, i32* %901, align 8
  store i32 %902, i32* %9, align 4
  br label %903

903:                                              ; preds = %894, %883
  br label %904

904:                                              ; preds = %903
  %905 = load i32, i32* %19, align 4
  %906 = add nsw i32 %905, 1
  store i32 %906, i32* %19, align 4
  br label %877

907:                                              ; preds = %877
  store i32 0, i32* %19, align 4
  br label %908

908:                                              ; preds = %931, %907
  %909 = load i32, i32* %19, align 4
  %910 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %911 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %910, i32 0, i32 0
  %912 = load i32, i32* %911, align 8
  %913 = icmp slt i32 %909, %912
  br i1 %913, label %914, label %934

914:                                              ; preds = %908
  %915 = load i32, i32* %9, align 4
  %916 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %917 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %916, i32 0, i32 2
  %918 = load %struct.TYPE_14__*, %struct.TYPE_14__** %917, align 8
  %919 = load i32, i32* %19, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %918, i64 %920
  %922 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %921, i32 0, i32 1
  store i32 %915, i32* %922, align 8
  %923 = load i64, i64* %12, align 8
  %924 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %925 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %924, i32 0, i32 2
  %926 = load %struct.TYPE_14__*, %struct.TYPE_14__** %925, align 8
  %927 = load i32, i32* %19, align 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %926, i64 %928
  %930 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %929, i32 0, i32 3
  store i64 %923, i64* %930, align 8
  br label %931

931:                                              ; preds = %914
  %932 = load i32, i32* %19, align 4
  %933 = add nsw i32 %932, 1
  store i32 %933, i32* %19, align 4
  br label %908

934:                                              ; preds = %908
  br label %1019

935:                                              ; preds = %867
  store i32 1, i32* %19, align 4
  br label %936

936:                                              ; preds = %1015, %935
  %937 = load i32, i32* %19, align 4
  %938 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %939 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %938, i32 0, i32 0
  %940 = load i32, i32* %939, align 8
  %941 = icmp slt i32 %937, %940
  br i1 %941, label %942, label %1018

942:                                              ; preds = %936
  %943 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %944 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %943, i32 0, i32 2
  %945 = load %struct.TYPE_14__*, %struct.TYPE_14__** %944, align 8
  %946 = load i32, i32* %19, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %945, i64 %947
  %949 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %948, i32 0, i32 1
  %950 = load i32, i32* %949, align 8
  %951 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %952 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %951, i32 0, i32 2
  %953 = load %struct.TYPE_14__*, %struct.TYPE_14__** %952, align 8
  %954 = load i32, i32* %19, align 4
  %955 = sub nsw i32 %954, 1
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %953, i64 %956
  %958 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %957, i32 0, i32 1
  %959 = load i32, i32* %958, align 8
  %960 = icmp slt i32 %950, %959
  br i1 %960, label %961, label %978

961:                                              ; preds = %942
  %962 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %963 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %962, i32 0, i32 2
  %964 = load %struct.TYPE_14__*, %struct.TYPE_14__** %963, align 8
  %965 = load i32, i32* %19, align 4
  %966 = sub nsw i32 %965, 1
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %964, i64 %967
  %969 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %968, i32 0, i32 1
  %970 = load i32, i32* %969, align 8
  %971 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %972 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %971, i32 0, i32 2
  %973 = load %struct.TYPE_14__*, %struct.TYPE_14__** %972, align 8
  %974 = load i32, i32* %19, align 4
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %973, i64 %975
  %977 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %976, i32 0, i32 1
  store i32 %970, i32* %977, align 8
  br label %978

978:                                              ; preds = %961, %942
  %979 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %980 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %979, i32 0, i32 2
  %981 = load %struct.TYPE_14__*, %struct.TYPE_14__** %980, align 8
  %982 = load i32, i32* %19, align 4
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %981, i64 %983
  %985 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %984, i32 0, i32 3
  %986 = load i64, i64* %985, align 8
  %987 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %988 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %987, i32 0, i32 2
  %989 = load %struct.TYPE_14__*, %struct.TYPE_14__** %988, align 8
  %990 = load i32, i32* %19, align 4
  %991 = sub nsw i32 %990, 1
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %989, i64 %992
  %994 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %993, i32 0, i32 3
  %995 = load i64, i64* %994, align 8
  %996 = icmp slt i64 %986, %995
  br i1 %996, label %997, label %1014

997:                                              ; preds = %978
  %998 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %999 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %998, i32 0, i32 2
  %1000 = load %struct.TYPE_14__*, %struct.TYPE_14__** %999, align 8
  %1001 = load i32, i32* %19, align 4
  %1002 = sub nsw i32 %1001, 1
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1000, i64 %1003
  %1005 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1004, i32 0, i32 3
  %1006 = load i64, i64* %1005, align 8
  %1007 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1008 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1007, i32 0, i32 2
  %1009 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1008, align 8
  %1010 = load i32, i32* %19, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1009, i64 %1011
  %1013 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1012, i32 0, i32 3
  store i64 %1006, i64* %1013, align 8
  br label %1014

1014:                                             ; preds = %997, %978
  br label %1015

1015:                                             ; preds = %1014
  %1016 = load i32, i32* %19, align 4
  %1017 = add nsw i32 %1016, 1
  store i32 %1017, i32* %19, align 4
  br label %936

1018:                                             ; preds = %936
  br label %1019

1019:                                             ; preds = %1018, %934
  store i32 0, i32* %19, align 4
  br label %1020

1020:                                             ; preds = %1036, %1019
  %1021 = load i32, i32* %19, align 4
  %1022 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1023 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1022, i32 0, i32 0
  %1024 = load i32, i32* %1023, align 8
  %1025 = icmp slt i32 %1021, %1024
  br i1 %1025, label %1026, label %1039

1026:                                             ; preds = %1020
  %1027 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1028 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %1029 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1030 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1029, i32 0, i32 2
  %1031 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1030, align 8
  %1032 = load i32, i32* %19, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1031, i64 %1033
  %1035 = call i32 @btc_adjust_clock_combinations(%struct.radeon_device* %1027, %struct.radeon_clock_and_voltage_limits* %1028, %struct.TYPE_14__* %1034)
  br label %1036

1036:                                             ; preds = %1026
  %1037 = load i32, i32* %19, align 4
  %1038 = add nsw i32 %1037, 1
  store i32 %1038, i32* %19, align 4
  br label %1020

1039:                                             ; preds = %1020
  store i32 0, i32* %19, align 4
  br label %1040

1040:                                             ; preds = %1159, %1039
  %1041 = load i32, i32* %19, align 4
  %1042 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1043 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1042, i32 0, i32 0
  %1044 = load i32, i32* %1043, align 8
  %1045 = icmp slt i32 %1041, %1044
  br i1 %1045, label %1046, label %1162

1046:                                             ; preds = %1040
  %1047 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1048 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1047, i32 0, i32 2
  %1049 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1048, align 8
  %1050 = load i32, i32* %19, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1049, i64 %1051
  %1053 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1052, i32 0, i32 0
  %1054 = load i64, i64* %1053, align 8
  %1055 = load i64, i64* %13, align 8
  %1056 = icmp slt i64 %1054, %1055
  br i1 %1056, label %1057, label %1066

1057:                                             ; preds = %1046
  %1058 = load i64, i64* %13, align 8
  %1059 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1060 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1059, i32 0, i32 2
  %1061 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1060, align 8
  %1062 = load i32, i32* %19, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1061, i64 %1063
  %1065 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1064, i32 0, i32 0
  store i64 %1058, i64* %1065, align 8
  br label %1066

1066:                                             ; preds = %1057, %1046
  %1067 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1068 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1067, i32 0, i32 1
  %1069 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1068, i32 0, i32 0
  %1070 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1069, i32 0, i32 3
  %1071 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1070, i32 0, i32 4
  %1072 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1073 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1072, i32 0, i32 2
  %1074 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1073, align 8
  %1075 = load i32, i32* %19, align 4
  %1076 = sext i32 %1075 to i64
  %1077 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1074, i64 %1076
  %1078 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1077, i32 0, i32 2
  %1079 = load i32, i32* %1078, align 4
  %1080 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %1081 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %1080, i32 0, i32 2
  %1082 = load i64, i64* %1081, align 8
  %1083 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1084 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1083, i32 0, i32 2
  %1085 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1084, align 8
  %1086 = load i32, i32* %19, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1085, i64 %1087
  %1089 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1088, i32 0, i32 0
  %1090 = call i32 @btc_apply_voltage_dependency_rules(i32* %1071, i32 %1079, i64 %1082, i64* %1089)
  %1091 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1092 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1092, i32 0, i32 0
  %1094 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1093, i32 0, i32 3
  %1095 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1094, i32 0, i32 3
  %1096 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1097 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1096, i32 0, i32 2
  %1098 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1097, align 8
  %1099 = load i32, i32* %19, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1098, i64 %1100
  %1102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1101, i32 0, i32 1
  %1103 = load i32, i32* %1102, align 8
  %1104 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %1105 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %1104, i32 0, i32 3
  %1106 = load i64, i64* %1105, align 8
  %1107 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1108 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1107, i32 0, i32 2
  %1109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1108, align 8
  %1110 = load i32, i32* %19, align 4
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1109, i64 %1111
  %1113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1112, i32 0, i32 3
  %1114 = call i32 @btc_apply_voltage_dependency_rules(i32* %1095, i32 %1103, i64 %1106, i64* %1113)
  %1115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1115, i32 0, i32 1
  %1117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1116, i32 0, i32 0
  %1118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1117, i32 0, i32 3
  %1119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1118, i32 0, i32 2
  %1120 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1121 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1120, i32 0, i32 2
  %1122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1121, align 8
  %1123 = load i32, i32* %19, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1122, i64 %1124
  %1126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1125, i32 0, i32 1
  %1127 = load i32, i32* %1126, align 8
  %1128 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %1129 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %1128, i32 0, i32 2
  %1130 = load i64, i64* %1129, align 8
  %1131 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1132 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1131, i32 0, i32 2
  %1133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1132, align 8
  %1134 = load i32, i32* %19, align 4
  %1135 = sext i32 %1134 to i64
  %1136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1133, i64 %1135
  %1137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1136, i32 0, i32 0
  %1138 = call i32 @btc_apply_voltage_dependency_rules(i32* %1119, i32 %1127, i64 %1130, i64* %1137)
  %1139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1140, i32 0, i32 0
  %1142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1141, i32 0, i32 3
  %1143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1142, i32 0, i32 1
  %1144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1144, i32 0, i32 2
  %1146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1145, i32 0, i32 0
  %1147 = load i32, i32* %1146, align 8
  %1148 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %1149 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %1148, i32 0, i32 2
  %1150 = load i64, i64* %1149, align 8
  %1151 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1152 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1151, i32 0, i32 2
  %1153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1152, align 8
  %1154 = load i32, i32* %19, align 4
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1153, i64 %1155
  %1157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1156, i32 0, i32 0
  %1158 = call i32 @btc_apply_voltage_dependency_rules(i32* %1143, i32 %1147, i64 %1150, i64* %1157)
  br label %1159

1159:                                             ; preds = %1066
  %1160 = load i32, i32* %19, align 4
  %1161 = add nsw i32 %1160, 1
  store i32 %1161, i32* %19, align 4
  br label %1040

1162:                                             ; preds = %1040
  store i32 0, i32* %19, align 4
  br label %1163

1163:                                             ; preds = %1192, %1162
  %1164 = load i32, i32* %19, align 4
  %1165 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1166 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1165, i32 0, i32 0
  %1167 = load i32, i32* %1166, align 8
  %1168 = icmp slt i32 %1164, %1167
  br i1 %1168, label %1169, label %1195

1169:                                             ; preds = %1163
  %1170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1171 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %1172 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %1171, i32 0, i32 2
  %1173 = load i64, i64* %1172, align 8
  %1174 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %1175 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %1174, i32 0, i32 3
  %1176 = load i64, i64* %1175, align 8
  %1177 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1178 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1177, i32 0, i32 2
  %1179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1178, align 8
  %1180 = load i32, i32* %19, align 4
  %1181 = sext i32 %1180 to i64
  %1182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1179, i64 %1181
  %1183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1182, i32 0, i32 0
  %1184 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1185 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1184, i32 0, i32 2
  %1186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1185, align 8
  %1187 = load i32, i32* %19, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1186, i64 %1188
  %1190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1189, i32 0, i32 3
  %1191 = call i32 @btc_apply_voltage_delta_rules(%struct.radeon_device* %1170, i64 %1173, i64 %1176, i64* %1183, i64* %1190)
  br label %1192

1192:                                             ; preds = %1169
  %1193 = load i32, i32* %19, align 4
  %1194 = add nsw i32 %1193, 1
  store i32 %1194, i32* %19, align 4
  br label %1163

1195:                                             ; preds = %1163
  %1196 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1197 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1196, i32 0, i32 1
  store i32 1, i32* %1197, align 4
  store i32 0, i32* %19, align 4
  br label %1198

1198:                                             ; preds = %1225, %1195
  %1199 = load i32, i32* %19, align 4
  %1200 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1201 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1200, i32 0, i32 0
  %1202 = load i32, i32* %1201, align 8
  %1203 = icmp slt i32 %1199, %1202
  br i1 %1203, label %1204, label %1228

1204:                                             ; preds = %1198
  %1205 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1206 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1205, i32 0, i32 2
  %1207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1206, align 8
  %1208 = load i32, i32* %19, align 4
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1207, i64 %1209
  %1211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1210, i32 0, i32 0
  %1212 = load i64, i64* %1211, align 8
  %1213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1214 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1213, i32 0, i32 1
  %1215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1214, i32 0, i32 0
  %1216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1215, i32 0, i32 3
  %1217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1216, i32 0, i32 0
  %1218 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %1217, i32 0, i32 2
  %1219 = load i64, i64* %1218, align 8
  %1220 = icmp sgt i64 %1212, %1219
  br i1 %1220, label %1221, label %1224

1221:                                             ; preds = %1204
  %1222 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %1223 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %1222, i32 0, i32 1
  store i32 0, i32* %1223, align 4
  br label %1224

1224:                                             ; preds = %1221, %1204
  br label %1225

1225:                                             ; preds = %1224
  %1226 = load i32, i32* %19, align 4
  %1227 = add nsw i32 %1226, 1
  store i32 %1227, i32* %19, align 4
  br label %1198

1228:                                             ; preds = %1198
  ret void
}

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @si_get_vce_clock_voltage(%struct.radeon_device*, i64, i64, i64*) #1

declare dso_local i64 @ni_dpm_vblank_too_short(%struct.radeon_device*) #1

declare dso_local i32 @btc_get_max_clock_from_voltage_dependency_table(i32*, i32*) #1

declare dso_local i32 @btc_adjust_clock_combinations(%struct.radeon_device*, %struct.radeon_clock_and_voltage_limits*, %struct.TYPE_14__*) #1

declare dso_local i32 @btc_apply_voltage_dependency_rules(i32*, i32, i64, i64*) #1

declare dso_local i32 @btc_apply_voltage_delta_rules(%struct.radeon_device*, i64, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
