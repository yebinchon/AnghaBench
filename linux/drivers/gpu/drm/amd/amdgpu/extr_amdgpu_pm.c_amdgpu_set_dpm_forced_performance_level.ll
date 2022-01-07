; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_dpm_forced_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_dpm_forced_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.amdgpu_device*, i32)* }

@AMD_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"low\00", align 1
@AMD_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@AMD_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@AMD_DPM_FORCED_LEVEL_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@AMD_DPM_FORCED_LEVEL_MANUAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"profile_exit\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_EXIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"profile_standard\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"profile_min_sclk\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"profile_min_mclk\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"profile_peak\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Currently not in any profile mode!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amdgpu_set_dpm_forced_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amdgpu_set_dpm_forced_performance_level(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %15)
  store %struct.drm_device* %16, %struct.drm_device** %10, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %11, align 8
  store i32 255, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AMD_IS_PX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %257

35:                                               ; preds = %26, %4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @AMD_DPM_FORCED_LEVEL_LOW, align 4
  store i32 %41, i32* %12, align 4
  br label %109

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @AMD_DPM_FORCED_LEVEL_HIGH, align 4
  store i32 %48, i32* %12, align 4
  br label %108

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @AMD_DPM_FORCED_LEVEL_AUTO, align 4
  store i32 %55, i32* %12, align 4
  br label %107

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @AMD_DPM_FORCED_LEVEL_MANUAL, align 4
  store i32 %62, i32* %12, align 4
  br label %106

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %66 = call i64 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_EXIT, align 4
  store i32 %69, i32* %12, align 4
  br label %105

70:                                               ; preds = %63
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %73 = call i64 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD, align 4
  store i32 %76, i32* %12, align 4
  br label %104

77:                                               ; preds = %70
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %80 = call i64 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  store i32 %83, i32* %12, align 4
  br label %103

84:                                               ; preds = %77
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %87 = call i64 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %85, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  store i32 %90, i32* %12, align 4
  br label %102

91:                                               ; preds = %84
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %94 = call i64 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  store i32 %97, i32* %12, align 4
  br label %101

98:                                               ; preds = %91
  %99 = load i64, i64* @EINVAL, align 8
  %100 = sub i64 0, %99
  store i64 %100, i64* %9, align 8
  br label %255

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %82
  br label %104

104:                                              ; preds = %103, %75
  br label %105

105:                                              ; preds = %104, %68
  br label %106

106:                                              ; preds = %105, %61
  br label %107

107:                                              ; preds = %106, %54
  br label %108

108:                                              ; preds = %107, %47
  br label %109

109:                                              ; preds = %108, %40
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %111 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %147

113:                                              ; preds = %109
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %115 = call i64 @amdgim_is_hwperf(%struct.amdgpu_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %113
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %122, align 8
  %124 = icmp ne i32 (%struct.amdgpu_device*, i32)* %123, null
  br i1 %124, label %125, label %144

125:                                              ; preds = %117
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = call i32 @mutex_lock(i32* %128)
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %134, align 8
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 %135(%struct.amdgpu_device* %136, i32 %137)
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i64, i64* %9, align 8
  store i64 %143, i64* %5, align 8
  br label %257

144:                                              ; preds = %117, %113
  %145 = load i64, i64* @EINVAL, align 8
  %146 = sub i64 0, %145
  store i64 %146, i64* %5, align 8
  br label %257

147:                                              ; preds = %109
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %149 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 3
  %154 = call i32 @smu_get_performance_level(i32* %153)
  store i32 %154, i32* %13, align 4
  br label %167

155:                                              ; preds = %147
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %165 = call i32 @amdgpu_dpm_get_performance_level(%struct.amdgpu_device* %164)
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %163, %155
  br label %167

167:                                              ; preds = %166, %151
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i64, i64* %9, align 8
  store i64 %172, i64* %5, align 8
  br label %257

173:                                              ; preds = %167
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD, align 4
  %176 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %174, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %173
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_EXIT, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i64, i64* @EINVAL, align 8
  %191 = sub i64 0, %190
  store i64 %191, i64* %5, align 8
  br label %257

192:                                              ; preds = %184, %173
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %194 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 3
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @smu_force_performance_level(i32* %198, i32 %199)
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load i64, i64* @EINVAL, align 8
  %205 = sub i64 0, %204
  store i64 %205, i64* %9, align 8
  br label %206

206:                                              ; preds = %203, %196
  br label %254

207:                                              ; preds = %192
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %209 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %253

215:                                              ; preds = %207
  %216 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %217 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = call i32 @mutex_lock(i32* %218)
  %220 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %221 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %215
  %227 = load i64, i64* @EINVAL, align 8
  %228 = sub i64 0, %227
  store i64 %228, i64* %9, align 8
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = call i32 @mutex_unlock(i32* %231)
  br label %255

233:                                              ; preds = %215
  %234 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @amdgpu_dpm_force_performance_level(%struct.amdgpu_device* %234, i32 %235)
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load i64, i64* @EINVAL, align 8
  %241 = sub i64 0, %240
  store i64 %241, i64* %9, align 8
  br label %248

242:                                              ; preds = %233
  %243 = load i32, i32* %12, align 4
  %244 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %245 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  store i32 %243, i32* %247, align 8
  br label %248

248:                                              ; preds = %242, %239
  %249 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %250 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = call i32 @mutex_unlock(i32* %251)
  br label %253

253:                                              ; preds = %248, %207
  br label %254

254:                                              ; preds = %253, %206
  br label %255

255:                                              ; preds = %254, %226, %98
  %256 = load i64, i64* %9, align 8
  store i64 %256, i64* %5, align 8
  br label %257

257:                                              ; preds = %255, %188, %171, %144, %125, %32
  %258 = load i64, i64* %5, align 8
  ret i64 %258
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgim_is_hwperf(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_get_performance_level(i32*) #1

declare dso_local i32 @amdgpu_dpm_get_performance_level(%struct.amdgpu_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_force_performance_level(i32*, i32) #1

declare dso_local i32 @amdgpu_dpm_force_performance_level(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
