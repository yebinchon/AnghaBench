; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c___iova_rcache_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c___iova_rcache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova_domain = type { i32 }
%struct.iova_rcache = type { i64, i32, %struct.iova_magazine**, i32 }
%struct.iova_magazine = type { i32 }
%struct.iova_cpu_rcache = type { i32, %struct.iova_magazine*, %struct.iova_magazine* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MAX_GLOBAL_MAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iova_domain*, %struct.iova_rcache*, i64)* @__iova_rcache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iova_rcache_insert(%struct.iova_domain* %0, %struct.iova_rcache* %1, i64 %2) #0 {
  %4 = alloca %struct.iova_domain*, align 8
  %5 = alloca %struct.iova_rcache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iova_magazine*, align 8
  %8 = alloca %struct.iova_cpu_rcache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.iova_magazine*, align 8
  store %struct.iova_domain* %0, %struct.iova_domain** %4, align 8
  store %struct.iova_rcache* %1, %struct.iova_rcache** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.iova_magazine* null, %struct.iova_magazine** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.iova_rcache*, %struct.iova_rcache** %5, align 8
  %13 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.iova_cpu_rcache* @raw_cpu_ptr(i32 %14)
  store %struct.iova_cpu_rcache* %15, %struct.iova_cpu_rcache** %8, align 8
  %16 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %17 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %16, i32 0, i32 0
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %21 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %20, i32 0, i32 1
  %22 = load %struct.iova_magazine*, %struct.iova_magazine** %21, align 8
  %23 = call i32 @iova_magazine_full(%struct.iova_magazine* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %79

26:                                               ; preds = %3
  %27 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %28 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %27, i32 0, i32 2
  %29 = load %struct.iova_magazine*, %struct.iova_magazine** %28, align 8
  %30 = call i32 @iova_magazine_full(%struct.iova_magazine* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %34 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %33, i32 0, i32 2
  %35 = load %struct.iova_magazine*, %struct.iova_magazine** %34, align 8
  %36 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %37 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %36, i32 0, i32 1
  %38 = load %struct.iova_magazine*, %struct.iova_magazine** %37, align 8
  %39 = call i32 @swap(%struct.iova_magazine* %35, %struct.iova_magazine* %38)
  store i32 1, i32* %9, align 4
  br label %78

40:                                               ; preds = %26
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.iova_magazine* @iova_magazine_alloc(i32 %41)
  store %struct.iova_magazine* %42, %struct.iova_magazine** %11, align 8
  %43 = load %struct.iova_magazine*, %struct.iova_magazine** %11, align 8
  %44 = icmp ne %struct.iova_magazine* %43, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %40
  %46 = load %struct.iova_rcache*, %struct.iova_rcache** %5, align 8
  %47 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.iova_rcache*, %struct.iova_rcache** %5, align 8
  %50 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MAX_GLOBAL_MAGS, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %45
  %55 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %56 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %55, i32 0, i32 1
  %57 = load %struct.iova_magazine*, %struct.iova_magazine** %56, align 8
  %58 = load %struct.iova_rcache*, %struct.iova_rcache** %5, align 8
  %59 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %58, i32 0, i32 2
  %60 = load %struct.iova_magazine**, %struct.iova_magazine*** %59, align 8
  %61 = load %struct.iova_rcache*, %struct.iova_rcache** %5, align 8
  %62 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds %struct.iova_magazine*, %struct.iova_magazine** %60, i64 %63
  store %struct.iova_magazine* %57, %struct.iova_magazine** %65, align 8
  br label %70

66:                                               ; preds = %45
  %67 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %68 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %67, i32 0, i32 1
  %69 = load %struct.iova_magazine*, %struct.iova_magazine** %68, align 8
  store %struct.iova_magazine* %69, %struct.iova_magazine** %7, align 8
  br label %70

70:                                               ; preds = %66, %54
  %71 = load %struct.iova_rcache*, %struct.iova_rcache** %5, align 8
  %72 = getelementptr inbounds %struct.iova_rcache, %struct.iova_rcache* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load %struct.iova_magazine*, %struct.iova_magazine** %11, align 8
  %75 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %76 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %75, i32 0, i32 1
  store %struct.iova_magazine* %74, %struct.iova_magazine** %76, align 8
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %70, %40
  br label %78

78:                                               ; preds = %77, %32
  br label %79

79:                                               ; preds = %78, %25
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %84 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %83, i32 0, i32 1
  %85 = load %struct.iova_magazine*, %struct.iova_magazine** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @iova_magazine_push(%struct.iova_magazine* %85, i64 %86)
  br label %88

88:                                               ; preds = %82, %79
  %89 = load %struct.iova_cpu_rcache*, %struct.iova_cpu_rcache** %8, align 8
  %90 = getelementptr inbounds %struct.iova_cpu_rcache, %struct.iova_cpu_rcache* %89, i32 0, i32 0
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.iova_magazine*, %struct.iova_magazine** %7, align 8
  %94 = icmp ne %struct.iova_magazine* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.iova_magazine*, %struct.iova_magazine** %7, align 8
  %97 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %98 = call i32 @iova_magazine_free_pfns(%struct.iova_magazine* %96, %struct.iova_domain* %97)
  %99 = load %struct.iova_magazine*, %struct.iova_magazine** %7, align 8
  %100 = call i32 @iova_magazine_free(%struct.iova_magazine* %99)
  br label %101

101:                                              ; preds = %95, %88
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local %struct.iova_cpu_rcache* @raw_cpu_ptr(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iova_magazine_full(%struct.iova_magazine*) #1

declare dso_local i32 @swap(%struct.iova_magazine*, %struct.iova_magazine*) #1

declare dso_local %struct.iova_magazine* @iova_magazine_alloc(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iova_magazine_push(%struct.iova_magazine*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iova_magazine_free_pfns(%struct.iova_magazine*, %struct.iova_domain*) #1

declare dso_local i32 @iova_magazine_free(%struct.iova_magazine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
