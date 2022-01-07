; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c___iova_rcache_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c___iova_rcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova_rcache = type { i64, i32, i32*, i32 }
%struct.iova_cpu_rcache = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iova_rcache*, i64)* @__iova_rcache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__iova_rcache_get(%struct.iova_rcache* %0, i64 %1) #0 {
  %3 = alloca %struct.iova_rcache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iova_cpu_rcache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.iova_rcache* %0, %struct.iova_rcache** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.iova_rcache*, %struct.iova_rcache** %3, align 8
  %10 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.iova_cpu_rcache* @raw_cpu_ptr(i32 %11)
  store %struct.iova_cpu_rcache* %12, %struct.iova_cpu_rcache** %5, align 8
  %13 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %14 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %18 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iova_magazine_empty(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %66

23:                                               ; preds = %2
  %24 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %25 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @iova_magazine_empty(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %31 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %34 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @swap(i32 %32, i32 %35)
  store i32 1, i32* %7, align 4
  br label %65

37:                                               ; preds = %23
  %38 = load %struct.iova_rcache*, %struct.iova_rcache** %3, align 8
  %39 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.iova_rcache*, %struct.iova_rcache** %3, align 8
  %42 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %47 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @iova_magazine_free(i32 %48)
  %50 = load %struct.iova_rcache*, %struct.iova_rcache** %3, align 8
  %51 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.iova_rcache*, %struct.iova_rcache** %3, align 8
  %54 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %60 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %45, %37
  %62 = load %struct.iova_rcache*, %struct.iova_rcache** %3, align 8
  %63 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %61, %29
  br label %66

66:                                               ; preds = %65, %22
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %71 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @iova_magazine_pop(i32 %72, i64 %73)
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %5, align 8
  %77 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %76, i32 0, i32 0
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i64, i64* %6, align 8
  ret i64 %80
}

declare dso_local %struct.iova_cpu_rcache* @raw_cpu_ptr(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iova_magazine_empty(i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iova_magazine_free(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @iova_magazine_pop(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
