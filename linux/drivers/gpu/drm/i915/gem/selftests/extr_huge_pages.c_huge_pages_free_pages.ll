; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_huge_pages_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_huge_pages_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sg_table*)* @huge_pages_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @huge_pages_free_pages(%struct.sg_table* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  store %struct.sg_table* %0, %struct.sg_table** %2, align 8
  %4 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  %5 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %4, i32 0, i32 0
  %6 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %6, %struct.scatterlist** %3, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %9 = icmp ne %struct.scatterlist* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %12 = call i64 @sg_page(%struct.scatterlist* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %16 = call i64 @sg_page(%struct.scatterlist* %15)
  %17 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_order(i32 %19)
  %21 = call i32 @__free_pages(i64 %16, i32 %20)
  br label %22

22:                                               ; preds = %14, %10
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %25 = call %struct.scatterlist* @__sg_next(%struct.scatterlist* %24)
  store %struct.scatterlist* %25, %struct.scatterlist** %3, align 8
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  %28 = call i32 @sg_free_table(%struct.sg_table* %27)
  %29 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  %30 = call i32 @kfree(%struct.sg_table* %29)
  ret void
}

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @__free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.scatterlist* @__sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
