; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c___sync_alloc_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c___sync_alloc_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32, i64, i64, %struct.i915_syncmap* }

@KSYNCMAP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_syncmap* (%struct.i915_syncmap*, i32)* @__sync_alloc_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_syncmap* @__sync_alloc_leaf(%struct.i915_syncmap* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_syncmap*, align 8
  %4 = alloca %struct.i915_syncmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_syncmap*, align 8
  store %struct.i915_syncmap* %0, %struct.i915_syncmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @KSYNCMAP, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 32, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.i915_syncmap* @kmalloc(i32 %11, i32 %12)
  store %struct.i915_syncmap* %13, %struct.i915_syncmap** %6, align 8
  %14 = load %struct.i915_syncmap*, %struct.i915_syncmap** %6, align 8
  %15 = icmp ne %struct.i915_syncmap* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.i915_syncmap* null, %struct.i915_syncmap** %3, align 8
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.i915_syncmap*, %struct.i915_syncmap** %4, align 8
  %23 = load %struct.i915_syncmap*, %struct.i915_syncmap** %6, align 8
  %24 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %23, i32 0, i32 3
  store %struct.i915_syncmap* %22, %struct.i915_syncmap** %24, align 8
  %25 = load %struct.i915_syncmap*, %struct.i915_syncmap** %6, align 8
  %26 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.i915_syncmap*, %struct.i915_syncmap** %6, align 8
  %28 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.i915_syncmap*, %struct.i915_syncmap** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @__sync_leaf_prefix(%struct.i915_syncmap* %29, i32 %30)
  %32 = load %struct.i915_syncmap*, %struct.i915_syncmap** %6, align 8
  %33 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.i915_syncmap*, %struct.i915_syncmap** %6, align 8
  store %struct.i915_syncmap* %34, %struct.i915_syncmap** %3, align 8
  br label %35

35:                                               ; preds = %21, %20
  %36 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  ret %struct.i915_syncmap* %36
}

declare dso_local %struct.i915_syncmap* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__sync_leaf_prefix(%struct.i915_syncmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
