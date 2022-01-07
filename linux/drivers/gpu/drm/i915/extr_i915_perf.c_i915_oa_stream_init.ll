; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_oa_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_oa_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, i32, i64, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_12__, i32*, i32, i64, %struct.drm_i915_private* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.drm_i915_private = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.i915_perf_stream*, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drm_i915_perf_open_param = type { i32 }
%struct.perf_open_properties = type { i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"OA metrics weren't advertised via sysfs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SAMPLE_OA_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Only OA report sampling supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"OA unit not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"OA unit already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"OA report format not specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid context id to filter with\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Invalid OA config id=%i\0A\00", align 1
@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@i915_oa_stream_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Unable to enable metric set\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@oa_poll_check_timer_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_perf_stream*, %struct.drm_i915_perf_open_param*, %struct.perf_open_properties*)* @i915_oa_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_oa_stream_init(%struct.i915_perf_stream* %0, %struct.drm_i915_perf_open_param* %1, %struct.perf_open_properties* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_perf_stream*, align 8
  %6 = alloca %struct.drm_i915_perf_open_param*, align 8
  %7 = alloca %struct.perf_open_properties*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %5, align 8
  store %struct.drm_i915_perf_open_param* %1, %struct.drm_i915_perf_open_param** %6, align 8
  store %struct.perf_open_properties* %2, %struct.perf_open_properties** %7, align 8
  %11 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %12 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %11, i32 0, i32 11
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %8, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %265

23:                                               ; preds = %3
  %24 = load %struct.perf_open_properties*, %struct.perf_open_properties** %7, align 8
  %25 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SAMPLE_OA_REPORT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %265

34:                                               ; preds = %23
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %38, align 8
  %40 = icmp ne i32 (%struct.i915_perf_stream*)* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %265

45:                                               ; preds = %34
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %48, align 8
  %50 = icmp ne %struct.i915_perf_stream* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %265

55:                                               ; preds = %45
  %56 = load %struct.perf_open_properties*, %struct.perf_open_properties** %7, align 8
  %57 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %265

64:                                               ; preds = %55
  %65 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %66 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %65, i32 0, i32 0
  store i32 4, i32* %66, align 8
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.perf_open_properties*, %struct.perf_open_properties** %7, align 8
  %72 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @SAMPLE_OA_REPORT, align 4
  %78 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %79 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %84 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %89 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %92 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @WARN_ON(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %64
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %265

102:                                              ; preds = %64
  %103 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %104 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load %struct.perf_open_properties*, %struct.perf_open_properties** %7, align 8
  %108 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %114 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  %116 = load %struct.perf_open_properties*, %struct.perf_open_properties** %7, align 8
  %117 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %120 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %119, i32 0, i32 10
  store i64 %118, i64* %120, align 8
  %121 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %122 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %121, i32 0, i32 10
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %102
  %126 = load %struct.perf_open_properties*, %struct.perf_open_properties** %7, align 8
  %127 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %130 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %125, %102
  %132 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %133 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %138 = call i32 @oa_get_render_ctx_id(%struct.i915_perf_stream* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %4, align 4
  br label %265

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %131
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %147 = load %struct.perf_open_properties*, %struct.perf_open_properties** %7, align 8
  %148 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %151 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %150, i32 0, i32 4
  %152 = call i32 @get_oa_config(%struct.drm_i915_private* %146, i32 %149, i32* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load %struct.perf_open_properties*, %struct.perf_open_properties** %7, align 8
  %157 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  br label %255

160:                                              ; preds = %145
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %162 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %161, i32 0, i32 0
  %163 = call i32 @intel_runtime_pm_get(i32* %162)
  %164 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %165 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %167 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %166, i32 0, i32 1
  %168 = load i32, i32* @FORCEWAKE_ALL, align 4
  %169 = call i32 @intel_uncore_forcewake_get(i32* %167, i32 %168)
  %170 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %171 = call i32 @alloc_oa_buffer(%struct.i915_perf_stream* %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %160
  br label %239

175:                                              ; preds = %160
  %176 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %177 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %176, i32 0, i32 2
  %178 = call i32 @i915_mutex_lock_interruptible(%struct.TYPE_11__* %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %236

182:                                              ; preds = %175
  %183 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %184 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %183, i32 0, i32 8
  store i32* @i915_oa_stream_ops, i32** %184, align 8
  %185 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %186 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %187 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  store %struct.i915_perf_stream* %185, %struct.i915_perf_stream** %188, align 8
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %190 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %192, align 8
  %194 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %195 = call i32 %193(%struct.i915_perf_stream* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %182
  %199 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %221

200:                                              ; preds = %182
  %201 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %202 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = call i32 @mutex_unlock(i32* %203)
  %205 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %206 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %205, i32 0, i32 7
  %207 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %208 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %209 = call i32 @hrtimer_init(%struct.TYPE_12__* %206, i32 %207, i32 %208)
  %210 = load i32, i32* @oa_poll_check_timer_cb, align 4
  %211 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %212 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  %214 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %215 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %214, i32 0, i32 6
  %216 = call i32 @init_waitqueue_head(i32* %215)
  %217 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %218 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = call i32 @spin_lock_init(i32* %219)
  store i32 0, i32* %4, align 4
  br label %265

221:                                              ; preds = %198
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %223 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  store %struct.i915_perf_stream* null, %struct.i915_perf_stream** %224, align 8
  %225 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %226 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %228, align 8
  %230 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %231 = call i32 %229(%struct.i915_perf_stream* %230)
  %232 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %233 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = call i32 @mutex_unlock(i32* %234)
  br label %236

236:                                              ; preds = %221, %181
  %237 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %238 = call i32 @free_oa_buffer(%struct.i915_perf_stream* %237)
  br label %239

239:                                              ; preds = %236, %174
  %240 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %241 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %242 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @put_oa_config(%struct.drm_i915_private* %240, i32 %243)
  %245 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %246 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %245, i32 0, i32 1
  %247 = load i32, i32* @FORCEWAKE_ALL, align 4
  %248 = call i32 @intel_uncore_forcewake_put(i32* %246, i32 %247)
  %249 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %250 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %249, i32 0, i32 0
  %251 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %252 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @intel_runtime_pm_put(i32* %250, i32 %253)
  br label %255

255:                                              ; preds = %239, %155
  %256 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %257 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %262 = call i32 @oa_put_render_ctx_id(%struct.i915_perf_stream* %261)
  br label %263

263:                                              ; preds = %260, %255
  %264 = load i32, i32* %10, align 4
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %263, %200, %141, %99, %60, %51, %41, %30, %19
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @oa_get_render_ctx_id(%struct.i915_perf_stream*) #1

declare dso_local i32 @get_oa_config(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @intel_uncore_forcewake_get(i32*, i32) #1

declare dso_local i32 @alloc_oa_buffer(%struct.i915_perf_stream*) #1

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @free_oa_buffer(%struct.i915_perf_stream*) #1

declare dso_local i32 @put_oa_config(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

declare dso_local i32 @oa_put_render_ctx_id(%struct.i915_perf_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
