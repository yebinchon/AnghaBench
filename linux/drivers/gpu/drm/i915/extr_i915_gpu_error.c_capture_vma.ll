; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capture_vma = type { i8**, %struct.capture_vma* }
%struct.i915_vma = type { i32 }
%struct.drm_i915_error_object = type { i32 }

@ATOMIC_MAYFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.capture_vma* (%struct.capture_vma*, %struct.i915_vma*, %struct.drm_i915_error_object**)* @capture_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.capture_vma* @capture_vma(%struct.capture_vma* %0, %struct.i915_vma* %1, %struct.drm_i915_error_object** %2) #0 {
  %4 = alloca %struct.capture_vma*, align 8
  %5 = alloca %struct.capture_vma*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca %struct.drm_i915_error_object**, align 8
  %8 = alloca %struct.capture_vma*, align 8
  store %struct.capture_vma* %0, %struct.capture_vma** %5, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %6, align 8
  store %struct.drm_i915_error_object** %2, %struct.drm_i915_error_object*** %7, align 8
  %9 = load %struct.drm_i915_error_object**, %struct.drm_i915_error_object*** %7, align 8
  store %struct.drm_i915_error_object* null, %struct.drm_i915_error_object** %9, align 8
  %10 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %11 = icmp ne %struct.i915_vma* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load %struct.capture_vma*, %struct.capture_vma** %5, align 8
  store %struct.capture_vma* %13, %struct.capture_vma** %4, align 8
  br label %44

14:                                               ; preds = %3
  %15 = load i32, i32* @ATOMIC_MAYFAIL, align 4
  %16 = call %struct.capture_vma* @kmalloc(i32 16, i32 %15)
  store %struct.capture_vma* %16, %struct.capture_vma** %8, align 8
  %17 = load %struct.capture_vma*, %struct.capture_vma** %8, align 8
  %18 = icmp ne %struct.capture_vma* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load %struct.capture_vma*, %struct.capture_vma** %5, align 8
  store %struct.capture_vma* %20, %struct.capture_vma** %4, align 8
  br label %44

21:                                               ; preds = %14
  %22 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %23 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %22, i32 0, i32 0
  %24 = call i32 @i915_active_trygrab(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.capture_vma*, %struct.capture_vma** %8, align 8
  %28 = call i32 @kfree(%struct.capture_vma* %27)
  %29 = load %struct.capture_vma*, %struct.capture_vma** %5, align 8
  store %struct.capture_vma* %29, %struct.capture_vma** %4, align 8
  br label %44

30:                                               ; preds = %21
  %31 = load %struct.drm_i915_error_object**, %struct.drm_i915_error_object*** %7, align 8
  %32 = bitcast %struct.drm_i915_error_object** %31 to i8**
  %33 = load %struct.capture_vma*, %struct.capture_vma** %8, align 8
  %34 = getelementptr inbounds %struct.capture_vma, %struct.capture_vma* %33, i32 0, i32 0
  store i8** %32, i8*** %34, align 8
  %35 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %36 = call i8* @i915_vma_get(%struct.i915_vma* %35)
  %37 = load %struct.capture_vma*, %struct.capture_vma** %8, align 8
  %38 = getelementptr inbounds %struct.capture_vma, %struct.capture_vma* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  store i8* %36, i8** %39, align 8
  %40 = load %struct.capture_vma*, %struct.capture_vma** %5, align 8
  %41 = load %struct.capture_vma*, %struct.capture_vma** %8, align 8
  %42 = getelementptr inbounds %struct.capture_vma, %struct.capture_vma* %41, i32 0, i32 1
  store %struct.capture_vma* %40, %struct.capture_vma** %42, align 8
  %43 = load %struct.capture_vma*, %struct.capture_vma** %8, align 8
  store %struct.capture_vma* %43, %struct.capture_vma** %4, align 8
  br label %44

44:                                               ; preds = %30, %26, %19, %12
  %45 = load %struct.capture_vma*, %struct.capture_vma** %4, align 8
  ret %struct.capture_vma* %45
}

declare dso_local %struct.capture_vma* @kmalloc(i32, i32) #1

declare dso_local i32 @i915_active_trygrab(i32*) #1

declare dso_local i32 @kfree(%struct.capture_vma*) #1

declare dso_local i8* @i915_vma_get(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
