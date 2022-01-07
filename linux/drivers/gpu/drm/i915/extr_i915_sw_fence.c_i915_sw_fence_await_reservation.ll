; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c_i915_sw_fence_await_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c_i915_sw_fence_await_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sw_fence = type { i32 }
%struct.dma_resv = type { i32 }
%struct.dma_fence_ops = type { i32 }
%struct.dma_fence = type { %struct.dma_fence_ops* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_sw_fence_await_reservation(%struct.i915_sw_fence* %0, %struct.dma_resv* %1, %struct.dma_fence_ops* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_sw_fence*, align 8
  %9 = alloca %struct.dma_resv*, align 8
  %10 = alloca %struct.dma_fence_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dma_fence*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dma_fence**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i915_sw_fence* %0, %struct.i915_sw_fence** %8, align 8
  store %struct.dma_resv* %1, %struct.dma_resv** %9, align 8
  store %struct.dma_fence_ops* %2, %struct.dma_fence_ops** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %8, align 8
  %21 = call i32 @debug_fence_assert(%struct.i915_sw_fence* %20)
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @gfpflags_allow_blocking(i32 %22)
  %24 = call i32 @might_sleep_if(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %89

27:                                               ; preds = %6
  %28 = load %struct.dma_resv*, %struct.dma_resv** %9, align 8
  %29 = call i32 @dma_resv_get_fences_rcu(%struct.dma_resv* %28, %struct.dma_fence** %14, i32* %18, %struct.dma_fence*** %17)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %123

34:                                               ; preds = %27
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load %struct.dma_fence**, %struct.dma_fence*** %17, align 8
  %41 = load i32, i32* %19, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %40, i64 %42
  %44 = load %struct.dma_fence*, %struct.dma_fence** %43, align 8
  %45 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %44, i32 0, i32 0
  %46 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %45, align 8
  %47 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %10, align 8
  %48 = icmp eq %struct.dma_fence_ops* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %68

50:                                               ; preds = %39
  %51 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %8, align 8
  %52 = load %struct.dma_fence**, %struct.dma_fence*** %17, align 8
  %53 = load i32, i32* %19, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %52, i64 %54
  %56 = load %struct.dma_fence*, %struct.dma_fence** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @i915_sw_fence_await_dma_fence(%struct.i915_sw_fence* %51, %struct.dma_fence* %56, i64 %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %15, align 4
  br label %71

64:                                               ; preds = %50
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %15, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %64, %49
  %69 = load i32, i32* %19, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %19, align 4
  br label %35

71:                                               ; preds = %62, %35
  store i32 0, i32* %19, align 4
  br label %72

72:                                               ; preds = %83, %71
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.dma_fence**, %struct.dma_fence*** %17, align 8
  %78 = load i32, i32* %19, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %77, i64 %79
  %81 = load %struct.dma_fence*, %struct.dma_fence** %80, align 8
  %82 = call i32 @dma_fence_put(%struct.dma_fence* %81)
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %19, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %19, align 4
  br label %72

86:                                               ; preds = %72
  %87 = load %struct.dma_fence**, %struct.dma_fence*** %17, align 8
  %88 = call i32 @kfree(%struct.dma_fence** %87)
  br label %92

89:                                               ; preds = %6
  %90 = load %struct.dma_resv*, %struct.dma_resv** %9, align 8
  %91 = call %struct.dma_fence* @dma_resv_get_excl_rcu(%struct.dma_resv* %90)
  store %struct.dma_fence* %91, %struct.dma_fence** %14, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %15, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %97 = icmp ne %struct.dma_fence* %96, null
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  %99 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %100 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %99, i32 0, i32 0
  %101 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %100, align 8
  %102 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %10, align 8
  %103 = icmp ne %struct.dma_fence_ops* %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %8, align 8
  %106 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @i915_sw_fence_await_dma_fence(%struct.i915_sw_fence* %105, %struct.dma_fence* %106, i64 %107, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %15, align 4
  br label %118

114:                                              ; preds = %104
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %15, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %114, %112
  br label %119

119:                                              ; preds = %118, %98, %95, %92
  %120 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %121 = call i32 @dma_fence_put(%struct.dma_fence* %120)
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %119, %32
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i32 @debug_fence_assert(%struct.i915_sw_fence*) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @dma_resv_get_fences_rcu(%struct.dma_resv*, %struct.dma_fence**, i32*, %struct.dma_fence***) #1

declare dso_local i32 @i915_sw_fence_await_dma_fence(%struct.i915_sw_fence*, %struct.dma_fence*, i64, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl_rcu(%struct.dma_resv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
