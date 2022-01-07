; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_pt_map_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_pt_map_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pt = type { i32, i32 }
%struct.psb_mmu_pd = type { %struct.psb_mmu_pt**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.psb_mmu_pt* (%struct.psb_mmu_pd*, i64)* @psb_mmu_pt_map_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.psb_mmu_pt* @psb_mmu_pt_map_lock(%struct.psb_mmu_pd* %0, i64 %1) #0 {
  %3 = alloca %struct.psb_mmu_pt*, align 8
  %4 = alloca %struct.psb_mmu_pd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.psb_mmu_pt*, align 8
  %8 = alloca i32*, align 8
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @psb_mmu_pd_index(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %12 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %18 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %17, i32 0, i32 0
  %19 = load %struct.psb_mmu_pt**, %struct.psb_mmu_pt*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %19, i64 %20
  %22 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %21, align 8
  store %struct.psb_mmu_pt* %22, %struct.psb_mmu_pt** %7, align 8
  %23 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %24 = icmp ne %struct.psb_mmu_pt* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @spin_unlock(i32* %26)
  store %struct.psb_mmu_pt* null, %struct.psb_mmu_pt** %3, align 8
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %30 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kmap_atomic(i32 %31)
  %33 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %34 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  store %struct.psb_mmu_pt* %35, %struct.psb_mmu_pt** %3, align 8
  br label %36

36:                                               ; preds = %28, %25
  %37 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %3, align 8
  ret %struct.psb_mmu_pt* %37
}

declare dso_local i64 @psb_mmu_pd_index(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmap_atomic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
