; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_pt_unmap_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_pt_unmap_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pt = type { i64, i64, i32*, %struct.psb_mmu_pd* }
%struct.psb_mmu_pd = type { i32, %struct.TYPE_2__*, i32**, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psb_mmu_pt*)* @psb_mmu_pt_unmap_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt* %0) #0 {
  %2 = alloca %struct.psb_mmu_pt*, align 8
  %3 = alloca %struct.psb_mmu_pd*, align 8
  %4 = alloca i32*, align 8
  store %struct.psb_mmu_pt* %0, %struct.psb_mmu_pt** %2, align 8
  %5 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %2, align 8
  %6 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %5, i32 0, i32 3
  %7 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  store %struct.psb_mmu_pd* %7, %struct.psb_mmu_pd** %3, align 8
  %8 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %2, align 8
  %9 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @kunmap_atomic(i32* %10)
  %12 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %2, align 8
  %13 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %1
  %17 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %18 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @kmap_atomic(i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %22 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %2, align 8
  %26 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %30 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %29, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %2, align 8
  %33 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  store i32* null, i32** %35, align 8
  %36 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %37 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %56

40:                                               ; preds = %16
  %41 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %42 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %2, align 8
  %46 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @psb_mmu_clflush(%struct.TYPE_2__* %43, i8* %49)
  %51 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %52 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @atomic_set(i32* %54, i32 1)
  br label %56

56:                                               ; preds = %40, %16
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @kunmap_atomic(i32* %57)
  %59 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %60 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %2, align 8
  %65 = call i32 @psb_mmu_free_pt(%struct.psb_mmu_pt* %64)
  br label %72

66:                                               ; preds = %1
  %67 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %68 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  br label %72

72:                                               ; preds = %66, %56
  ret void
}

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32* @kmap_atomic(i32) #1

declare dso_local i32 @psb_mmu_clflush(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @psb_mmu_free_pt(%struct.psb_mmu_pt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
