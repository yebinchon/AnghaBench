; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_igt_gem_utils.c_igt_gpu_fill_dw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_igt_gem_utils.c_igt_gpu_fill_dw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.i915_gem_context = type { i32 }
%struct.intel_engine_cs = type { i32 (%struct.i915_vma.0*, i32, i32, i32)*, %struct.TYPE_5__* }
%struct.i915_vma.0 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i915_address_space }
%struct.i915_address_space = type { i64, i32 }
%struct.i915_request = type { i64, i32, %struct.TYPE_6__ }

@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4
@EXEC_OBJECT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igt_gpu_fill_dw(%struct.i915_vma* %0, %struct.i915_gem_context* %1, %struct.intel_engine_cs* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca %struct.i915_gem_context*, align 8
  %10 = alloca %struct.intel_engine_cs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.i915_address_space*, align 8
  %15 = alloca %struct.i915_request*, align 8
  %16 = alloca %struct.i915_vma*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %8, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %9, align 8
  store %struct.intel_engine_cs* %2, %struct.intel_engine_cs** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.i915_gem_context*, %struct.i915_gem_context** %9, align 8
  %20 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = sext i32 %21 to i64
  %25 = inttoptr i64 %24 to %struct.i915_address_space*
  br label %33

26:                                               ; preds = %6
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi %struct.i915_address_space* [ %25, %23 ], [ %32, %26 ]
  store %struct.i915_address_space* %34, %struct.i915_address_space** %14, align 8
  %35 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %36 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.i915_address_space*, %struct.i915_address_space** %14, align 8
  %39 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @GEM_BUG_ON(i32 %42)
  %44 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %45 = call i32 @intel_engine_can_store_dword(%struct.intel_engine_cs* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @GEM_BUG_ON(i32 %48)
  %50 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %51 = call i32 @i915_vma_is_pinned(%struct.i915_vma* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @GEM_BUG_ON(i32 %54)
  %56 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i64, i64* %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call %struct.i915_vma* @igt_emit_store_dw(%struct.i915_vma* %56, i32 %57, i64 %58, i32 %59)
  store %struct.i915_vma* %60, %struct.i915_vma** %16, align 8
  %61 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %62 = call i64 @IS_ERR(%struct.i915_vma* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %33
  %65 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %66 = call i32 @PTR_ERR(%struct.i915_vma* %65)
  store i32 %66, i32* %7, align 4
  br label %179

67:                                               ; preds = %33
  %68 = load %struct.i915_gem_context*, %struct.i915_gem_context** %9, align 8
  %69 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %70 = call %struct.i915_vma* @igt_request_alloc(%struct.i915_gem_context* %68, %struct.intel_engine_cs* %69)
  %71 = bitcast %struct.i915_vma* %70 to %struct.i915_request*
  store %struct.i915_request* %71, %struct.i915_request** %15, align 8
  %72 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %73 = bitcast %struct.i915_request* %72 to %struct.i915_vma*
  %74 = call i64 @IS_ERR(%struct.i915_vma* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %78 = bitcast %struct.i915_request* %77 to %struct.i915_vma*
  %79 = call i32 @PTR_ERR(%struct.i915_vma* %78)
  store i32 %79, i32* %18, align 4
  br label %173

80:                                               ; preds = %67
  store i32 0, i32* %17, align 4
  %81 = load %struct.i915_address_space*, %struct.i915_address_space** %14, align 8
  %82 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @INTEL_GEN(i32 %83)
  %85 = icmp sle i32 %84, 5
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %88 = load i32, i32* %17, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %92 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %91, i32 0, i32 0
  %93 = load i32 (%struct.i915_vma.0*, i32, i32, i32)*, i32 (%struct.i915_vma.0*, i32, i32, i32)** %92, align 8
  %94 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %95 = bitcast %struct.i915_request* %94 to %struct.i915_vma.0*
  %96 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %97 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %101 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %17, align 4
  %105 = call i32 %93(%struct.i915_vma.0* %95, i32 %99, i32 %103, i32 %104)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %90
  br label %169

109:                                              ; preds = %90
  %110 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %111 = call i32 @i915_vma_lock(%struct.i915_vma* %110)
  %112 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %113 = bitcast %struct.i915_request* %112 to %struct.i915_vma*
  %114 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %115 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @i915_request_await_object(%struct.i915_vma* %113, i32 %116, i32 0)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %122 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %123 = bitcast %struct.i915_request* %122 to %struct.i915_vma*
  %124 = call i32 @i915_vma_move_to_active(%struct.i915_vma* %121, %struct.i915_vma* %123, i32 0)
  store i32 %124, i32* %18, align 4
  br label %125

125:                                              ; preds = %120, %109
  %126 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %127 = call i32 @i915_vma_unlock(%struct.i915_vma* %126)
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %164

131:                                              ; preds = %125
  %132 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %133 = call i32 @i915_vma_lock(%struct.i915_vma* %132)
  %134 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %135 = bitcast %struct.i915_request* %134 to %struct.i915_vma*
  %136 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %137 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @i915_request_await_object(%struct.i915_vma* %135, i32 %138, i32 1)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %131
  %143 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %144 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %145 = bitcast %struct.i915_request* %144 to %struct.i915_vma*
  %146 = load i32, i32* @EXEC_OBJECT_WRITE, align 4
  %147 = call i32 @i915_vma_move_to_active(%struct.i915_vma* %143, %struct.i915_vma* %145, i32 %146)
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %142, %131
  %149 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %150 = call i32 @i915_vma_unlock(%struct.i915_vma* %149)
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %164

154:                                              ; preds = %148
  %155 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %156 = bitcast %struct.i915_request* %155 to %struct.i915_vma*
  %157 = call i32 @i915_request_add(%struct.i915_vma* %156)
  %158 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %159 = call i32 @i915_vma_unpin(%struct.i915_vma* %158)
  %160 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %161 = call i32 @i915_vma_close(%struct.i915_vma* %160)
  %162 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %163 = call i32 @i915_vma_put(%struct.i915_vma* %162)
  store i32 0, i32* %7, align 4
  br label %179

164:                                              ; preds = %153, %130
  %165 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %166 = bitcast %struct.i915_request* %165 to %struct.i915_vma*
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @i915_request_skip(%struct.i915_vma* %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %108
  %170 = load %struct.i915_request*, %struct.i915_request** %15, align 8
  %171 = bitcast %struct.i915_request* %170 to %struct.i915_vma*
  %172 = call i32 @i915_request_add(%struct.i915_vma* %171)
  br label %173

173:                                              ; preds = %169, %76
  %174 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %175 = call i32 @i915_vma_unpin(%struct.i915_vma* %174)
  %176 = load %struct.i915_vma*, %struct.i915_vma** %16, align 8
  %177 = call i32 @i915_vma_put(%struct.i915_vma* %176)
  %178 = load i32, i32* %18, align 4
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %173, %154, %64
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_engine_can_store_dword(%struct.intel_engine_cs*) #1

declare dso_local i32 @i915_vma_is_pinned(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @igt_emit_store_dw(%struct.i915_vma*, i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @igt_request_alloc(%struct.i915_gem_context*, %struct.intel_engine_cs*) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @i915_vma_lock(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_await_object(%struct.i915_vma*, i32, i32) #1

declare dso_local i32 @i915_vma_move_to_active(%struct.i915_vma*, %struct.i915_vma*, i32) #1

declare dso_local i32 @i915_vma_unlock(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_add(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_close(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_put(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_skip(%struct.i915_vma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
