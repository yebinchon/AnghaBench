; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_vaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_vaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.reloc_cache = type { i64, i32 }

@KMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.drm_i915_gem_object*, %struct.reloc_cache*, i64)* @reloc_vaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @reloc_vaddr(%struct.drm_i915_gem_object* %0, %struct.reloc_cache* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.reloc_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store %struct.reloc_cache* %1, %struct.reloc_cache** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.reloc_cache*, %struct.reloc_cache** %5, align 8
  %9 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.reloc_cache*, %struct.reloc_cache** %5, align 8
  %15 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @unmask_page(i32 %16)
  store i8* %17, i8** %7, align 8
  br label %39

18:                                               ; preds = %3
  store i8* null, i8** %7, align 8
  %19 = load %struct.reloc_cache*, %struct.reloc_cache** %5, align 8
  %20 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @KMAP, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %27 = load %struct.reloc_cache*, %struct.reloc_cache** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i8* @reloc_iomap(%struct.drm_i915_gem_object* %26, %struct.reloc_cache* %27, i64 %28)
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %35 = load %struct.reloc_cache*, %struct.reloc_cache** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i8* @reloc_kmap(%struct.drm_i915_gem_object* %34, %struct.reloc_cache* %35, i64 %36)
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i8*, i8** %7, align 8
  ret i8* %40
}

declare dso_local i8* @unmask_page(i32) #1

declare dso_local i8* @reloc_iomap(%struct.drm_i915_gem_object*, %struct.reloc_cache*, i64) #1

declare dso_local i8* @reloc_kmap(%struct.drm_i915_gem_object*, %struct.reloc_cache*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
