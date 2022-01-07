; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c___i915_vma_pin_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c___i915_vma_pin_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.i915_fence_reg*, %struct.TYPE_2__*, i32 }
%struct.i915_fence_reg = type { i32, %struct.i915_vma*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i915_ggtt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*)* @__i915_vma_pin_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i915_vma_pin_fence(%struct.i915_vma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca %struct.i915_ggtt*, align 8
  %5 = alloca %struct.i915_fence_reg*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %3, align 8
  %8 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %9 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.i915_ggtt* @i915_vm_to_ggtt(%struct.TYPE_2__* %10)
  store %struct.i915_ggtt* %11, %struct.i915_ggtt** %4, align 8
  %12 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %13 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @i915_gem_object_is_tiled(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi %struct.i915_vma* [ %18, %17 ], [ null, %19 ]
  store %struct.i915_vma* %21, %struct.i915_vma** %6, align 8
  %22 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %23 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %22, i32 0, i32 0
  %24 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %23, align 8
  %25 = icmp ne %struct.i915_fence_reg* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %28 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %27, i32 0, i32 0
  %29 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %28, align 8
  store %struct.i915_fence_reg* %29, %struct.i915_fence_reg** %5, align 8
  %30 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %31 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %30, i32 0, i32 1
  %32 = load %struct.i915_vma*, %struct.i915_vma** %31, align 8
  %33 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %34 = icmp ne %struct.i915_vma* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @GEM_BUG_ON(i32 %35)
  %37 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %38 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %37, i32 0, i32 0
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %41 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %26
  %45 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %46 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %45, i32 0, i32 2
  %47 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %48 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %47, i32 0, i32 0
  %49 = call i32 @list_move_tail(i32* %46, i32* %48)
  store i32 0, i32* %2, align 4
  br label %114

50:                                               ; preds = %26
  br label %77

51:                                               ; preds = %20
  %52 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %53 = icmp ne %struct.i915_vma* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %56 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.i915_fence_reg* @fence_find(i32 %59)
  store %struct.i915_fence_reg* %60, %struct.i915_fence_reg** %5, align 8
  %61 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %62 = call i64 @IS_ERR(%struct.i915_fence_reg* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %66 = call i32 @PTR_ERR(%struct.i915_fence_reg* %65)
  store i32 %66, i32* %2, align 4
  br label %114

67:                                               ; preds = %54
  %68 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %69 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %68, i32 0, i32 0
  %70 = call i32 @atomic_read(i32* %69)
  %71 = call i32 @GEM_BUG_ON(i32 %70)
  %72 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %73 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %72, i32 0, i32 0
  %74 = call i32 @atomic_inc(i32* %73)
  br label %76

75:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %114

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %50
  %78 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %79 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %80 = call i32 @fence_update(%struct.i915_fence_reg* %78, %struct.i915_vma* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %109

84:                                               ; preds = %77
  %85 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %86 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %85, i32 0, i32 1
  %87 = load %struct.i915_vma*, %struct.i915_vma** %86, align 8
  %88 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %89 = icmp ne %struct.i915_vma* %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @GEM_BUG_ON(i32 %90)
  %92 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %93 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %92, i32 0, i32 0
  %94 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %93, align 8
  %95 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %96 = icmp ne %struct.i915_vma* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  br label %100

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi %struct.i915_fence_reg* [ %98, %97 ], [ null, %99 ]
  %102 = icmp ne %struct.i915_fence_reg* %94, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @GEM_BUG_ON(i32 %103)
  %105 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %106 = icmp ne %struct.i915_vma* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %114

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %83
  %110 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %111 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %110, i32 0, i32 0
  %112 = call i32 @atomic_dec(i32* %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %109, %107, %75, %64, %44
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.i915_ggtt* @i915_vm_to_ggtt(%struct.TYPE_2__*) #1

declare dso_local i64 @i915_gem_object_is_tiled(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local %struct.i915_fence_reg* @fence_find(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_fence_reg*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_fence_reg*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @fence_update(%struct.i915_fence_reg*, %struct.i915_vma*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
