; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_free_cpu_cached_iovas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_free_cpu_cached_iovas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova_domain = type { %struct.iova_rcache* }
%struct.iova_rcache = type { i32 }
%struct.iova_cpu_rcache = type { i32, i32, i32 }

@IOVA_RANGE_CACHE_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_cpu_cached_iovas(i32 %0, %struct.iova_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iova_domain*, align 8
  %5 = alloca %struct.iova_cpu_rcache*, align 8
  %6 = alloca %struct.iova_rcache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.iova_domain* %1, %struct.iova_domain** %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @IOVA_RANGE_CACHE_MAX_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %15 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %14, i32 0, i32 0
  %16 = load %struct.iova_rcache*, %struct.iova_rcache** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %16, i64 %18
  store %struct.iova_rcache* %19, %struct.iova_rcache** %6, align 8
  %20 = load %struct.iova_rcache*, %struct.iova_rcache** %6, align 8
  %21 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.iova_cpu_rcache* @per_cpu_ptr(i32 %22, i32 %23)
  store %struct.iova_cpu_rcache* %24, %struct.iova_cpu_rcache** %5, align 8
  %25 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %26 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %30 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %33 = call i32 @iova_magazine_free_pfns(i32 %31, %struct.iova_domain* %32)
  %34 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %35 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %38 = call i32 @iova_magazine_free_pfns(i32 %36, %struct.iova_domain* %37)
  %39 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %40 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %13
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %9

46:                                               ; preds = %9
  ret void
}

declare dso_local %struct.iova_cpu_rcache* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iova_magazine_free_pfns(i32, %struct.iova_domain*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
