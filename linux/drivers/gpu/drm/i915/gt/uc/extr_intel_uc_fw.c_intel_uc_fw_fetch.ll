; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.uc_css_header = type { i32, i64, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s firmware %s: invalid size: %zu < %zu\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s firmware %s: unexpected header size: %zu != %zu\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@UOS_RSA_SCRATCH_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"%s firmware %s: unexpected key size: %u != %u\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%s firmware %s: invalid size: %zu > %zu\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@CSS_SW_VERSION_GUC_MAJOR = common dso_local global i32 0, align 4
@CSS_SW_VERSION_GUC_MINOR = common dso_local global i32 0, align 4
@CSS_SW_VERSION_HUC_MAJOR = common dso_local global i32 0, align 4
@CSS_SW_VERSION_HUC_MINOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"%s firmware %s: unexpected version: %u.%u != %u.%u\0A\00", align 1
@INTEL_UC_FIRMWARE_AVAILABLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@INTEL_UC_FIRMWARE_MISSING = common dso_local global i32 0, align 4
@INTEL_UC_FIRMWARE_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"%s firmware %s: fetch failed with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s firmware(s) can be downloaded from %s\0A\00", align 1
@INTEL_UC_FIRMWARE_URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_uc_fw_fetch(%struct.intel_uc_fw* %0, %struct.drm_i915_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uc_fw*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.uc_css_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %4, align 8
  store %struct.drm_i915_private* %1, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  store %struct.firmware* null, %struct.firmware** %8, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %25 = call i32 @intel_uc_fw_is_enabled(%struct.intel_uc_fw* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @GEM_BUG_ON(i32 %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @i915_inject_load_error(%struct.drm_i915_private* %30, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %390

38:                                               ; preds = %2
  %39 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @__force_fw_fetch_failures(%struct.intel_uc_fw* %39, %struct.drm_i915_private* %40, i32 %42)
  %44 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %46 = load i32, i32* @ESTALE, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i32 @__force_fw_fetch_failures(%struct.intel_uc_fw* %44, %struct.drm_i915_private* %45, i32 %47)
  %49 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %50 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 @request_firmware(%struct.firmware** %8, i32 %51, %struct.device* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  br label %357

57:                                               ; preds = %38
  %58 = load %struct.firmware*, %struct.firmware** %8, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 32
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %57
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %69 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @intel_uc_fw_type_repr(i32 %70)
  %72 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %73 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.firmware*, %struct.firmware** %8, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = call i32 @dev_warn(%struct.device* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i64 %78, i64 32)
  %80 = load i32, i32* @ENODATA, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %357

82:                                               ; preds = %57
  %83 = load %struct.firmware*, %struct.firmware** %8, align 8
  %84 = getelementptr inbounds %struct.firmware, %struct.firmware* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.uc_css_header*
  store %struct.uc_css_header* %86, %struct.uc_css_header** %9, align 8
  %87 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %88 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %92 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %90, %93
  %95 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %96 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = sub i64 %94, %98
  %100 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %101 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = sub i64 %99, %103
  %105 = mul i64 %104, 4
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp ne i64 %106, 32
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %82
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %114 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @intel_uc_fw_type_repr(i32 %115)
  %117 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %118 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.firmware*, %struct.firmware** %8, align 8
  %121 = getelementptr inbounds %struct.firmware, %struct.firmware* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = call i32 @dev_warn(%struct.device* %112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %119, i64 %123, i64 32)
  %125 = load i32, i32* @EPROTO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %11, align 4
  br label %357

127:                                              ; preds = %82
  %128 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %129 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %132 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %139 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %141 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @UOS_RSA_SCRATCH_COUNT, align 8
  %144 = icmp ne i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %127
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %151 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @intel_uc_fw_type_repr(i32 %152)
  %154 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %155 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %158 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @UOS_RSA_SCRATCH_COUNT, align 8
  %161 = call i32 @dev_warn(%struct.device* %149, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %156, i64 %159, i64 %160)
  %162 = load i32, i32* @EPROTO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %11, align 4
  br label %357

164:                                              ; preds = %127
  %165 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %166 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = mul i64 %167, 4
  %169 = trunc i64 %168 to i32
  %170 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %171 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %173 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 32, %175
  %177 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %178 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = add i64 %176, %180
  store i64 %181, i64* %10, align 8
  %182 = load %struct.firmware*, %struct.firmware** %8, align 8
  %183 = getelementptr inbounds %struct.firmware, %struct.firmware* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %10, align 8
  %187 = icmp ult i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %164
  %192 = load %struct.device*, %struct.device** %6, align 8
  %193 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %194 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @intel_uc_fw_type_repr(i32 %195)
  %197 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %198 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.firmware*, %struct.firmware** %8, align 8
  %201 = getelementptr inbounds %struct.firmware, %struct.firmware* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @dev_warn(%struct.device* %192, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %196, i32 %199, i64 %203, i64 %204)
  %206 = load i32, i32* @ENOEXEC, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %11, align 4
  br label %357

208:                                              ; preds = %164
  %209 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %210 = call i64 @__intel_uc_fw_get_upload_size(%struct.intel_uc_fw* %209)
  store i64 %210, i64* %10, align 8
  %211 = load i64, i64* %10, align 8
  %212 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %213 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp uge i64 %211, %215
  %217 = zext i1 %216 to i32
  %218 = call i64 @unlikely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %208
  %221 = load %struct.device*, %struct.device** %6, align 8
  %222 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %223 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @intel_uc_fw_type_repr(i32 %224)
  %226 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %227 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = load i64, i64* %10, align 8
  %230 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %231 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @dev_warn(%struct.device* %221, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %225, i32 %228, i64 %229, i64 %233)
  %235 = load i32, i32* @E2BIG, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %11, align 4
  br label %357

237:                                              ; preds = %208
  %238 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %239 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %275 [
    i32 129, label %241
    i32 128, label %258
  ]

241:                                              ; preds = %237
  %242 = load i32, i32* @CSS_SW_VERSION_GUC_MAJOR, align 4
  %243 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %244 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @FIELD_GET(i32 %242, i32 %245)
  %247 = ptrtoint i8* %246 to i64
  %248 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %249 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %248, i32 0, i32 3
  store i64 %247, i64* %249, align 8
  %250 = load i32, i32* @CSS_SW_VERSION_GUC_MINOR, align 4
  %251 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %252 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @FIELD_GET(i32 %250, i32 %253)
  %255 = ptrtoint i8* %254 to i64
  %256 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %257 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %256, i32 0, i32 4
  store i64 %255, i64* %257, align 8
  br label %280

258:                                              ; preds = %237
  %259 = load i32, i32* @CSS_SW_VERSION_HUC_MAJOR, align 4
  %260 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %261 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @FIELD_GET(i32 %259, i32 %262)
  %264 = ptrtoint i8* %263 to i64
  %265 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %266 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %265, i32 0, i32 3
  store i64 %264, i64* %266, align 8
  %267 = load i32, i32* @CSS_SW_VERSION_HUC_MINOR, align 4
  %268 = load %struct.uc_css_header*, %struct.uc_css_header** %9, align 8
  %269 = getelementptr inbounds %struct.uc_css_header, %struct.uc_css_header* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @FIELD_GET(i32 %267, i32 %270)
  %272 = ptrtoint i8* %271 to i64
  %273 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %274 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %273, i32 0, i32 4
  store i64 %272, i64* %274, align 8
  br label %280

275:                                              ; preds = %237
  %276 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %277 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @MISSING_CASE(i32 %278)
  br label %280

280:                                              ; preds = %275, %258, %241
  %281 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %282 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %285 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %283, %286
  br i1 %287, label %296, label %288

288:                                              ; preds = %280
  %289 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %290 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %293 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %292, i32 0, i32 6
  %294 = load i64, i64* %293, align 8
  %295 = icmp slt i64 %291, %294
  br i1 %295, label %296, label %326

296:                                              ; preds = %288, %280
  %297 = load %struct.device*, %struct.device** %6, align 8
  %298 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %299 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @intel_uc_fw_type_repr(i32 %300)
  %302 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %303 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %306 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %310 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %313 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %312, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %316 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %315, i32 0, i32 6
  %317 = load i64, i64* %316, align 8
  %318 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_notice(%struct.device* %297, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %301, i32 %304, i32 %308, i64 %311, i64 %314, i64 %317)
  %319 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %320 = call i32 @intel_uc_fw_is_overridden(%struct.intel_uc_fw* %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %296
  %323 = load i32, i32* @ENOEXEC, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %11, align 4
  br label %357

325:                                              ; preds = %296
  br label %326

326:                                              ; preds = %325, %288
  %327 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %328 = load %struct.firmware*, %struct.firmware** %8, align 8
  %329 = getelementptr inbounds %struct.firmware, %struct.firmware* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.firmware*, %struct.firmware** %8, align 8
  %332 = getelementptr inbounds %struct.firmware, %struct.firmware* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = sext i32 %333 to i64
  %335 = call %struct.drm_i915_gem_object* @i915_gem_object_create_shmem_from_data(%struct.drm_i915_private* %327, i64 %330, i64 %334)
  store %struct.drm_i915_gem_object* %335, %struct.drm_i915_gem_object** %7, align 8
  %336 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %337 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %326
  %340 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %341 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %340)
  store i32 %341, i32* %11, align 4
  br label %357

342:                                              ; preds = %326
  %343 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %344 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %345 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %344, i32 0, i32 9
  store %struct.drm_i915_gem_object* %343, %struct.drm_i915_gem_object** %345, align 8
  %346 = load %struct.firmware*, %struct.firmware** %8, align 8
  %347 = getelementptr inbounds %struct.firmware, %struct.firmware* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %351 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %350, i32 0, i32 7
  store i64 %349, i64* %351, align 8
  %352 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %353 = load i32, i32* @INTEL_UC_FIRMWARE_AVAILABLE, align 4
  %354 = call i32 @intel_uc_fw_change_status(%struct.intel_uc_fw* %352, i32 %353)
  %355 = load %struct.firmware*, %struct.firmware** %8, align 8
  %356 = call i32 @release_firmware(%struct.firmware* %355)
  store i32 0, i32* %3, align 4
  br label %390

357:                                              ; preds = %339, %322, %220, %191, %148, %111, %66, %56
  %358 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %359 = load i32, i32* %11, align 4
  %360 = load i32, i32* @ENOENT, align 4
  %361 = sub nsw i32 0, %360
  %362 = icmp eq i32 %359, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %357
  %364 = load i32, i32* @INTEL_UC_FIRMWARE_MISSING, align 4
  br label %367

365:                                              ; preds = %357
  %366 = load i32, i32* @INTEL_UC_FIRMWARE_ERROR, align 4
  br label %367

367:                                              ; preds = %365, %363
  %368 = phi i32 [ %364, %363 ], [ %366, %365 ]
  %369 = call i32 @intel_uc_fw_change_status(%struct.intel_uc_fw* %358, i32 %368)
  %370 = load %struct.device*, %struct.device** %6, align 8
  %371 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %372 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @intel_uc_fw_type_repr(i32 %373)
  %375 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %376 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %375, i32 0, i32 8
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* %11, align 4
  %379 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_notice(%struct.device* %370, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %374, i32 %377, i32 %378)
  %380 = load %struct.device*, %struct.device** %6, align 8
  %381 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %382 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @intel_uc_fw_type_repr(i32 %383)
  %385 = load i32, i32* @INTEL_UC_FIRMWARE_URL, align 4
  %386 = call i32 @dev_info(%struct.device* %380, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %384, i32 %385)
  %387 = load %struct.firmware*, %struct.firmware** %8, align 8
  %388 = call i32 @release_firmware(%struct.firmware* %387)
  %389 = load i32, i32* %11, align 4
  store i32 %389, i32* %3, align 4
  br label %390

390:                                              ; preds = %367, %342, %36
  %391 = load i32, i32* %3, align 4
  ret i32 %391
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uc_fw_is_enabled(%struct.intel_uc_fw*) #1

declare dso_local i32 @i915_inject_load_error(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @__force_fw_fetch_failures(%struct.intel_uc_fw*, %struct.drm_i915_private*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @intel_uc_fw_type_repr(i32) #1

declare dso_local i64 @__intel_uc_fw_get_upload_size(%struct.intel_uc_fw*) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @intel_uc_fw_is_overridden(%struct.intel_uc_fw*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_shmem_from_data(%struct.drm_i915_private*, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_uc_fw_change_status(%struct.intel_uc_fw*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
