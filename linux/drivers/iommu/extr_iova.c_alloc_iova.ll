; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_alloc_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_alloc_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova = type { i32 }
%struct.iova_domain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iova* @alloc_iova(%struct.iova_domain* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.iova*, align 8
  %6 = alloca %struct.iova_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iova*, align 8
  %11 = alloca i32, align 4
  store %struct.iova_domain* %0, %struct.iova_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call %struct.iova* (...) @alloc_iova_mem()
  store %struct.iova* %12, %struct.iova** %10, align 8
  %13 = load %struct.iova*, %struct.iova** %10, align 8
  %14 = icmp ne %struct.iova* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.iova* null, %struct.iova** %5, align 8
  br label %31

16:                                               ; preds = %4
  %17 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, 1
  %21 = load %struct.iova*, %struct.iova** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @__alloc_and_insert_iova_range(%struct.iova_domain* %17, i64 %18, i64 %20, %struct.iova* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.iova*, %struct.iova** %10, align 8
  %28 = call i32 @free_iova_mem(%struct.iova* %27)
  store %struct.iova* null, %struct.iova** %5, align 8
  br label %31

29:                                               ; preds = %16
  %30 = load %struct.iova*, %struct.iova** %10, align 8
  store %struct.iova* %30, %struct.iova** %5, align 8
  br label %31

31:                                               ; preds = %29, %26, %15
  %32 = load %struct.iova*, %struct.iova** %5, align 8
  ret %struct.iova* %32
}

declare dso_local %struct.iova* @alloc_iova_mem(...) #1

declare dso_local i32 @__alloc_and_insert_iova_range(%struct.iova_domain*, i64, i64, %struct.iova*, i32) #1

declare dso_local i32 @free_iova_mem(%struct.iova*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
