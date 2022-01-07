; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_active_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_active_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.active_engine = type { i32, %struct.intel_engine_cs* }
%struct.intel_engine_cs = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.i915_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_file = type { %struct.TYPE_6__ }
%struct.i915_gem_context = type { %struct.TYPE_6__ }

@prng = common dso_local global i32 0, align 4
@TEST_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @active_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @active_engine(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.active_engine*, align 8
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca [8 x %struct.i915_request*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i915_request*, align 8
  %15 = alloca %struct.i915_request*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %17 = load i32, i32* @prng, align 4
  %18 = call i32 @I915_RND_STATE(i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = bitcast i8* %19 to %struct.active_engine*
  store %struct.active_engine* %20, %struct.active_engine** %4, align 8
  %21 = load %struct.active_engine*, %struct.active_engine** %4, align 8
  %22 = getelementptr inbounds %struct.active_engine, %struct.active_engine* %21, i32 0, i32 1
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %22, align 8
  store %struct.intel_engine_cs* %23, %struct.intel_engine_cs** %5, align 8
  %24 = bitcast [8 x %struct.i915_request*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 64, i1 false)
  %25 = getelementptr inbounds [8 x %struct.i915_request*], [8 x %struct.i915_request*]* %6, i64 0, i64 0
  %26 = call i64 @ARRAY_SIZE(%struct.i915_request** %25)
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %7, align 8
  %28 = alloca %struct.i915_gem_context*, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %29 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %30 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call %struct.i915_request* @mock_file(%struct.TYPE_8__* %31)
  %33 = bitcast %struct.i915_request* %32 to %struct.drm_file*
  store %struct.drm_file* %33, %struct.drm_file** %9, align 8
  %34 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %35 = bitcast %struct.drm_file* %34 to %struct.i915_request*
  %36 = call i64 @IS_ERR(%struct.i915_request* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %40 = bitcast %struct.drm_file* %39 to %struct.i915_request*
  %41 = call i32 @PTR_ERR(%struct.i915_request* %40)
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %203

42:                                               ; preds = %1
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %94, %42
  %44 = load i64, i64* %10, align 8
  %45 = bitcast %struct.i915_gem_context** %28 to %struct.i915_request**
  %46 = call i64 @ARRAY_SIZE(%struct.i915_request** %45)
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %97

48:                                               ; preds = %43
  %49 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %50 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %56 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %59 = bitcast %struct.drm_file* %58 to %struct.i915_request*
  %60 = call %struct.i915_request* @live_context(%struct.TYPE_8__* %57, %struct.i915_request* %59)
  %61 = bitcast %struct.i915_request* %60 to %struct.i915_gem_context*
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.i915_gem_context*, %struct.i915_gem_context** %28, i64 %62
  store %struct.i915_gem_context* %61, %struct.i915_gem_context** %63, align 8
  %64 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %65 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.i915_gem_context*, %struct.i915_gem_context** %28, i64 %70
  %72 = load %struct.i915_gem_context*, %struct.i915_gem_context** %71, align 8
  %73 = bitcast %struct.i915_gem_context* %72 to %struct.i915_request*
  %74 = call i64 @IS_ERR(%struct.i915_request* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %48
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.i915_gem_context*, %struct.i915_gem_context** %28, i64 %77
  %79 = load %struct.i915_gem_context*, %struct.i915_gem_context** %78, align 8
  %80 = bitcast %struct.i915_gem_context* %79 to %struct.i915_request*
  %81 = call i32 @PTR_ERR(%struct.i915_request* %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %86, %76
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %10, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.i915_gem_context*, %struct.i915_gem_context** %28, i64 %87
  %89 = load %struct.i915_gem_context*, %struct.i915_gem_context** %88, align 8
  %90 = bitcast %struct.i915_gem_context* %89 to %struct.i915_request*
  %91 = call i32 @i915_gem_context_put(%struct.i915_request* %90)
  br label %82

92:                                               ; preds = %82
  br label %195

93:                                               ; preds = %48
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  br label %43

97:                                               ; preds = %43
  br label %98

98:                                               ; preds = %173, %97
  %99 = call i32 (...) @kthread_should_stop()
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br i1 %101, label %102, label %175

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  %105 = getelementptr inbounds [8 x %struct.i915_request*], [8 x %struct.i915_request*]* %6, i64 0, i64 0
  %106 = call i64 @ARRAY_SIZE(%struct.i915_request** %105)
  %107 = sub i64 %106, 1
  %108 = and i64 %103, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [8 x %struct.i915_request*], [8 x %struct.i915_request*]* %6, i64 0, i64 %111
  %113 = load %struct.i915_request*, %struct.i915_request** %112, align 8
  store %struct.i915_request* %113, %struct.i915_request** %14, align 8
  %114 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %115 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = call i32 @mutex_lock(i32* %118)
  %120 = load i32, i32* %13, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.i915_gem_context*, %struct.i915_gem_context** %28, i64 %121
  %123 = load %struct.i915_gem_context*, %struct.i915_gem_context** %122, align 8
  %124 = bitcast %struct.i915_gem_context* %123 to %struct.i915_request*
  %125 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %126 = call %struct.i915_request* @igt_request_alloc(%struct.i915_request* %124, %struct.intel_engine_cs* %125)
  store %struct.i915_request* %126, %struct.i915_request** %15, align 8
  %127 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %128 = call i64 @IS_ERR(%struct.i915_request* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %102
  %131 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %132 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %138 = call i32 @PTR_ERR(%struct.i915_request* %137)
  store i32 %138, i32* %11, align 4
  br label %175

139:                                              ; preds = %102
  %140 = load %struct.active_engine*, %struct.active_engine** %4, align 8
  %141 = getelementptr inbounds %struct.active_engine, %struct.active_engine* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @TEST_PRIORITY, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = call i32 @i915_prandom_u32_max_state(i32 512, i32* @prng)
  %148 = load i32, i32* %13, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.i915_gem_context*, %struct.i915_gem_context** %28, i64 %149
  %151 = load %struct.i915_gem_context*, %struct.i915_gem_context** %150, align 8
  %152 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i32 %147, i32* %153, align 4
  br label %154

154:                                              ; preds = %146, %139
  %155 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %156 = call %struct.i915_request* @i915_request_get(%struct.i915_request* %155)
  %157 = load i32, i32* %13, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [8 x %struct.i915_request*], [8 x %struct.i915_request*]* %6, i64 0, i64 %158
  store %struct.i915_request* %156, %struct.i915_request** %159, align 8
  %160 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %161 = call i32 @i915_request_add(%struct.i915_request* %160)
  %162 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %163 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load %struct.i915_request*, %struct.i915_request** %14, align 8
  %169 = call i32 @active_request_put(%struct.i915_request* %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %154
  br label %175

173:                                              ; preds = %154
  %174 = call i32 (...) @cond_resched()
  br label %98

175:                                              ; preds = %172, %130, %98
  store i64 0, i64* %10, align 8
  br label %176

176:                                              ; preds = %191, %175
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds [8 x %struct.i915_request*], [8 x %struct.i915_request*]* %6, i64 0, i64 0
  %179 = call i64 @ARRAY_SIZE(%struct.i915_request** %178)
  %180 = icmp ult i64 %177, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %176
  %182 = load i64, i64* %10, align 8
  %183 = getelementptr inbounds [8 x %struct.i915_request*], [8 x %struct.i915_request*]* %6, i64 0, i64 %182
  %184 = load %struct.i915_request*, %struct.i915_request** %183, align 8
  %185 = call i32 @active_request_put(%struct.i915_request* %184)
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %16, align 4
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %188, %181
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %10, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %10, align 8
  br label %176

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194, %92
  %196 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %197 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %200 = bitcast %struct.drm_file* %199 to %struct.i915_request*
  %201 = call i32 @mock_file_free(%struct.TYPE_8__* %198, %struct.i915_request* %200)
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %203

203:                                              ; preds = %195, %38
  %204 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @I915_RND_STATE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(%struct.i915_request**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local %struct.i915_request* @mock_file(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_request*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_request* @live_context(%struct.TYPE_8__*, %struct.i915_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_gem_context_put(%struct.i915_request*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local %struct.i915_request* @igt_request_alloc(%struct.i915_request*, %struct.intel_engine_cs*) #1

declare dso_local i32 @i915_prandom_u32_max_state(i32, i32*) #1

declare dso_local %struct.i915_request* @i915_request_get(%struct.i915_request*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i32 @active_request_put(%struct.i915_request*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mock_file_free(%struct.TYPE_8__*, %struct.i915_request*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
