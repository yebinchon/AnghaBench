; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sg_table = type { i32 }
%struct.dma_resv = type { i32 }

@ttm_bo_type_sg = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@nouveau_bo_del_ttm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bo_init(%struct.nouveau_bo* %0, i32 %1, i32 %2, i32 %3, %struct.sg_table* %4, %struct.dma_resv* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_bo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sg_table*, align 8
  %13 = alloca %struct.dma_resv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.sg_table* %4, %struct.sg_table** %12, align 8
  store %struct.dma_resv* %5, %struct.dma_resv** %13, align 8
  %17 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %18 = icmp ne %struct.sg_table* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @ttm_bo_type_sg, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @ttm_bo_type_device, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %14, align 4
  %25 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @ttm_bo_dma_acc_size(i32 %28, i32 %29, i32 12)
  store i64 %30, i64* %15, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %35 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %38, i32 %39, i32 0)
  %41 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %42 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %46 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %45, i32 0, i32 1
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %50 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %49, i32 0, i32 0
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load i64, i64* %15, align 8
  %55 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %56 = load %struct.dma_resv*, %struct.dma_resv** %13, align 8
  %57 = load i32, i32* @nouveau_bo_del_ttm, align 4
  %58 = call i32 @ttm_bo_init(i32 %44, %struct.TYPE_4__* %46, i32 %47, i32 %48, i32* %50, i32 %53, i32 0, i64 %54, %struct.sg_table* %55, %struct.dma_resv* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %23
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %7, align 4
  br label %64

63:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %61
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i64 @ttm_bo_dma_acc_size(i32, i32, i32) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @ttm_bo_init(i32, %struct.TYPE_4__*, i32, i32, i32*, i32, i32, i64, %struct.sg_table*, %struct.dma_resv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
