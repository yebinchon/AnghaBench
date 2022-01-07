; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_intel_execlists_create_virtual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_intel_execlists_create_virtual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.i915_gem_context = type { i32 }
%struct.intel_engine_cs = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.virtual_engine = type { %struct.intel_context, %struct.TYPE_12__, i32, %struct.intel_engine_cs**, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OTHER_CLASS = common dso_local global i64 0, align 8
@I915_ENGINE_CLASS_INVALID = common dso_local global i32 0, align 4
@I915_ENGINE_CLASS_INVALID_VIRTUAL = common dso_local global i32 0, align 4
@ALL_ENGINES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@ENGINE_VIRTUAL = common dso_local global i32 0, align 4
@virtual_context_ops = common dso_local global i32 0, align 4
@execlists_request_alloc = common dso_local global i32 0, align 4
@i915_schedule = common dso_local global i32 0, align 4
@virtual_submit_request = common dso_local global i32 0, align 4
@virtual_bond_execute = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@virtual_submission_tasklet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"duplicate %s entry in load balancer\0A\00", align 1
@execlists_submission_tasklet = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"invalid mixing of engine class, sibling %d, already %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"v%dx%d\00", align 1
@I915_ENGINE_IS_VIRTUAL = common dso_local global i32 0, align 4
@CONTEXT_ALLOC_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_context* @intel_execlists_create_virtual(%struct.i915_gem_context* %0, %struct.intel_engine_cs** %1, i32 %2) #0 {
  %4 = alloca %struct.intel_context*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.intel_engine_cs**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtual_engine*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_engine_cs*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %5, align 8
  store %struct.intel_engine_cs** %1, %struct.intel_engine_cs*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.intel_context* @ERR_PTR(i32 %16)
  store %struct.intel_context* %17, %struct.intel_context** %4, align 8
  br label %336

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %23 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %6, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %23, i64 0
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %24, align 8
  %26 = call %struct.intel_context* @intel_context_create(%struct.i915_gem_context* %22, %struct.intel_engine_cs* %25)
  store %struct.intel_context* %26, %struct.intel_context** %4, align 8
  br label %336

27:                                               ; preds = %18
  %28 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %29 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @struct_size(%struct.virtual_engine* %28, %struct.intel_engine_cs** %29, i32 %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.virtual_engine* @kzalloc(i32 %31, i32 %32)
  store %struct.virtual_engine* %33, %struct.virtual_engine** %8, align 8
  %34 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %35 = icmp ne %struct.virtual_engine* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.intel_context* @ERR_PTR(i32 %38)
  store %struct.intel_context* %39, %struct.intel_context** %4, align 8
  br label %336

40:                                               ; preds = %27
  %41 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %42 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %45 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 21
  store i32 %43, i32* %46, align 4
  %47 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %6, align 8
  %48 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %47, i64 0
  %49 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %48, align 8
  %50 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %53 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 20
  store i32 %51, i32* %54, align 8
  %55 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %56 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  %58 = load i64, i64* @OTHER_CLASS, align 8
  %59 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %60 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load i32, i32* @I915_ENGINE_CLASS_INVALID, align 4
  %63 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %64 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 11
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @I915_ENGINE_CLASS_INVALID_VIRTUAL, align 4
  %67 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %68 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 19
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @ALL_ENGINES, align 4
  %71 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %72 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 18
  store i32 %70, i32* %73, align 8
  %74 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %75 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %77, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %80 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %79, i32 0, i32 1
  %81 = load i32, i32* @ENGINE_VIRTUAL, align 4
  %82 = call i32 @intel_engine_init_active(%struct.TYPE_12__* %80, i32 %81)
  %83 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %84 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %83, i32 0, i32 1
  %85 = call i32 @intel_engine_init_execlists(%struct.TYPE_12__* %84)
  %86 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %87 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 17
  store i32* @virtual_context_ops, i32** %88, align 8
  %89 = load i32, i32* @execlists_request_alloc, align 4
  %90 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %91 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 16
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @i915_schedule, align 4
  %94 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %95 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 15
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* @virtual_submit_request, align 4
  %98 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %99 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 14
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @virtual_bond_execute, align 4
  %102 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %103 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 13
  store i32 %101, i32* %104, align 8
  %105 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %106 = call i32 @virtual_queue(%struct.virtual_engine* %105)
  %107 = call i32 @INIT_LIST_HEAD(i32 %106)
  %108 = load i32, i32* @INT_MIN, align 4
  %109 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %110 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 12
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  %113 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %114 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 12
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* @virtual_submission_tasklet, align 4
  %118 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %119 = ptrtoint %struct.virtual_engine* %118 to i64
  %120 = call i32 @tasklet_init(i32* %116, i32 %117, i64 %119)
  %121 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %122 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %121, i32 0, i32 0
  %123 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %124 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %125 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %124, i32 0, i32 1
  %126 = call i32 @intel_context_init(%struct.intel_context* %122, %struct.i915_gem_context* %123, %struct.TYPE_12__* %125)
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %303, %40
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %306

131:                                              ; preds = %127
  %132 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %132, i64 %134
  %136 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %135, align 8
  store %struct.intel_engine_cs* %136, %struct.intel_engine_cs** %11, align 8
  %137 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %138 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @is_power_of_2(i32 %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @GEM_BUG_ON(i32 %143)
  %145 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %146 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %149 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %147, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %131
  %155 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %156 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %10, align 4
  br label %330

162:                                              ; preds = %131
  %163 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %164 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %163, i32 0, i32 11
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @execlists_submission_tasklet, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* @ENODEV, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %10, align 4
  br label %330

173:                                              ; preds = %162
  %174 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %175 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %174, i32 0, i32 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %178 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = call i32 @RB_EMPTY_NODE(i32* %181)
  %183 = call i32 @GEM_BUG_ON(i32 %182)
  %184 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %185 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %184, i32 0, i32 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %188 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = call i32 @RB_CLEAR_NODE(i32* %191)
  %193 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %194 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %195 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %194, i32 0, i32 3
  %196 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %195, align 8
  %197 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %198 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %196, i64 %201
  store %struct.intel_engine_cs* %193, %struct.intel_engine_cs** %202, align 8
  %203 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %204 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %207 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %205
  store i32 %210, i32* %208, align 8
  %211 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %212 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @OTHER_CLASS, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %238

217:                                              ; preds = %173
  %218 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %219 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %223 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %221, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %217
  %227 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %228 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %231 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %229, i64 %233)
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %10, align 4
  br label %330

237:                                              ; preds = %217
  br label %303

238:                                              ; preds = %173
  %239 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %240 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %243 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  store i64 %241, i64* %244, align 8
  %245 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %246 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %249 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 11
  store i32 %247, i32* %250, align 4
  %251 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %252 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %256 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %254, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %258, i32 %259)
  %261 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %262 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %265 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 9
  store i32 %263, i32* %266, align 4
  %267 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %268 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %271 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 8
  store i32 %269, i32* %272, align 8
  %273 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %274 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %277 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 7
  store i32 %275, i32* %278, align 4
  %279 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %280 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %283 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 6
  store i32 %281, i32* %284, align 8
  %285 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %286 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %289 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 5
  store i32 %287, i32* %290, align 4
  %291 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %292 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %295 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 4
  store i32 %293, i32* %296, align 8
  %297 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %298 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %301 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 3
  store i32 %299, i32* %302, align 4
  br label %303

303:                                              ; preds = %238, %237
  %304 = load i32, i32* %9, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %9, align 4
  br label %127

306:                                              ; preds = %127
  %307 = load i32, i32* @I915_ENGINE_IS_VIRTUAL, align 4
  %308 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %309 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %307
  store i32 %312, i32* %310, align 4
  %313 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %314 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %313, i32 0, i32 0
  %315 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %6, align 8
  %316 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %315, i64 0
  %317 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %316, align 8
  %318 = call i32 @__execlists_context_alloc(%struct.intel_context* %314, %struct.intel_engine_cs* %317)
  store i32 %318, i32* %10, align 4
  %319 = load i32, i32* %10, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %306
  br label %330

322:                                              ; preds = %306
  %323 = load i32, i32* @CONTEXT_ALLOC_BIT, align 4
  %324 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %325 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %325, i32 0, i32 0
  %327 = call i32 @__set_bit(i32 %323, i32* %326)
  %328 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %329 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %328, i32 0, i32 0
  store %struct.intel_context* %329, %struct.intel_context** %4, align 8
  br label %336

330:                                              ; preds = %321, %226, %170, %154
  %331 = load %struct.virtual_engine*, %struct.virtual_engine** %8, align 8
  %332 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %331, i32 0, i32 0
  %333 = call i32 @intel_context_put(%struct.intel_context* %332)
  %334 = load i32, i32* %10, align 4
  %335 = call %struct.intel_context* @ERR_PTR(i32 %334)
  store %struct.intel_context* %335, %struct.intel_context** %4, align 8
  br label %336

336:                                              ; preds = %330, %322, %36, %21, %14
  %337 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  ret %struct.intel_context* %337
}

declare dso_local %struct.intel_context* @ERR_PTR(i32) #1

declare dso_local %struct.intel_context* @intel_context_create(%struct.i915_gem_context*, %struct.intel_engine_cs*) #1

declare dso_local %struct.virtual_engine* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.virtual_engine*, %struct.intel_engine_cs**, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @intel_engine_init_active(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @intel_engine_init_execlists(%struct.TYPE_12__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32) #1

declare dso_local i32 @virtual_queue(%struct.virtual_engine*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @intel_context_init(%struct.intel_context*, %struct.i915_gem_context*, %struct.TYPE_12__*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @__execlists_context_alloc(%struct.intel_context*, %struct.intel_engine_cs*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
