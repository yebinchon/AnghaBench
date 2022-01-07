; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32, %struct.reloc_cache }
%struct.reloc_cache = type { i32, i32*, i32 }
%struct.i915_vma = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.i915_execbuffer*, %struct.i915_vma*, i32)* @reloc_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @reloc_gpu(%struct.i915_execbuffer* %0, %struct.i915_vma* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i915_execbuffer*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reloc_cache*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %5, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %12 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %11, i32 0, i32 1
  store %struct.reloc_cache* %12, %struct.reloc_cache** %8, align 8
  %13 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %14 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = sub i64 %19, %22
  %24 = icmp ugt i64 %16, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %27 = call i32 @reloc_gpu_flush(%struct.reloc_cache* %26)
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %30 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %28
  %38 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %39 = call i64 @eb_use_cmdparser(%struct.i915_execbuffer* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @EWOULDBLOCK, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32* @ERR_PTR(i32 %43)
  store i32* %44, i32** %4, align 8
  br label %82

45:                                               ; preds = %37
  %46 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %47 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @intel_engine_can_store_dword(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32* @ERR_PTR(i32 %53)
  store i32* %54, i32** %4, align 8
  br label %82

55:                                               ; preds = %45
  %56 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %57 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @__reloc_gpu_alloc(%struct.i915_execbuffer* %56, %struct.i915_vma* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  %65 = call i32* @ERR_PTR(i32 %64)
  store i32* %65, i32** %4, align 8
  br label %82

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %28
  %68 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %69 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %72 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32* %75, i32** %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.reloc_cache*, %struct.reloc_cache** %8, align 8
  %78 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32*, i32** %9, align 8
  store i32* %81, i32** %4, align 8
  br label %82

82:                                               ; preds = %67, %63, %51, %41
  %83 = load i32*, i32** %4, align 8
  ret i32* %83
}

declare dso_local i32 @reloc_gpu_flush(%struct.reloc_cache*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @eb_use_cmdparser(%struct.i915_execbuffer*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @intel_engine_can_store_dword(i32) #1

declare dso_local i32 @__reloc_gpu_alloc(%struct.i915_execbuffer*, %struct.i915_vma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
