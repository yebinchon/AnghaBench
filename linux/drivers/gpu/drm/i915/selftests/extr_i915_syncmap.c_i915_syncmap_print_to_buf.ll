; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_i915_syncmap_print_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_i915_syncmap_print_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { %struct.i915_syncmap* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_syncmap*, i8*, i64)* @i915_syncmap_print_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_syncmap_print_to_buf(%struct.i915_syncmap* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_syncmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.i915_syncmap* %0, %struct.i915_syncmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.i915_syncmap*, %struct.i915_syncmap** %5, align 8
  %9 = icmp ne %struct.i915_syncmap* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.i915_syncmap*, %struct.i915_syncmap** %5, align 8
  %14 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %13, i32 0, i32 0
  %15 = load %struct.i915_syncmap*, %struct.i915_syncmap** %14, align 8
  %16 = icmp ne %struct.i915_syncmap* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.i915_syncmap*, %struct.i915_syncmap** %5, align 8
  %19 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %18, i32 0, i32 0
  %20 = load %struct.i915_syncmap*, %struct.i915_syncmap** %19, align 8
  store %struct.i915_syncmap* %20, %struct.i915_syncmap** %5, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.i915_syncmap*, %struct.i915_syncmap** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @__sync_print(%struct.i915_syncmap* %22, i8* %23, i64* %7, i32 0, i32 1, i32 0)
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %10
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @__sync_print(%struct.i915_syncmap*, i8*, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
