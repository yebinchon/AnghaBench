; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_format.c_igt_check_drm_format_min_pitch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_format.c_igt_check_drm_format_min_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_format_info = type { i32 }

@DRM_FORMAT_RGB332 = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB4444 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB888 = common dso_local global i32 0, align 4
@DRM_FORMAT_ABGR8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_NV12 = common dso_local global i32 0, align 4
@DRM_FORMAT_YUV422 = common dso_local global i32 0, align 4
@DRM_FORMAT_X0L2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igt_check_drm_format_min_pitch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_format_info*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.drm_format_info* null, %struct.drm_format_info** %3, align 8
  %4 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %5 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %4, i32 0, i32 0)
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @FAIL_ON(i32 %7)
  %9 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %10 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %9, i32 -1, i32 0)
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @FAIL_ON(i32 %12)
  %14 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %15 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %14, i32 1, i32 0)
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @FAIL_ON(i32 %17)
  %19 = load i32, i32* @DRM_FORMAT_RGB332, align 4
  %20 = call %struct.drm_format_info* @drm_format_info(i32 %19)
  store %struct.drm_format_info* %20, %struct.drm_format_info** %3, align 8
  %21 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %22 = icmp ne %struct.drm_format_info* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @FAIL_ON(i32 %24)
  %26 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %27 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %26, i32 0, i32 0)
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @FAIL_ON(i32 %29)
  %31 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %32 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %31, i32 -1, i32 0)
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @FAIL_ON(i32 %34)
  %36 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %37 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %36, i32 1, i32 0)
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @FAIL_ON(i32 %39)
  %41 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %42 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %41, i32 0, i32 1)
  %43 = icmp ne i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @FAIL_ON(i32 %44)
  %46 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %47 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %46, i32 0, i32 2)
  %48 = icmp ne i32 %47, 2
  %49 = zext i1 %48 to i32
  %50 = call i32 @FAIL_ON(i32 %49)
  %51 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %52 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %51, i32 0, i32 640)
  %53 = icmp ne i32 %52, 640
  %54 = zext i1 %53 to i32
  %55 = call i32 @FAIL_ON(i32 %54)
  %56 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %57 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %56, i32 0, i32 1024)
  %58 = icmp ne i32 %57, 1024
  %59 = zext i1 %58 to i32
  %60 = call i32 @FAIL_ON(i32 %59)
  %61 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %62 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %61, i32 0, i32 1920)
  %63 = icmp ne i32 %62, 1920
  %64 = zext i1 %63 to i32
  %65 = call i32 @FAIL_ON(i32 %64)
  %66 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %67 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %66, i32 0, i32 4096)
  %68 = icmp ne i32 %67, 4096
  %69 = zext i1 %68 to i32
  %70 = call i32 @FAIL_ON(i32 %69)
  %71 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %72 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %71, i32 0, i32 671)
  %73 = icmp ne i32 %72, 671
  %74 = zext i1 %73 to i32
  %75 = call i32 @FAIL_ON(i32 %74)
  %76 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %77 = load i32, i32* @UINT_MAX, align 4
  %78 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %76, i32 0, i32 %77)
  %79 = load i32, i32* @UINT_MAX, align 4
  %80 = icmp ne i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @FAIL_ON(i32 %81)
  %83 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %84 = load i32, i32* @UINT_MAX, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %83, i32 0, i32 %85)
  %87 = load i32, i32* @UINT_MAX, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp ne i32 %86, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @FAIL_ON(i32 %90)
  %92 = load i32, i32* @DRM_FORMAT_XRGB4444, align 4
  %93 = call %struct.drm_format_info* @drm_format_info(i32 %92)
  store %struct.drm_format_info* %93, %struct.drm_format_info** %3, align 8
  %94 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %95 = icmp ne %struct.drm_format_info* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @FAIL_ON(i32 %97)
  %99 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %100 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %99, i32 0, i32 0)
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @FAIL_ON(i32 %102)
  %104 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %105 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %104, i32 -1, i32 0)
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @FAIL_ON(i32 %107)
  %109 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %110 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %109, i32 1, i32 0)
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @FAIL_ON(i32 %112)
  %114 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %115 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %114, i32 0, i32 1)
  %116 = icmp ne i32 %115, 2
  %117 = zext i1 %116 to i32
  %118 = call i32 @FAIL_ON(i32 %117)
  %119 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %120 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %119, i32 0, i32 2)
  %121 = icmp ne i32 %120, 4
  %122 = zext i1 %121 to i32
  %123 = call i32 @FAIL_ON(i32 %122)
  %124 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %125 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %124, i32 0, i32 640)
  %126 = icmp ne i32 %125, 1280
  %127 = zext i1 %126 to i32
  %128 = call i32 @FAIL_ON(i32 %127)
  %129 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %130 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %129, i32 0, i32 1024)
  %131 = icmp ne i32 %130, 2048
  %132 = zext i1 %131 to i32
  %133 = call i32 @FAIL_ON(i32 %132)
  %134 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %135 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %134, i32 0, i32 1920)
  %136 = icmp ne i32 %135, 3840
  %137 = zext i1 %136 to i32
  %138 = call i32 @FAIL_ON(i32 %137)
  %139 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %140 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %139, i32 0, i32 4096)
  %141 = icmp ne i32 %140, 8192
  %142 = zext i1 %141 to i32
  %143 = call i32 @FAIL_ON(i32 %142)
  %144 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %145 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %144, i32 0, i32 671)
  %146 = icmp ne i32 %145, 1342
  %147 = zext i1 %146 to i32
  %148 = call i32 @FAIL_ON(i32 %147)
  %149 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %150 = load i32, i32* @UINT_MAX, align 4
  %151 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %149, i32 0, i32 %150)
  %152 = load i32, i32* @UINT_MAX, align 4
  %153 = mul nsw i32 %152, 2
  %154 = icmp ne i32 %151, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @FAIL_ON(i32 %155)
  %157 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %158 = load i32, i32* @UINT_MAX, align 4
  %159 = sub nsw i32 %158, 1
  %160 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %157, i32 0, i32 %159)
  %161 = load i32, i32* @UINT_MAX, align 4
  %162 = sub nsw i32 %161, 1
  %163 = mul nsw i32 %162, 2
  %164 = icmp ne i32 %160, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @FAIL_ON(i32 %165)
  %167 = load i32, i32* @DRM_FORMAT_RGB888, align 4
  %168 = call %struct.drm_format_info* @drm_format_info(i32 %167)
  store %struct.drm_format_info* %168, %struct.drm_format_info** %3, align 8
  %169 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %170 = icmp ne %struct.drm_format_info* %169, null
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 @FAIL_ON(i32 %172)
  %174 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %175 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %174, i32 0, i32 0)
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @FAIL_ON(i32 %177)
  %179 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %180 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %179, i32 -1, i32 0)
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @FAIL_ON(i32 %182)
  %184 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %185 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %184, i32 1, i32 0)
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @FAIL_ON(i32 %187)
  %189 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %190 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %189, i32 0, i32 1)
  %191 = icmp ne i32 %190, 3
  %192 = zext i1 %191 to i32
  %193 = call i32 @FAIL_ON(i32 %192)
  %194 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %195 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %194, i32 0, i32 2)
  %196 = icmp ne i32 %195, 6
  %197 = zext i1 %196 to i32
  %198 = call i32 @FAIL_ON(i32 %197)
  %199 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %200 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %199, i32 0, i32 640)
  %201 = icmp ne i32 %200, 1920
  %202 = zext i1 %201 to i32
  %203 = call i32 @FAIL_ON(i32 %202)
  %204 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %205 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %204, i32 0, i32 1024)
  %206 = icmp ne i32 %205, 3072
  %207 = zext i1 %206 to i32
  %208 = call i32 @FAIL_ON(i32 %207)
  %209 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %210 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %209, i32 0, i32 1920)
  %211 = icmp ne i32 %210, 5760
  %212 = zext i1 %211 to i32
  %213 = call i32 @FAIL_ON(i32 %212)
  %214 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %215 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %214, i32 0, i32 4096)
  %216 = icmp ne i32 %215, 12288
  %217 = zext i1 %216 to i32
  %218 = call i32 @FAIL_ON(i32 %217)
  %219 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %220 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %219, i32 0, i32 671)
  %221 = icmp ne i32 %220, 2013
  %222 = zext i1 %221 to i32
  %223 = call i32 @FAIL_ON(i32 %222)
  %224 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %225 = load i32, i32* @UINT_MAX, align 4
  %226 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %224, i32 0, i32 %225)
  %227 = load i32, i32* @UINT_MAX, align 4
  %228 = mul nsw i32 %227, 3
  %229 = icmp ne i32 %226, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @FAIL_ON(i32 %230)
  %232 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %233 = load i32, i32* @UINT_MAX, align 4
  %234 = sub nsw i32 %233, 1
  %235 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %232, i32 0, i32 %234)
  %236 = load i32, i32* @UINT_MAX, align 4
  %237 = sub nsw i32 %236, 1
  %238 = mul nsw i32 %237, 3
  %239 = icmp ne i32 %235, %238
  %240 = zext i1 %239 to i32
  %241 = call i32 @FAIL_ON(i32 %240)
  %242 = load i32, i32* @DRM_FORMAT_ABGR8888, align 4
  %243 = call %struct.drm_format_info* @drm_format_info(i32 %242)
  store %struct.drm_format_info* %243, %struct.drm_format_info** %3, align 8
  %244 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %245 = icmp ne %struct.drm_format_info* %244, null
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i32 @FAIL_ON(i32 %247)
  %249 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %250 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %249, i32 0, i32 0)
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @FAIL_ON(i32 %252)
  %254 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %255 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %254, i32 -1, i32 0)
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i32
  %258 = call i32 @FAIL_ON(i32 %257)
  %259 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %260 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %259, i32 1, i32 0)
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i32
  %263 = call i32 @FAIL_ON(i32 %262)
  %264 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %265 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %264, i32 0, i32 1)
  %266 = icmp ne i32 %265, 4
  %267 = zext i1 %266 to i32
  %268 = call i32 @FAIL_ON(i32 %267)
  %269 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %270 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %269, i32 0, i32 2)
  %271 = icmp ne i32 %270, 8
  %272 = zext i1 %271 to i32
  %273 = call i32 @FAIL_ON(i32 %272)
  %274 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %275 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %274, i32 0, i32 640)
  %276 = icmp ne i32 %275, 2560
  %277 = zext i1 %276 to i32
  %278 = call i32 @FAIL_ON(i32 %277)
  %279 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %280 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %279, i32 0, i32 1024)
  %281 = icmp ne i32 %280, 4096
  %282 = zext i1 %281 to i32
  %283 = call i32 @FAIL_ON(i32 %282)
  %284 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %285 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %284, i32 0, i32 1920)
  %286 = icmp ne i32 %285, 7680
  %287 = zext i1 %286 to i32
  %288 = call i32 @FAIL_ON(i32 %287)
  %289 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %290 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %289, i32 0, i32 4096)
  %291 = icmp ne i32 %290, 16384
  %292 = zext i1 %291 to i32
  %293 = call i32 @FAIL_ON(i32 %292)
  %294 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %295 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %294, i32 0, i32 671)
  %296 = icmp ne i32 %295, 2684
  %297 = zext i1 %296 to i32
  %298 = call i32 @FAIL_ON(i32 %297)
  %299 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %300 = load i32, i32* @UINT_MAX, align 4
  %301 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %299, i32 0, i32 %300)
  %302 = load i32, i32* @UINT_MAX, align 4
  %303 = mul nsw i32 %302, 4
  %304 = icmp ne i32 %301, %303
  %305 = zext i1 %304 to i32
  %306 = call i32 @FAIL_ON(i32 %305)
  %307 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %308 = load i32, i32* @UINT_MAX, align 4
  %309 = sub nsw i32 %308, 1
  %310 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %307, i32 0, i32 %309)
  %311 = load i32, i32* @UINT_MAX, align 4
  %312 = sub nsw i32 %311, 1
  %313 = mul nsw i32 %312, 4
  %314 = icmp ne i32 %310, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @FAIL_ON(i32 %315)
  %317 = load i32, i32* @DRM_FORMAT_NV12, align 4
  %318 = call %struct.drm_format_info* @drm_format_info(i32 %317)
  store %struct.drm_format_info* %318, %struct.drm_format_info** %3, align 8
  %319 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %320 = icmp ne %struct.drm_format_info* %319, null
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = call i32 @FAIL_ON(i32 %322)
  %324 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %325 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %324, i32 0, i32 0)
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i32
  %328 = call i32 @FAIL_ON(i32 %327)
  %329 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %330 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %329, i32 1, i32 0)
  %331 = icmp ne i32 %330, 0
  %332 = zext i1 %331 to i32
  %333 = call i32 @FAIL_ON(i32 %332)
  %334 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %335 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %334, i32 -1, i32 0)
  %336 = icmp ne i32 %335, 0
  %337 = zext i1 %336 to i32
  %338 = call i32 @FAIL_ON(i32 %337)
  %339 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %340 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %339, i32 2, i32 0)
  %341 = icmp ne i32 %340, 0
  %342 = zext i1 %341 to i32
  %343 = call i32 @FAIL_ON(i32 %342)
  %344 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %345 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %344, i32 0, i32 1)
  %346 = icmp ne i32 %345, 1
  %347 = zext i1 %346 to i32
  %348 = call i32 @FAIL_ON(i32 %347)
  %349 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %350 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %349, i32 1, i32 1)
  %351 = icmp ne i32 %350, 2
  %352 = zext i1 %351 to i32
  %353 = call i32 @FAIL_ON(i32 %352)
  %354 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %355 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %354, i32 0, i32 2)
  %356 = icmp ne i32 %355, 2
  %357 = zext i1 %356 to i32
  %358 = call i32 @FAIL_ON(i32 %357)
  %359 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %360 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %359, i32 1, i32 1)
  %361 = icmp ne i32 %360, 2
  %362 = zext i1 %361 to i32
  %363 = call i32 @FAIL_ON(i32 %362)
  %364 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %365 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %364, i32 0, i32 640)
  %366 = icmp ne i32 %365, 640
  %367 = zext i1 %366 to i32
  %368 = call i32 @FAIL_ON(i32 %367)
  %369 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %370 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %369, i32 1, i32 320)
  %371 = icmp ne i32 %370, 640
  %372 = zext i1 %371 to i32
  %373 = call i32 @FAIL_ON(i32 %372)
  %374 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %375 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %374, i32 0, i32 1024)
  %376 = icmp ne i32 %375, 1024
  %377 = zext i1 %376 to i32
  %378 = call i32 @FAIL_ON(i32 %377)
  %379 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %380 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %379, i32 1, i32 512)
  %381 = icmp ne i32 %380, 1024
  %382 = zext i1 %381 to i32
  %383 = call i32 @FAIL_ON(i32 %382)
  %384 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %385 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %384, i32 0, i32 1920)
  %386 = icmp ne i32 %385, 1920
  %387 = zext i1 %386 to i32
  %388 = call i32 @FAIL_ON(i32 %387)
  %389 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %390 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %389, i32 1, i32 960)
  %391 = icmp ne i32 %390, 1920
  %392 = zext i1 %391 to i32
  %393 = call i32 @FAIL_ON(i32 %392)
  %394 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %395 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %394, i32 0, i32 4096)
  %396 = icmp ne i32 %395, 4096
  %397 = zext i1 %396 to i32
  %398 = call i32 @FAIL_ON(i32 %397)
  %399 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %400 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %399, i32 1, i32 2048)
  %401 = icmp ne i32 %400, 4096
  %402 = zext i1 %401 to i32
  %403 = call i32 @FAIL_ON(i32 %402)
  %404 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %405 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %404, i32 0, i32 671)
  %406 = icmp ne i32 %405, 671
  %407 = zext i1 %406 to i32
  %408 = call i32 @FAIL_ON(i32 %407)
  %409 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %410 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %409, i32 1, i32 336)
  %411 = icmp ne i32 %410, 672
  %412 = zext i1 %411 to i32
  %413 = call i32 @FAIL_ON(i32 %412)
  %414 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %415 = load i32, i32* @UINT_MAX, align 4
  %416 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %414, i32 0, i32 %415)
  %417 = load i32, i32* @UINT_MAX, align 4
  %418 = icmp ne i32 %416, %417
  %419 = zext i1 %418 to i32
  %420 = call i32 @FAIL_ON(i32 %419)
  %421 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %422 = load i32, i32* @UINT_MAX, align 4
  %423 = sdiv i32 %422, 2
  %424 = add nsw i32 %423, 1
  %425 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %421, i32 1, i32 %424)
  %426 = load i32, i32* @UINT_MAX, align 4
  %427 = add nsw i32 %426, 1
  %428 = icmp ne i32 %425, %427
  %429 = zext i1 %428 to i32
  %430 = call i32 @FAIL_ON(i32 %429)
  %431 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %432 = load i32, i32* @UINT_MAX, align 4
  %433 = sub nsw i32 %432, 1
  %434 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %431, i32 0, i32 %433)
  %435 = load i32, i32* @UINT_MAX, align 4
  %436 = sub nsw i32 %435, 1
  %437 = icmp ne i32 %434, %436
  %438 = zext i1 %437 to i32
  %439 = call i32 @FAIL_ON(i32 %438)
  %440 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %441 = load i32, i32* @UINT_MAX, align 4
  %442 = sub nsw i32 %441, 1
  %443 = sdiv i32 %442, 2
  %444 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %440, i32 1, i32 %443)
  %445 = load i32, i32* @UINT_MAX, align 4
  %446 = sub nsw i32 %445, 1
  %447 = icmp ne i32 %444, %446
  %448 = zext i1 %447 to i32
  %449 = call i32 @FAIL_ON(i32 %448)
  %450 = load i32, i32* @DRM_FORMAT_YUV422, align 4
  %451 = call %struct.drm_format_info* @drm_format_info(i32 %450)
  store %struct.drm_format_info* %451, %struct.drm_format_info** %3, align 8
  %452 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %453 = icmp ne %struct.drm_format_info* %452, null
  %454 = xor i1 %453, true
  %455 = zext i1 %454 to i32
  %456 = call i32 @FAIL_ON(i32 %455)
  %457 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %458 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %457, i32 0, i32 0)
  %459 = icmp ne i32 %458, 0
  %460 = zext i1 %459 to i32
  %461 = call i32 @FAIL_ON(i32 %460)
  %462 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %463 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %462, i32 1, i32 0)
  %464 = icmp ne i32 %463, 0
  %465 = zext i1 %464 to i32
  %466 = call i32 @FAIL_ON(i32 %465)
  %467 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %468 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %467, i32 2, i32 0)
  %469 = icmp ne i32 %468, 0
  %470 = zext i1 %469 to i32
  %471 = call i32 @FAIL_ON(i32 %470)
  %472 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %473 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %472, i32 -1, i32 0)
  %474 = icmp ne i32 %473, 0
  %475 = zext i1 %474 to i32
  %476 = call i32 @FAIL_ON(i32 %475)
  %477 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %478 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %477, i32 3, i32 0)
  %479 = icmp ne i32 %478, 0
  %480 = zext i1 %479 to i32
  %481 = call i32 @FAIL_ON(i32 %480)
  %482 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %483 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %482, i32 0, i32 1)
  %484 = icmp ne i32 %483, 1
  %485 = zext i1 %484 to i32
  %486 = call i32 @FAIL_ON(i32 %485)
  %487 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %488 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %487, i32 1, i32 1)
  %489 = icmp ne i32 %488, 1
  %490 = zext i1 %489 to i32
  %491 = call i32 @FAIL_ON(i32 %490)
  %492 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %493 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %492, i32 2, i32 1)
  %494 = icmp ne i32 %493, 1
  %495 = zext i1 %494 to i32
  %496 = call i32 @FAIL_ON(i32 %495)
  %497 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %498 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %497, i32 0, i32 2)
  %499 = icmp ne i32 %498, 2
  %500 = zext i1 %499 to i32
  %501 = call i32 @FAIL_ON(i32 %500)
  %502 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %503 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %502, i32 1, i32 2)
  %504 = icmp ne i32 %503, 2
  %505 = zext i1 %504 to i32
  %506 = call i32 @FAIL_ON(i32 %505)
  %507 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %508 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %507, i32 2, i32 2)
  %509 = icmp ne i32 %508, 2
  %510 = zext i1 %509 to i32
  %511 = call i32 @FAIL_ON(i32 %510)
  %512 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %513 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %512, i32 0, i32 640)
  %514 = icmp ne i32 %513, 640
  %515 = zext i1 %514 to i32
  %516 = call i32 @FAIL_ON(i32 %515)
  %517 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %518 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %517, i32 1, i32 320)
  %519 = icmp ne i32 %518, 320
  %520 = zext i1 %519 to i32
  %521 = call i32 @FAIL_ON(i32 %520)
  %522 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %523 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %522, i32 2, i32 320)
  %524 = icmp ne i32 %523, 320
  %525 = zext i1 %524 to i32
  %526 = call i32 @FAIL_ON(i32 %525)
  %527 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %528 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %527, i32 0, i32 1024)
  %529 = icmp ne i32 %528, 1024
  %530 = zext i1 %529 to i32
  %531 = call i32 @FAIL_ON(i32 %530)
  %532 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %533 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %532, i32 1, i32 512)
  %534 = icmp ne i32 %533, 512
  %535 = zext i1 %534 to i32
  %536 = call i32 @FAIL_ON(i32 %535)
  %537 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %538 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %537, i32 2, i32 512)
  %539 = icmp ne i32 %538, 512
  %540 = zext i1 %539 to i32
  %541 = call i32 @FAIL_ON(i32 %540)
  %542 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %543 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %542, i32 0, i32 1920)
  %544 = icmp ne i32 %543, 1920
  %545 = zext i1 %544 to i32
  %546 = call i32 @FAIL_ON(i32 %545)
  %547 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %548 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %547, i32 1, i32 960)
  %549 = icmp ne i32 %548, 960
  %550 = zext i1 %549 to i32
  %551 = call i32 @FAIL_ON(i32 %550)
  %552 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %553 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %552, i32 2, i32 960)
  %554 = icmp ne i32 %553, 960
  %555 = zext i1 %554 to i32
  %556 = call i32 @FAIL_ON(i32 %555)
  %557 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %558 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %557, i32 0, i32 4096)
  %559 = icmp ne i32 %558, 4096
  %560 = zext i1 %559 to i32
  %561 = call i32 @FAIL_ON(i32 %560)
  %562 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %563 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %562, i32 1, i32 2048)
  %564 = icmp ne i32 %563, 2048
  %565 = zext i1 %564 to i32
  %566 = call i32 @FAIL_ON(i32 %565)
  %567 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %568 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %567, i32 2, i32 2048)
  %569 = icmp ne i32 %568, 2048
  %570 = zext i1 %569 to i32
  %571 = call i32 @FAIL_ON(i32 %570)
  %572 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %573 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %572, i32 0, i32 671)
  %574 = icmp ne i32 %573, 671
  %575 = zext i1 %574 to i32
  %576 = call i32 @FAIL_ON(i32 %575)
  %577 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %578 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %577, i32 1, i32 336)
  %579 = icmp ne i32 %578, 336
  %580 = zext i1 %579 to i32
  %581 = call i32 @FAIL_ON(i32 %580)
  %582 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %583 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %582, i32 2, i32 336)
  %584 = icmp ne i32 %583, 336
  %585 = zext i1 %584 to i32
  %586 = call i32 @FAIL_ON(i32 %585)
  %587 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %588 = load i32, i32* @UINT_MAX, align 4
  %589 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %587, i32 0, i32 %588)
  %590 = load i32, i32* @UINT_MAX, align 4
  %591 = icmp ne i32 %589, %590
  %592 = zext i1 %591 to i32
  %593 = call i32 @FAIL_ON(i32 %592)
  %594 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %595 = load i32, i32* @UINT_MAX, align 4
  %596 = sdiv i32 %595, 2
  %597 = add nsw i32 %596, 1
  %598 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %594, i32 1, i32 %597)
  %599 = load i32, i32* @UINT_MAX, align 4
  %600 = sdiv i32 %599, 2
  %601 = add nsw i32 %600, 1
  %602 = icmp ne i32 %598, %601
  %603 = zext i1 %602 to i32
  %604 = call i32 @FAIL_ON(i32 %603)
  %605 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %606 = load i32, i32* @UINT_MAX, align 4
  %607 = sdiv i32 %606, 2
  %608 = add nsw i32 %607, 1
  %609 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %605, i32 2, i32 %608)
  %610 = load i32, i32* @UINT_MAX, align 4
  %611 = sdiv i32 %610, 2
  %612 = add nsw i32 %611, 1
  %613 = icmp ne i32 %609, %612
  %614 = zext i1 %613 to i32
  %615 = call i32 @FAIL_ON(i32 %614)
  %616 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %617 = load i32, i32* @UINT_MAX, align 4
  %618 = sub nsw i32 %617, 1
  %619 = sdiv i32 %618, 2
  %620 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %616, i32 0, i32 %619)
  %621 = load i32, i32* @UINT_MAX, align 4
  %622 = sub nsw i32 %621, 1
  %623 = sdiv i32 %622, 2
  %624 = icmp ne i32 %620, %623
  %625 = zext i1 %624 to i32
  %626 = call i32 @FAIL_ON(i32 %625)
  %627 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %628 = load i32, i32* @UINT_MAX, align 4
  %629 = sub nsw i32 %628, 1
  %630 = sdiv i32 %629, 2
  %631 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %627, i32 1, i32 %630)
  %632 = load i32, i32* @UINT_MAX, align 4
  %633 = sub nsw i32 %632, 1
  %634 = sdiv i32 %633, 2
  %635 = icmp ne i32 %631, %634
  %636 = zext i1 %635 to i32
  %637 = call i32 @FAIL_ON(i32 %636)
  %638 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %639 = load i32, i32* @UINT_MAX, align 4
  %640 = sub nsw i32 %639, 1
  %641 = sdiv i32 %640, 2
  %642 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %638, i32 2, i32 %641)
  %643 = load i32, i32* @UINT_MAX, align 4
  %644 = sub nsw i32 %643, 1
  %645 = sdiv i32 %644, 2
  %646 = icmp ne i32 %642, %645
  %647 = zext i1 %646 to i32
  %648 = call i32 @FAIL_ON(i32 %647)
  %649 = load i32, i32* @DRM_FORMAT_X0L2, align 4
  %650 = call %struct.drm_format_info* @drm_format_info(i32 %649)
  store %struct.drm_format_info* %650, %struct.drm_format_info** %3, align 8
  %651 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %652 = icmp ne %struct.drm_format_info* %651, null
  %653 = xor i1 %652, true
  %654 = zext i1 %653 to i32
  %655 = call i32 @FAIL_ON(i32 %654)
  %656 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %657 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %656, i32 0, i32 0)
  %658 = icmp ne i32 %657, 0
  %659 = zext i1 %658 to i32
  %660 = call i32 @FAIL_ON(i32 %659)
  %661 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %662 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %661, i32 -1, i32 0)
  %663 = icmp ne i32 %662, 0
  %664 = zext i1 %663 to i32
  %665 = call i32 @FAIL_ON(i32 %664)
  %666 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %667 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %666, i32 1, i32 0)
  %668 = icmp ne i32 %667, 0
  %669 = zext i1 %668 to i32
  %670 = call i32 @FAIL_ON(i32 %669)
  %671 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %672 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %671, i32 0, i32 1)
  %673 = icmp ne i32 %672, 2
  %674 = zext i1 %673 to i32
  %675 = call i32 @FAIL_ON(i32 %674)
  %676 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %677 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %676, i32 0, i32 2)
  %678 = icmp ne i32 %677, 4
  %679 = zext i1 %678 to i32
  %680 = call i32 @FAIL_ON(i32 %679)
  %681 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %682 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %681, i32 0, i32 640)
  %683 = icmp ne i32 %682, 1280
  %684 = zext i1 %683 to i32
  %685 = call i32 @FAIL_ON(i32 %684)
  %686 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %687 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %686, i32 0, i32 1024)
  %688 = icmp ne i32 %687, 2048
  %689 = zext i1 %688 to i32
  %690 = call i32 @FAIL_ON(i32 %689)
  %691 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %692 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %691, i32 0, i32 1920)
  %693 = icmp ne i32 %692, 3840
  %694 = zext i1 %693 to i32
  %695 = call i32 @FAIL_ON(i32 %694)
  %696 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %697 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %696, i32 0, i32 4096)
  %698 = icmp ne i32 %697, 8192
  %699 = zext i1 %698 to i32
  %700 = call i32 @FAIL_ON(i32 %699)
  %701 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %702 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %701, i32 0, i32 671)
  %703 = icmp ne i32 %702, 1342
  %704 = zext i1 %703 to i32
  %705 = call i32 @FAIL_ON(i32 %704)
  %706 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %707 = load i32, i32* @UINT_MAX, align 4
  %708 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %706, i32 0, i32 %707)
  %709 = load i32, i32* @UINT_MAX, align 4
  %710 = mul nsw i32 %709, 2
  %711 = icmp ne i32 %708, %710
  %712 = zext i1 %711 to i32
  %713 = call i32 @FAIL_ON(i32 %712)
  %714 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %715 = load i32, i32* @UINT_MAX, align 4
  %716 = sub nsw i32 %715, 1
  %717 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %714, i32 0, i32 %716)
  %718 = load i32, i32* @UINT_MAX, align 4
  %719 = sub nsw i32 %718, 1
  %720 = mul nsw i32 %719, 2
  %721 = icmp ne i32 %717, %720
  %722 = zext i1 %721 to i32
  %723 = call i32 @FAIL_ON(i32 %722)
  ret i32 0
}

declare dso_local i32 @FAIL_ON(i32) #1

declare dso_local i32 @drm_format_info_min_pitch(%struct.drm_format_info*, i32, i32) #1

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
