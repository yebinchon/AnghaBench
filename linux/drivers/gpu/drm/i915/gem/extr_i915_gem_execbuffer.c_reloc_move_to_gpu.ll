; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_move_to_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_move_to_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.i915_vma = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32, i32, i64 }

@EXEC_OBJECT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, %struct.i915_vma*)* @reloc_move_to_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reloc_move_to_gpu(%struct.i915_request* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %4, align 8
  %7 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %8 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %7, i32 0, i32 0
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  store %struct.drm_i915_gem_object* %9, %struct.drm_i915_gem_object** %5, align 8
  %10 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %11 = call i32 @i915_vma_lock(%struct.i915_vma* %10)
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %23 = call i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object* %22, i32 0)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %26 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %28 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %29 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %28, i32 0, i32 0
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %29, align 8
  %31 = call i32 @i915_request_await_object(%struct.i915_request* %27, %struct.drm_i915_gem_object* %30, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %36 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %37 = load i32, i32* @EXEC_OBJECT_WRITE, align 4
  %38 = call i32 @i915_vma_move_to_active(%struct.i915_vma* %35, %struct.i915_request* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %41 = call i32 @i915_vma_unlock(%struct.i915_vma* %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @i915_vma_lock(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_request_await_object(%struct.i915_request*, %struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_vma_move_to_active(%struct.i915_vma*, %struct.i915_request*, i32) #1

declare dso_local i32 @i915_vma_unlock(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
