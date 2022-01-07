; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c_i915_syncmap_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c_i915_syncmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { %struct.i915_syncmap* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_syncmap_free(%struct.i915_syncmap** %0) #0 {
  %2 = alloca %struct.i915_syncmap**, align 8
  %3 = alloca %struct.i915_syncmap*, align 8
  store %struct.i915_syncmap** %0, %struct.i915_syncmap*** %2, align 8
  %4 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %2, align 8
  %5 = load %struct.i915_syncmap*, %struct.i915_syncmap** %4, align 8
  store %struct.i915_syncmap* %5, %struct.i915_syncmap** %3, align 8
  %6 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %7 = icmp ne %struct.i915_syncmap* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %23

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %12 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %11, i32 0, i32 0
  %13 = load %struct.i915_syncmap*, %struct.i915_syncmap** %12, align 8
  %14 = icmp ne %struct.i915_syncmap* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %17 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %16, i32 0, i32 0
  %18 = load %struct.i915_syncmap*, %struct.i915_syncmap** %17, align 8
  store %struct.i915_syncmap* %18, %struct.i915_syncmap** %3, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %21 = call i32 @__sync_free(%struct.i915_syncmap* %20)
  %22 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %2, align 8
  store %struct.i915_syncmap* null, %struct.i915_syncmap** %22, align 8
  br label %23

23:                                               ; preds = %19, %8
  ret void
}

declare dso_local i32 @__sync_free(%struct.i915_syncmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
