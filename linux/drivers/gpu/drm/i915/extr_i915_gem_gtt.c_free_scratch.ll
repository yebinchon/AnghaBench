; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_free_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_free_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*)* @free_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_scratch(%struct.i915_address_space* %0) #0 {
  %2 = alloca %struct.i915_address_space*, align 8
  %3 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %2, align 8
  %4 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %5 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = call i32 @px_dma(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %38, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %15 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %20 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @px_dma(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %41

28:                                               ; preds = %18
  %29 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %30 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %31 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @px_base(i32* %35)
  %37 = call i32 @cleanup_page_dma(%struct.i915_address_space* %29, i32 %36)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %12

41:                                               ; preds = %27, %12
  %42 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %43 = call i32 @cleanup_scratch_page(%struct.i915_address_space* %42)
  br label %44

44:                                               ; preds = %41, %10
  ret void
}

declare dso_local i32 @px_dma(i32*) #1

declare dso_local i32 @cleanup_page_dma(%struct.i915_address_space*, i32) #1

declare dso_local i32 @px_base(i32*) #1

declare dso_local i32 @cleanup_scratch_page(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
