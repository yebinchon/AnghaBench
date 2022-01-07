; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_cacheline_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_cacheline_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline_cacheline = type { i32, i32, %struct.intel_timeline_hwsp* }
%struct.intel_timeline_hwsp = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CACHELINE_BITS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@__cacheline_active = common dso_local global i32 0, align 4
@__cacheline_retire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_timeline_cacheline* (%struct.intel_timeline_hwsp*, i32)* @cacheline_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_timeline_cacheline* @cacheline_alloc(%struct.intel_timeline_hwsp* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_timeline_cacheline*, align 8
  %4 = alloca %struct.intel_timeline_hwsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_timeline_cacheline*, align 8
  %7 = alloca i8*, align 8
  store %struct.intel_timeline_hwsp* %0, %struct.intel_timeline_hwsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CACHELINE_BITS, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = icmp uge i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.intel_timeline_cacheline* @kmalloc(i32 16, i32 %14)
  store %struct.intel_timeline_cacheline* %15, %struct.intel_timeline_cacheline** %6, align 8
  %16 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %6, align 8
  %17 = icmp ne %struct.intel_timeline_cacheline* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.intel_timeline_cacheline* @ERR_PTR(i32 %20)
  store %struct.intel_timeline_cacheline* %21, %struct.intel_timeline_cacheline** %3, align 8
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %4, align 8
  %24 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I915_MAP_WB, align 4
  %29 = call i8* @i915_gem_object_pin_map(i32 %27, i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %6, align 8
  %35 = call i32 @kfree(%struct.intel_timeline_cacheline* %34)
  %36 = load i8*, i8** %7, align 8
  %37 = call %struct.intel_timeline_cacheline* @ERR_CAST(i8* %36)
  store %struct.intel_timeline_cacheline* %37, %struct.intel_timeline_cacheline** %3, align 8
  br label %62

38:                                               ; preds = %22
  %39 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %4, align 8
  %40 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @i915_vma_get(%struct.TYPE_4__* %41)
  %43 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %4, align 8
  %44 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %6, align 8
  %45 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %44, i32 0, i32 2
  store %struct.intel_timeline_hwsp* %43, %struct.intel_timeline_hwsp** %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @page_pack_bits(i8* %46, i32 %47)
  %49 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %6, align 8
  %50 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %4, align 8
  %52 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %6, align 8
  %57 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %56, i32 0, i32 0
  %58 = load i32, i32* @__cacheline_active, align 4
  %59 = load i32, i32* @__cacheline_retire, align 4
  %60 = call i32 @i915_active_init(i32 %55, i32* %57, i32 %58, i32 %59)
  %61 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %6, align 8
  store %struct.intel_timeline_cacheline* %61, %struct.intel_timeline_cacheline** %3, align 8
  br label %62

62:                                               ; preds = %38, %33, %18
  %63 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %3, align 8
  ret %struct.intel_timeline_cacheline* %63
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.intel_timeline_cacheline* @kmalloc(i32, i32) #1

declare dso_local %struct.intel_timeline_cacheline* @ERR_PTR(i32) #1

declare dso_local i8* @i915_gem_object_pin_map(i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @kfree(%struct.intel_timeline_cacheline*) #1

declare dso_local %struct.intel_timeline_cacheline* @ERR_CAST(i8*) #1

declare dso_local i32 @i915_vma_get(%struct.TYPE_4__*) #1

declare dso_local i32 @page_pack_bits(i8*, i32) #1

declare dso_local i32 @i915_active_init(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
