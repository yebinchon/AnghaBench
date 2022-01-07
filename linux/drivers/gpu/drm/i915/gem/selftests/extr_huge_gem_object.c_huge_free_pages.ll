; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_gem_object.c_huge_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_gem_object.c_huge_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i64 }
%struct.sg_table = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*, %struct.sg_table*)* @huge_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @huge_free_pages(%struct.drm_i915_gem_object* %0, %struct.sg_table* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  store %struct.sg_table* %1, %struct.sg_table** %4, align 8
  %7 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = udiv i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %13 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %12, i32 0, i32 0
  %14 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  store %struct.scatterlist* %14, %struct.scatterlist** %6, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %17 = icmp ne %struct.scatterlist* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %5, align 8
  %21 = icmp ne i64 %19, 0
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %26 = call i32 @sg_page(%struct.scatterlist* %25)
  %27 = call i32 @__free_page(i32 %26)
  br label %28

28:                                               ; preds = %24
  %29 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %30 = call %struct.scatterlist* @__sg_next(%struct.scatterlist* %29)
  store %struct.scatterlist* %30, %struct.scatterlist** %6, align 8
  br label %15

31:                                               ; preds = %22
  %32 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %33 = call i32 @sg_free_table(%struct.sg_table* %32)
  %34 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %35 = call i32 @kfree(%struct.sg_table* %34)
  ret void
}

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @__sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
