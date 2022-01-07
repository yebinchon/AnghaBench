; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_convert_power_state_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_convert_power_state_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i64, i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, i8*, i64, i32 }
%struct.evergreen_power_info = type { i32, i64, i64, i64 }
%struct.ni_power_info = type { i32, i32 }
%struct.si_power_info = type { i64 }
%struct.ni_ps = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32 }

@SISLANDS_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_UVD = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@SCLK_MIN_DEEPSLEEP_FREQ = common dso_local global i64 0, align 8
@PPSMC_STATEFLAG_DEEPSLEEP_BYPASS = common dso_local global i32 0, align 4
@PPSMC_STATEFLAG_DEEPSLEEP_THROTTLE = common dso_local global i32 0, align 4
@SISLANDS_DRIVER_STATE_ARB_INDEX = common dso_local global i64 0, align 8
@PPSMC_DISPLAY_WATERMARK_LOW = common dso_local global i8* null, align 8
@PPSMC_DISPLAY_WATERMARK_HIGH = common dso_local global i8* null, align 8
@SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT = common dso_local global i64 0, align 8
@SI_SMC_SOFT_REGISTER_watermark_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*)* @si_convert_power_state_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_convert_power_state_to_smc(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.evergreen_power_info*, align 8
  %9 = alloca %struct.ni_power_info*, align 8
  %10 = alloca %struct.si_power_info*, align 8
  %11 = alloca %struct.ni_ps*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %17 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %16)
  store %struct.evergreen_power_info* %17, %struct.evergreen_power_info** %8, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %19 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %18)
  store %struct.ni_power_info* %19, %struct.ni_power_info** %9, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %21 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %20)
  store %struct.si_power_info* %21, %struct.si_power_info** %10, align 8
  %22 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %23 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %22)
  store %struct.ni_ps* %23, %struct.ni_ps** %11, align 8
  store i64 1350, i64* %15, align 8
  %24 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %25 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SISLANDS_MAX_HARDWARE_POWERLEVELS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %277

32:                                               ; preds = %3
  %33 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %34 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %37 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 100
  %45 = sdiv i32 %44, 100
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %14, align 8
  %47 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %48 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %32
  %52 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %58 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %60 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @PPSMC_SWSTATE_FLAG_UVD, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %56
  br label %73

70:                                               ; preds = %51, %32
  %71 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %72 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %69
  %74 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %75 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %240, %84
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %90 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %243

93:                                               ; preds = %87
  %94 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %95 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %134

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %103 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %101, %98
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* @SCLK_MIN_DEEPSLEEP_FREQ, align 8
  %109 = icmp sle i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i32, i32* @PPSMC_STATEFLAG_DEEPSLEEP_BYPASS, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %111
  store i32 %120, i32* %118, align 8
  br label %132

121:                                              ; preds = %106
  %122 = load i32, i32* @PPSMC_STATEFLAG_DEEPSLEEP_THROTTLE, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %122
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %121, %110
  br label %133

133:                                              ; preds = %132, %101
  br label %134

134:                                              ; preds = %133, %93
  %135 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %136 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %137 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %136, i32 0, i32 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i64 %140
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %146
  %148 = call i32 @si_convert_power_level_to_smc(%struct.radeon_device* %135, %struct.TYPE_10__* %141, %struct.TYPE_11__* %147)
  store i32 %148, i32* %13, align 4
  %149 = load i64, i64* @SISLANDS_DRIVER_STATE_ARB_INDEX, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  store i64 %152, i64* %159, align 8
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %134
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %4, align 4
  br label %277

164:                                              ; preds = %134
  %165 = load %struct.ni_power_info*, %struct.ni_power_info** %9, align 8
  %166 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %194

169:                                              ; preds = %164
  %170 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %171 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %14, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %169
  %182 = load i8*, i8** @PPSMC_DISPLAY_WATERMARK_LOW, align 8
  br label %185

183:                                              ; preds = %169
  %184 = load i8*, i8** @PPSMC_DISPLAY_WATERMARK_HIGH, align 8
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i8* [ %182, %181 ], [ %184, %183 ]
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  store i8* %186, i8** %193, align 8
  br label %210

194:                                              ; preds = %164
  %195 = load i32, i32* %12, align 4
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i8*, i8** @PPSMC_DISPLAY_WATERMARK_LOW, align 8
  br label %201

199:                                              ; preds = %194
  %200 = load i8*, i8** @PPSMC_DISPLAY_WATERMARK_HIGH, align 8
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i8* [ %198, %197 ], [ %200, %199 ]
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  store i8* %202, i8** %209, align 8
  br label %210

210:                                              ; preds = %201, %185
  %211 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %212 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %210
  %216 = load i64, i64* @SISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %216, %218
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  store i64 %219, i64* %226, align 8
  br label %235

227:                                              ; preds = %210
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  br label %235

235:                                              ; preds = %227, %215
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %237, align 8
  br label %240

240:                                              ; preds = %235
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  br label %87

243:                                              ; preds = %87
  %244 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %245 = load i32, i32* @SI_SMC_SOFT_REGISTER_watermark_threshold, align 4
  %246 = load i64, i64* %14, align 8
  %247 = sdiv i64 %246, 512
  %248 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %244, i32 %245, i64 %247)
  %249 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %250 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %252 = call i32 @si_populate_smc_sp(%struct.radeon_device* %249, %struct.radeon_ps* %250, %struct.TYPE_9__* %251)
  %253 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %254 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %256 = call i32 @si_populate_power_containment_values(%struct.radeon_device* %253, %struct.radeon_ps* %254, %struct.TYPE_9__* %255)
  store i32 %256, i32* %13, align 4
  %257 = load i32, i32* %13, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %243
  %260 = load %struct.ni_power_info*, %struct.ni_power_info** %9, align 8
  %261 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %260, i32 0, i32 0
  store i32 0, i32* %261, align 4
  br label %262

262:                                              ; preds = %259, %243
  %263 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %264 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %266 = call i32 @si_populate_sq_ramping_values(%struct.radeon_device* %263, %struct.radeon_ps* %264, %struct.TYPE_9__* %265)
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %13, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load %struct.ni_power_info*, %struct.ni_power_info** %9, align 8
  %271 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %270, i32 0, i32 1
  store i32 0, i32* %271, align 4
  br label %272

272:                                              ; preds = %269, %262
  %273 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %274 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %276 = call i32 @si_populate_smc_t(%struct.radeon_device* %273, %struct.radeon_ps* %274, %struct.TYPE_9__* %275)
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %272, %162, %29
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @si_convert_power_level_to_smc(%struct.radeon_device*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @si_write_smc_soft_register(%struct.radeon_device*, i32, i64) #1

declare dso_local i32 @si_populate_smc_sp(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*) #1

declare dso_local i32 @si_populate_power_containment_values(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*) #1

declare dso_local i32 @si_populate_sq_ramping_values(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*) #1

declare dso_local i32 @si_populate_smc_t(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
