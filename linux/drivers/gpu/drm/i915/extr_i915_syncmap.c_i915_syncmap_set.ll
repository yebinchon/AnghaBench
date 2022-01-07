; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c_i915_syncmap_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c_i915_syncmap_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_syncmap_set(%struct.i915_syncmap** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_syncmap**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_syncmap*, align 8
  store %struct.i915_syncmap** %0, %struct.i915_syncmap*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %10 = load %struct.i915_syncmap*, %struct.i915_syncmap** %9, align 8
  store %struct.i915_syncmap* %10, %struct.i915_syncmap** %8, align 8
  %11 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %12 = icmp ne %struct.i915_syncmap* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @__sync_leaf_prefix(%struct.i915_syncmap* %14, i32 %15)
  %17 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %18 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br label %21

21:                                               ; preds = %13, %3
  %22 = phi i1 [ false, %3 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @__sync_set_seqno(%struct.i915_syncmap* %27, i32 %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @__sync_set(%struct.i915_syncmap** %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @__sync_leaf_prefix(%struct.i915_syncmap*, i32) #1

declare dso_local i32 @__sync_set_seqno(%struct.i915_syncmap*, i32, i32) #1

declare dso_local i32 @__sync_set(%struct.i915_syncmap**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
