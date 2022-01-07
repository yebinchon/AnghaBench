; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_wait.c_i915_gem_object_wait_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_wait.c_i915_gem_object_wait_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32 }
%struct.dma_fence = type { i32 }

@I915_WAIT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_resv*, i32, i64)* @i915_gem_object_wait_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i915_gem_object_wait_reservation(%struct.dma_resv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_resv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_fence**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dma_resv* %0, %struct.dma_resv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @I915_WAIT_ALL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %3
  %19 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %20 = call i32 @dma_resv_get_fences_rcu(%struct.dma_resv* %19, %struct.dma_fence** %8, i32* %11, %struct.dma_fence*** %10)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %4, align 8
  br label %114

26:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load %struct.dma_fence**, %struct.dma_fence*** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %32, i64 %34
  %36 = load %struct.dma_fence*, %struct.dma_fence** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @i915_gem_object_wait_fence(%struct.dma_fence* %36, i32 %37, i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %53

43:                                               ; preds = %31
  %44 = load %struct.dma_fence**, %struct.dma_fence*** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %44, i64 %46
  %48 = load %struct.dma_fence*, %struct.dma_fence** %47, align 8
  %49 = call i32 @dma_fence_put(%struct.dma_fence* %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %27

53:                                               ; preds = %42, %27
  br label %54

54:                                               ; preds = %65, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.dma_fence**, %struct.dma_fence*** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %59, i64 %61
  %63 = load %struct.dma_fence*, %struct.dma_fence** %62, align 8
  %64 = call i32 @dma_fence_put(%struct.dma_fence* %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load %struct.dma_fence**, %struct.dma_fence*** %10, align 8
  %70 = call i32 @kfree(%struct.dma_fence** %69)
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i64, i64* %7, align 8
  %75 = icmp sge i64 %74, 0
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi i1 [ false, %68 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %9, align 4
  br label %82

79:                                               ; preds = %3
  %80 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %81 = call %struct.dma_fence* @dma_resv_get_excl_rcu(%struct.dma_resv* %80)
  store %struct.dma_fence* %81, %struct.dma_fence** %8, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %84 = icmp ne %struct.dma_fence* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i64, i64* %7, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i64, i64* %7, align 8
  %92 = call i64 @i915_gem_object_wait_fence(%struct.dma_fence* %89, i32 %90, i64 %91)
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %88, %85, %82
  %94 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %95 = call i32 @dma_fence_put(%struct.dma_fence* %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %100 = call i64 @dma_resv_trylock(%struct.dma_resv* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %104 = call i64 @dma_resv_test_signaled_rcu(%struct.dma_resv* %103, i32 1)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %108 = call i32 @dma_resv_add_excl_fence(%struct.dma_resv* %107, i32* null)
  br label %109

109:                                              ; preds = %106, %102
  %110 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %111 = call i32 @dma_resv_unlock(%struct.dma_resv* %110)
  br label %112

112:                                              ; preds = %109, %98, %93
  %113 = load i64, i64* %7, align 8
  store i64 %113, i64* %4, align 8
  br label %114

114:                                              ; preds = %112, %23
  %115 = load i64, i64* %4, align 8
  ret i64 %115
}

declare dso_local i32 @dma_resv_get_fences_rcu(%struct.dma_resv*, %struct.dma_fence**, i32*, %struct.dma_fence***) #1

declare dso_local i64 @i915_gem_object_wait_fence(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl_rcu(%struct.dma_resv*) #1

declare dso_local i64 @dma_resv_trylock(%struct.dma_resv*) #1

declare dso_local i64 @dma_resv_test_signaled_rcu(%struct.dma_resv*, i32) #1

declare dso_local i32 @dma_resv_add_excl_fence(%struct.dma_resv*, i32*) #1

declare dso_local i32 @dma_resv_unlock(%struct.dma_resv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
