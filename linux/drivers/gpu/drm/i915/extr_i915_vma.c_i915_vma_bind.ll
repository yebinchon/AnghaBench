; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_vma.c_i915_vma_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_vma.c_i915_vma_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i64, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.i915_vma*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@I915_VMA_GLOBAL_BIND = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@I915_VMA_LOCAL_BIND = common dso_local global i32 0, align 4
@PIN_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_vma_bind(%struct.i915_vma* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %12 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %11, i32 0, i32 5
  %13 = call i32 @drm_mm_node_allocated(%struct.TYPE_6__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @GEM_BUG_ON(i32 %16)
  %18 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %19 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %22 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %20, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @GEM_BUG_ON(i32 %26)
  %28 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %29 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %33 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %37 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @range_overflows(i32 %31, i64 %35, i32 %40)
  %42 = call i64 @GEM_DEBUG_WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %130

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @GEM_DEBUG_WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %130

57:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PIN_GLOBAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @I915_VMA_GLOBAL_BIND, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @PIN_USER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @I915_VMA_LOCAL_BIND, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %77 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I915_VMA_GLOBAL_BIND, align 4
  %80 = load i32, i32* @I915_VMA_LOCAL_BIND, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @PIN_UPDATE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %96

91:                                               ; preds = %75
  %92 = load i32, i32* %9, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %4, align 4
  br label %130

100:                                              ; preds = %96
  %101 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %102 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @GEM_BUG_ON(i32 %106)
  %108 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @trace_i915_vma_bind(%struct.i915_vma* %108, i32 %109)
  %111 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %112 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32 (%struct.i915_vma*, i32, i32)*, i32 (%struct.i915_vma*, i32, i32)** %114, align 8
  %116 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 %115(%struct.i915_vma* %116, i32 %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %100
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %130

124:                                              ; preds = %100
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %127 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %124, %122, %99, %54, %44
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @drm_mm_node_allocated(%struct.TYPE_6__*) #1

declare dso_local i64 @GEM_DEBUG_WARN_ON(i32) #1

declare dso_local i32 @range_overflows(i32, i64, i32) #1

declare dso_local i32 @trace_i915_vma_bind(%struct.i915_vma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
