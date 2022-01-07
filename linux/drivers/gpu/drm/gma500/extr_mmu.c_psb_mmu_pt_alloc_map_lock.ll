; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_pt_alloc_map_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_pt_alloc_map_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pt = type { i64, i32, i8* }
%struct.psb_mmu_pd = type { i32, i32, %struct.TYPE_2__*, %struct.psb_mmu_pt**, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.psb_mmu_pt* @psb_mmu_pt_alloc_map_lock(%struct.psb_mmu_pd* %0, i64 %1) #0 {
  %3 = alloca %struct.psb_mmu_pt*, align 8
  %4 = alloca %struct.psb_mmu_pd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.psb_mmu_pt*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @psb_mmu_pd_index(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %13 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %19 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %18, i32 0, i32 3
  %20 = load %struct.psb_mmu_pt**, %struct.psb_mmu_pt*** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %20, i64 %21
  %23 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %22, align 8
  store %struct.psb_mmu_pt* %23, %struct.psb_mmu_pt** %7, align 8
  br label %24

24:                                               ; preds = %108, %46, %2
  %25 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %26 = icmp ne %struct.psb_mmu_pt* %25, null
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %109

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %32 = call %struct.psb_mmu_pt* @psb_mmu_alloc_pt(%struct.psb_mmu_pd* %31)
  store %struct.psb_mmu_pt* %32, %struct.psb_mmu_pt** %7, align 8
  %33 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %34 = icmp ne %struct.psb_mmu_pt* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store %struct.psb_mmu_pt* null, %struct.psb_mmu_pt** %3, align 8
  br label %117

36:                                               ; preds = %28
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %40 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %39, i32 0, i32 3
  %41 = load %struct.psb_mmu_pt**, %struct.psb_mmu_pt*** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %41, i64 %42
  %44 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %43, align 8
  %45 = icmp ne %struct.psb_mmu_pt* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %36
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %50 = call i32 @psb_mmu_free_pt(%struct.psb_mmu_pt* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %54 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %53, i32 0, i32 3
  %55 = load %struct.psb_mmu_pt**, %struct.psb_mmu_pt*** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %55, i64 %56
  %58 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %57, align 8
  store %struct.psb_mmu_pt* %58, %struct.psb_mmu_pt** %7, align 8
  br label %24

59:                                               ; preds = %36
  %60 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %61 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @kmap_atomic(i32 %62)
  %64 = bitcast i8* %63 to i64*
  store i64* %64, i64** %8, align 8
  %65 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %66 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %67 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %66, i32 0, i32 3
  %68 = load %struct.psb_mmu_pt**, %struct.psb_mmu_pt*** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %68, i64 %69
  store %struct.psb_mmu_pt* %65, %struct.psb_mmu_pt** %70, align 8
  %71 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %72 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @page_to_pfn(i32 %73)
  %75 = shl i32 %74, 12
  %76 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %77 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %75, %78
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %8, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %80, i64* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %86 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = bitcast i64* %87 to i8*
  %89 = call i32 @kunmap_atomic(i8* %88)
  %90 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %91 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %108

94:                                               ; preds = %59
  %95 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %96 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = bitcast i64* %100 to i8*
  %102 = call i32 @psb_mmu_clflush(%struct.TYPE_2__* %97, i8* %101)
  %103 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %104 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @atomic_set(i32* %106, i32 1)
  br label %108

108:                                              ; preds = %94, %59
  br label %24

109:                                              ; preds = %24
  %110 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %111 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @kmap_atomic(i32 %112)
  %114 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %115 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  store %struct.psb_mmu_pt* %116, %struct.psb_mmu_pt** %3, align 8
  br label %117

117:                                              ; preds = %109, %35
  %118 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %3, align 8
  ret %struct.psb_mmu_pt* %118
}

declare dso_local i64 @psb_mmu_pd_index(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.psb_mmu_pt* @psb_mmu_alloc_pt(%struct.psb_mmu_pd*) #1

declare dso_local i32 @psb_mmu_free_pt(%struct.psb_mmu_pt*) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @psb_mmu_clflush(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
