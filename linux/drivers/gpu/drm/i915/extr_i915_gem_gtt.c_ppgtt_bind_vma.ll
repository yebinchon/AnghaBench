; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ppgtt_bind_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ppgtt_bind_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, %struct.i915_vma*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@I915_VMA_LOCAL_BIND = common dso_local global i32 0, align 4
@PTE_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*, i32, i32)* @ppgtt_bind_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_bind_vma(%struct.i915_vma* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %11 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @I915_VMA_LOCAL_BIND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %3
  %17 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %18 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %20, align 8
  %22 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %23 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %26 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %30 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %21(%struct.TYPE_5__* %24, i32 %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %16
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %61

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %3
  store i32 0, i32* %8, align 4
  %39 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %40 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @i915_gem_object_is_readonly(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @PTE_READ_ONLY, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %50 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32 (%struct.TYPE_5__*, %struct.i915_vma*, i32, i32)*, i32 (%struct.TYPE_5__*, %struct.i915_vma*, i32, i32)** %52, align 8
  %54 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %55 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %53(%struct.TYPE_5__* %56, %struct.i915_vma* %57, i32 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %48, %35
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @i915_gem_object_is_readonly(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
