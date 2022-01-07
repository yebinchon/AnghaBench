; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scatterlist.h_i915_sg_page_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scatterlist.h_i915_sg_page_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*)* @i915_sg_page_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_sg_page_sizes(%struct.scatterlist* %0) #0 {
  %2 = alloca %struct.scatterlist*, align 8
  %3 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  %6 = icmp ne %struct.scatterlist* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  %9 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @GEM_BUG_ON(i32 %10)
  %12 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  %13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @IS_ALIGNED(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @GEM_BUG_ON(i32 %19)
  %21 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  %27 = call %struct.scatterlist* @__sg_next(%struct.scatterlist* %26)
  store %struct.scatterlist* %27, %struct.scatterlist** %2, align 8
  br label %4

28:                                               ; preds = %4
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.scatterlist* @__sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
