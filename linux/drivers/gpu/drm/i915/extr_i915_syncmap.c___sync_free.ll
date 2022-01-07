; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c___sync_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c___sync_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_syncmap*)* @__sync_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sync_free(%struct.i915_syncmap* %0) #0 {
  %2 = alloca %struct.i915_syncmap*, align 8
  %3 = alloca i32, align 4
  store %struct.i915_syncmap* %0, %struct.i915_syncmap** %2, align 8
  %4 = load %struct.i915_syncmap*, %struct.i915_syncmap** %2, align 8
  %5 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %15, %8
  %10 = load %struct.i915_syncmap*, %struct.i915_syncmap** %2, align 8
  %11 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ffs(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 -1, %16
  %18 = load %struct.i915_syncmap*, %struct.i915_syncmap** %2, align 8
  %19 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.i915_syncmap*, %struct.i915_syncmap** %2, align 8
  %23 = call %struct.i915_syncmap** @__sync_child(%struct.i915_syncmap* %22)
  %24 = load i32, i32* %3, align 4
  %25 = sub i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.i915_syncmap*, %struct.i915_syncmap** %23, i64 %26
  %28 = load %struct.i915_syncmap*, %struct.i915_syncmap** %27, align 8
  call void @__sync_free(%struct.i915_syncmap* %28)
  br label %9

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.i915_syncmap*, %struct.i915_syncmap** %2, align 8
  %32 = call i32 @kfree(%struct.i915_syncmap* %31)
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local %struct.i915_syncmap** @__sync_child(%struct.i915_syncmap*) #1

declare dso_local i32 @kfree(%struct.i915_syncmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
