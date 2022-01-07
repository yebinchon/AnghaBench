; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_emit_rpcs_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_emit_rpcs_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.intel_context = type { i32, i32 }
%struct.i915_request = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.i915_vma*, i32, i32, i32)* }
%struct.i915_vma = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }

@PIN_USER = common dso_local global i32 0, align 4
@EXEC_OBJECT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, %struct.intel_context*, %struct.i915_request**)* @emit_rpcs_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_rpcs_query(%struct.drm_i915_gem_object* %0, %struct.intel_context* %1, %struct.i915_request** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.intel_context*, align 8
  %7 = alloca %struct.i915_request**, align 8
  %8 = alloca %struct.i915_request*, align 8
  %9 = alloca %struct.i915_vma*, align 8
  %10 = alloca %struct.i915_vma*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store %struct.intel_context* %1, %struct.intel_context** %6, align 8
  store %struct.i915_request** %2, %struct.i915_request*** %7, align 8
  %12 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %13 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @intel_engine_can_store_dword(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %21 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %22 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %20, i32 %23, i32* null)
  store %struct.i915_vma* %24, %struct.i915_vma** %10, align 8
  %25 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %26 = call i64 @IS_ERR(%struct.i915_vma* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.i915_vma* %29)
  store i32 %30, i32* %4, align 4
  br label %171

31:                                               ; preds = %3
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %33 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %32)
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %35 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %37 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %171

42:                                               ; preds = %31
  %43 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %44 = load i32, i32* @PIN_USER, align 4
  %45 = call i32 @i915_vma_pin(%struct.i915_vma* %43, i32 0, i32 0, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %171

50:                                               ; preds = %42
  %51 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %52 = call %struct.i915_vma* @rpcs_query_batch(%struct.i915_vma* %51)
  store %struct.i915_vma* %52, %struct.i915_vma** %9, align 8
  %53 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %54 = call i64 @IS_ERR(%struct.i915_vma* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %58 = call i32 @PTR_ERR(%struct.i915_vma* %57)
  store i32 %58, i32* %11, align 4
  br label %167

59:                                               ; preds = %50
  %60 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %61 = call %struct.i915_vma* @i915_request_create(%struct.intel_context* %60)
  %62 = bitcast %struct.i915_vma* %61 to %struct.i915_request*
  store %struct.i915_request* %62, %struct.i915_request** %8, align 8
  %63 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %64 = bitcast %struct.i915_request* %63 to %struct.i915_vma*
  %65 = call i64 @IS_ERR(%struct.i915_vma* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %69 = bitcast %struct.i915_request* %68 to %struct.i915_vma*
  %70 = call i32 @PTR_ERR(%struct.i915_vma* %69)
  store i32 %70, i32* %11, align 4
  br label %162

71:                                               ; preds = %59
  %72 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %73 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (%struct.i915_vma*, i32, i32, i32)*, i32 (%struct.i915_vma*, i32, i32, i32)** %75, align 8
  %77 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %78 = bitcast %struct.i915_request* %77 to %struct.i915_vma*
  %79 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %80 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %84 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 %76(%struct.i915_vma* %78, i32 %82, i32 %86, i32 0)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  br label %158

91:                                               ; preds = %71
  %92 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %93 = call i32 @i915_vma_lock(%struct.i915_vma* %92)
  %94 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %95 = bitcast %struct.i915_request* %94 to %struct.i915_vma*
  %96 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %97 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @i915_request_await_object(%struct.i915_vma* %95, i32 %98, i32 0)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %104 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %105 = bitcast %struct.i915_request* %104 to %struct.i915_vma*
  %106 = call i32 @i915_vma_move_to_active(%struct.i915_vma* %103, %struct.i915_vma* %105, i32 0)
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %102, %91
  %108 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %109 = call i32 @i915_vma_unlock(%struct.i915_vma* %108)
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %153

113:                                              ; preds = %107
  %114 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %115 = call i32 @i915_vma_lock(%struct.i915_vma* %114)
  %116 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %117 = bitcast %struct.i915_request* %116 to %struct.i915_vma*
  %118 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %119 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @i915_request_await_object(%struct.i915_vma* %117, i32 %120, i32 1)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %113
  %125 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %126 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %127 = bitcast %struct.i915_request* %126 to %struct.i915_vma*
  %128 = load i32, i32* @EXEC_OBJECT_WRITE, align 4
  %129 = call i32 @i915_vma_move_to_active(%struct.i915_vma* %125, %struct.i915_vma* %127, i32 %128)
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %124, %113
  %131 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %132 = call i32 @i915_vma_unlock(%struct.i915_vma* %131)
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %153

136:                                              ; preds = %130
  %137 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %138 = call i32 @i915_vma_unpin(%struct.i915_vma* %137)
  %139 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %140 = call i32 @i915_vma_close(%struct.i915_vma* %139)
  %141 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %142 = call i32 @i915_vma_put(%struct.i915_vma* %141)
  %143 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %144 = call i32 @i915_vma_unpin(%struct.i915_vma* %143)
  %145 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %146 = bitcast %struct.i915_request* %145 to %struct.i915_vma*
  %147 = call %struct.i915_vma* @i915_request_get(%struct.i915_vma* %146)
  %148 = bitcast %struct.i915_vma* %147 to %struct.i915_request*
  %149 = load %struct.i915_request**, %struct.i915_request*** %7, align 8
  store %struct.i915_request* %148, %struct.i915_request** %149, align 8
  %150 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %151 = bitcast %struct.i915_request* %150 to %struct.i915_vma*
  %152 = call i32 @i915_request_add(%struct.i915_vma* %151)
  store i32 0, i32* %4, align 4
  br label %171

153:                                              ; preds = %135, %112
  %154 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %155 = bitcast %struct.i915_request* %154 to %struct.i915_vma*
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @i915_request_skip(%struct.i915_vma* %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %90
  %159 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %160 = bitcast %struct.i915_request* %159 to %struct.i915_vma*
  %161 = call i32 @i915_request_add(%struct.i915_vma* %160)
  br label %162

162:                                              ; preds = %158, %67
  %163 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %164 = call i32 @i915_vma_unpin(%struct.i915_vma* %163)
  %165 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %166 = call i32 @i915_vma_put(%struct.i915_vma* %165)
  br label %167

167:                                              ; preds = %162, %56
  %168 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %169 = call i32 @i915_vma_unpin(%struct.i915_vma* %168)
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %136, %48, %40, %28
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_engine_can_store_dword(i32) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local %struct.i915_vma* @rpcs_query_batch(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_request_create(%struct.intel_context*) #1

declare dso_local i32 @i915_vma_lock(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_await_object(%struct.i915_vma*, i32, i32) #1

declare dso_local i32 @i915_vma_move_to_active(%struct.i915_vma*, %struct.i915_vma*, i32) #1

declare dso_local i32 @i915_vma_unlock(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_close(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_put(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_request_get(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_add(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_skip(%struct.i915_vma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
