; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_ptc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_ptc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_mmu_pt = type { i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_mmu_ptc_put(%struct.nvkm_mmu* %0, i32 %1, %struct.nvkm_mmu_pt** %2) #0 {
  %4 = alloca %struct.nvkm_mmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_mmu_pt**, align 8
  %7 = alloca %struct.nvkm_mmu_pt*, align 8
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_mmu_pt** %2, %struct.nvkm_mmu_pt*** %6, align 8
  %8 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %6, align 8
  %9 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  store %struct.nvkm_mmu_pt* %9, %struct.nvkm_mmu_pt** %7, align 8
  %10 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %11 = icmp ne %struct.nvkm_mmu_pt* %10, null
  br i1 %11, label %12, label %69

12:                                               ; preds = %3
  %13 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %14 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %25 = call i32 @nvkm_mmu_ptp_put(%struct.nvkm_mmu* %22, i32 %23, %struct.nvkm_mmu_pt* %24)
  %26 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %69

30:                                               ; preds = %12
  %31 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %36 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %58

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %46 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %45, i32 0, i32 2
  %47 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %48 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = call i32 @list_add_tail(i32* %46, i32* %50)
  %52 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %53 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %64

58:                                               ; preds = %41, %30
  %59 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %60 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %59, i32 0, i32 0
  %61 = call i32 @nvkm_memory_unref(i32* %60)
  %62 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %63 = call i32 @kfree(%struct.nvkm_mmu_pt* %62)
  br label %64

64:                                               ; preds = %58, %44
  %65 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %66 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %17, %64, %3
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_mmu_ptp_put(%struct.nvkm_mmu*, i32, %struct.nvkm_mmu_pt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nvkm_memory_unref(i32*) #1

declare dso_local i32 @kfree(%struct.nvkm_mmu_pt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
