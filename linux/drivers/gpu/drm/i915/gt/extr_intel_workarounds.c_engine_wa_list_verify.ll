; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_engine_wa_list_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_engine_wa_list_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i915_wa_list = type { i32, i32, %struct.i915_wa* }
%struct.i915_wa = type { i32 }
%struct.i915_request = type { i32, i32 }
%struct.i915_vma = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, %struct.i915_wa_list*, i8*)* @engine_wa_list_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @engine_wa_list_verify(%struct.intel_context* %0, %struct.i915_wa_list* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_context*, align 8
  %6 = alloca %struct.i915_wa_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i915_wa*, align 8
  %9 = alloca %struct.i915_request*, align 8
  %10 = alloca %struct.i915_vma*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i915_vma*, align 8
  %13 = alloca i32, align 4
  store %struct.intel_context* %0, %struct.intel_context** %5, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %15 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %139

19:                                               ; preds = %3
  %20 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %21 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %29 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.i915_vma* @create_scratch(i32* %27, i32 %30)
  store %struct.i915_vma* %31, %struct.i915_vma** %10, align 8
  %32 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %33 = call i64 @IS_ERR(%struct.i915_vma* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %37 = call i32 @PTR_ERR(%struct.i915_vma* %36)
  store i32 %37, i32* %4, align 4
  br label %139

38:                                               ; preds = %19
  %39 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %40 = call %struct.i915_vma* @intel_context_create_request(%struct.intel_context* %39)
  %41 = bitcast %struct.i915_vma* %40 to %struct.i915_request*
  store %struct.i915_request* %41, %struct.i915_request** %9, align 8
  %42 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %43 = bitcast %struct.i915_request* %42 to %struct.i915_vma*
  %44 = call i64 @IS_ERR(%struct.i915_vma* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %48 = bitcast %struct.i915_request* %47 to %struct.i915_vma*
  %49 = call i32 @PTR_ERR(%struct.i915_vma* %48)
  store i32 %49, i32* %13, align 4
  br label %133

50:                                               ; preds = %38
  %51 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %52 = bitcast %struct.i915_request* %51 to %struct.i915_vma*
  %53 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %54 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %55 = call i32 @wa_list_srm(%struct.i915_vma* %52, %struct.i915_wa_list* %53, %struct.i915_vma* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %133

59:                                               ; preds = %50
  %60 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %61 = bitcast %struct.i915_request* %60 to %struct.i915_vma*
  %62 = call i32 @i915_request_add(%struct.i915_vma* %61)
  %63 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %64 = bitcast %struct.i915_request* %63 to %struct.i915_vma*
  %65 = load i32, i32* @HZ, align 4
  %66 = sdiv i32 %65, 5
  %67 = call i64 @i915_request_wait(%struct.i915_vma* %64, i32 0, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @ETIME, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %133

72:                                               ; preds = %59
  %73 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %74 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @I915_MAP_WB, align 4
  %77 = call %struct.i915_vma* @i915_gem_object_pin_map(i32 %75, i32 %76)
  store %struct.i915_vma* %77, %struct.i915_vma** %12, align 8
  %78 = load %struct.i915_vma*, %struct.i915_vma** %12, align 8
  %79 = call i64 @IS_ERR(%struct.i915_vma* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.i915_vma*, %struct.i915_vma** %12, align 8
  %83 = call i32 @PTR_ERR(%struct.i915_vma* %82)
  store i32 %83, i32* %13, align 4
  br label %133

84:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %85 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %86 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %85, i32 0, i32 2
  %87 = load %struct.i915_wa*, %struct.i915_wa** %86, align 8
  store %struct.i915_wa* %87, %struct.i915_wa** %8, align 8
  br label %88

88:                                               ; preds = %123, %84
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %91 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %88
  %95 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %96 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.i915_wa*, %struct.i915_wa** %8, align 8
  %99 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @i915_mmio_reg_offset(i32 %100)
  %102 = call i64 @mcr_range(i32 %97, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %123

105:                                              ; preds = %94
  %106 = load %struct.i915_wa*, %struct.i915_wa** %8, align 8
  %107 = load %struct.i915_vma*, %struct.i915_vma** %12, align 8
  %108 = load i32, i32* %11, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %107, i64 %109
  %111 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %112 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = bitcast %struct.i915_vma* %110 to i64*
  %116 = load i64, i64* %115, align 4
  %117 = call i32 @wa_verify(%struct.i915_wa* %106, i64 %116, i32 %113, i8* %114)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %105
  %120 = load i32, i32* @ENXIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %119, %105
  br label %123

123:                                              ; preds = %122, %104
  %124 = load i32, i32* %11, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load %struct.i915_wa*, %struct.i915_wa** %8, align 8
  %127 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %126, i32 1
  store %struct.i915_wa* %127, %struct.i915_wa** %8, align 8
  br label %88

128:                                              ; preds = %88
  %129 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %130 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @i915_gem_object_unpin_map(i32 %131)
  br label %133

133:                                              ; preds = %128, %81, %69, %58, %46
  %134 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %135 = call i32 @i915_vma_unpin(%struct.i915_vma* %134)
  %136 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %137 = call i32 @i915_vma_put(%struct.i915_vma* %136)
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %133, %35, %18
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.i915_vma* @create_scratch(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @intel_context_create_request(%struct.intel_context*) #1

declare dso_local i32 @wa_list_srm(%struct.i915_vma*, %struct.i915_wa_list*, %struct.i915_vma*) #1

declare dso_local i32 @i915_request_add(%struct.i915_vma*) #1

declare dso_local i64 @i915_request_wait(%struct.i915_vma*, i32, i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_pin_map(i32, i32) #1

declare dso_local i64 @mcr_range(i32, i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @wa_verify(%struct.i915_wa*, i64, i32, i8*) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
