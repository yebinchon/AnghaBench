; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_renderstate.c_intel_renderstate_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_renderstate.c_intel_renderstate_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.intel_engine_cs* }
%struct.intel_engine_cs = type { i32 (%struct.i915_request.0*, i32, i32, i32)*, %struct.TYPE_17__*, i32 }
%struct.i915_request.0 = type opaque
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.intel_renderstate = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@PIN_HIGH = common dso_local global i32 0, align 4
@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_renderstate_emit(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.intel_renderstate, align 8
  %6 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %7 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %8 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %7, i32 0, i32 1
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  store %struct.intel_engine_cs* %9, %struct.intel_engine_cs** %4, align 8
  %10 = bitcast %struct.intel_renderstate* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %12 = call %struct.TYPE_18__* @render_state_get_rodata(%struct.intel_engine_cs* %11)
  %13 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 6
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %13, align 8
  %14 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 6
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = icmp ne %struct.TYPE_18__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %150

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 6
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %150

29:                                               ; preds = %18
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call %struct.TYPE_19__* @i915_gem_object_create_internal(i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 2
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %35, align 8
  %36 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 2
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = call i64 @IS_ERR(%struct.TYPE_19__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 2
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.TYPE_19__* %42)
  store i32 %43, i32* %2, align 4
  br label %150

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 2
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %48 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %47, i32 0, i32 1
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = call %struct.TYPE_19__* @i915_vma_instance(%struct.TYPE_19__* %46, i32* %52, i32* null)
  %54 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %54, align 8
  %55 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = call i64 @IS_ERR(%struct.TYPE_19__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = call i32 @PTR_ERR(%struct.TYPE_19__* %61)
  store i32 %62, i32* %6, align 4
  br label %145

63:                                               ; preds = %44
  %64 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = load i32, i32* @PIN_GLOBAL, align 4
  %67 = load i32, i32* @PIN_HIGH, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @i915_vma_pin(%struct.TYPE_19__* %65, i32 0, i32 0, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %141

73:                                               ; preds = %63
  %74 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %75 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @render_state_setup(%struct.intel_renderstate* %5, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %137

81:                                               ; preds = %73
  %82 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %83 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %82, i32 0, i32 0
  %84 = load i32 (%struct.i915_request.0*, i32, i32, i32)*, i32 (%struct.i915_request.0*, i32, i32, i32)** %83, align 8
  %85 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %86 = bitcast %struct.i915_request* %85 to %struct.i915_request.0*
  %87 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %92 = call i32 %84(%struct.i915_request.0* %86, i32 %88, i32 %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %137

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 8
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %102 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %101, i32 0, i32 0
  %103 = load i32 (%struct.i915_request.0*, i32, i32, i32)*, i32 (%struct.i915_request.0*, i32, i32, i32)** %102, align 8
  %104 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %105 = bitcast %struct.i915_request* %104 to %struct.i915_request.0*
  %106 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %111 = call i32 %103(%struct.i915_request.0* %105, i32 %107, i32 %109, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %137

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %96
  %117 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = call i32 @i915_vma_lock(%struct.TYPE_19__* %118)
  %120 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %121 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @i915_request_await_object(%struct.i915_request* %120, i32 %124, i32 0)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %116
  %129 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %132 = call i32 @i915_vma_move_to_active(%struct.TYPE_19__* %130, %struct.i915_request* %131, i32 0)
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %128, %116
  %134 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = call i32 @i915_vma_unlock(%struct.TYPE_19__* %135)
  br label %137

137:                                              ; preds = %133, %114, %95, %80
  %138 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = call i32 @i915_vma_unpin(%struct.TYPE_19__* %139)
  br label %141

141:                                              ; preds = %137, %72
  %142 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 3
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = call i32 @i915_vma_close(%struct.TYPE_19__* %143)
  br label %145

145:                                              ; preds = %141, %59
  %146 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %5, i32 0, i32 2
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = call i32 @i915_gem_object_put(%struct.TYPE_19__* %147)
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %145, %40, %26, %17
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @render_state_get_rodata(%struct.intel_engine_cs*) #2

declare dso_local %struct.TYPE_19__* @i915_gem_object_create_internal(i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.TYPE_19__*) #2

declare dso_local i32 @PTR_ERR(%struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_19__* @i915_vma_instance(%struct.TYPE_19__*, i32*, i32*) #2

declare dso_local i32 @i915_vma_pin(%struct.TYPE_19__*, i32, i32, i32) #2

declare dso_local i32 @render_state_setup(%struct.intel_renderstate*, i32) #2

declare dso_local i32 @i915_vma_lock(%struct.TYPE_19__*) #2

declare dso_local i32 @i915_request_await_object(%struct.i915_request*, i32, i32) #2

declare dso_local i32 @i915_vma_move_to_active(%struct.TYPE_19__*, %struct.i915_request*, i32) #2

declare dso_local i32 @i915_vma_unlock(%struct.TYPE_19__*) #2

declare dso_local i32 @i915_vma_unpin(%struct.TYPE_19__*) #2

declare dso_local i32 @i915_vma_close(%struct.TYPE_19__*) #2

declare dso_local i32 @i915_gem_object_put(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
