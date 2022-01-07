; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_set_pd_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_set_pd_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@PSB_CR_BIF_DIR_LIST_BASE0 = common dso_local global i64 0, align 8
@PSB_CR_BIF_DIR_LIST_BASE1 = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_mmu_set_pd_context(%struct.psb_mmu_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.psb_mmu_pd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca i64, align 8
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %9 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_psb_private*, %struct.drm_psb_private** %14, align 8
  store %struct.drm_psb_private* %15, %struct.drm_psb_private** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @PSB_CR_BIF_DIR_LIST_BASE0, align 8
  br label %26

20:                                               ; preds = %2
  %21 = load i64, i64* @PSB_CR_BIF_DIR_LIST_BASE1, align 8
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  br label %26

26:                                               ; preds = %20, %18
  %27 = phi i64 [ %19, %18 ], [ %25, %20 ]
  store i64 %27, i64* %7, align 8
  %28 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %29 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @down_write(i32* %31)
  %33 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %34 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @page_to_pfn(i32 %35)
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @PSB_WSGX32(i32 %38, i64 %39)
  %41 = call i32 (...) @wmb()
  %42 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %43 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @psb_mmu_flush_pd_locked(%struct.TYPE_2__* %44, i32 1)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %48 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  %50 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @up_write(i32* %52)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @PSB_WSGX32(i32, i64) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @psb_mmu_flush_pd_locked(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
