; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_free_pagedir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_free_pagedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i32, i32, i32, i32, %struct.psb_mmu_pt**, %struct.psb_mmu_driver* }
%struct.psb_mmu_pt = type { i32 }
%struct.psb_mmu_driver = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@PSB_CR_BIF_DIR_LIST_BASE0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_mmu_free_pagedir(%struct.psb_mmu_pd* %0) #0 {
  %2 = alloca %struct.psb_mmu_pd*, align 8
  %3 = alloca %struct.psb_mmu_driver*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.psb_mmu_pt*, align 8
  %7 = alloca i32, align 4
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %2, align 8
  %8 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %9 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %8, i32 0, i32 5
  %10 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %9, align 8
  store %struct.psb_mmu_driver* %10, %struct.psb_mmu_driver** %3, align 8
  %11 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %3, align 8
  %12 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %15, align 8
  store %struct.drm_psb_private* %16, %struct.drm_psb_private** %5, align 8
  %17 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %3, align 8
  %18 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %17, i32 0, i32 0
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %21 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load i64, i64* @PSB_CR_BIF_DIR_LIST_BASE0, align 8
  %26 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %27 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %25, %30
  %32 = call i32 @PSB_WSGX32(i32 0, i64 %31)
  %33 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %3, align 8
  %34 = call i32 @psb_mmu_flush_pd_locked(%struct.psb_mmu_driver* %33, i32 1)
  br label %35

35:                                               ; preds = %24, %1
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 1024
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %41 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %40, i32 0, i32 4
  %42 = load %struct.psb_mmu_pt**, %struct.psb_mmu_pt*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %42, i64 %44
  %46 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %45, align 8
  store %struct.psb_mmu_pt* %46, %struct.psb_mmu_pt** %6, align 8
  %47 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %6, align 8
  %48 = icmp ne %struct.psb_mmu_pt* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %6, align 8
  %51 = call i32 @psb_mmu_free_pt(%struct.psb_mmu_pt* %50)
  br label %52

52:                                               ; preds = %49, %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %58 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %57, i32 0, i32 4
  %59 = load %struct.psb_mmu_pt**, %struct.psb_mmu_pt*** %58, align 8
  %60 = call i32 @vfree(%struct.psb_mmu_pt** %59)
  %61 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %62 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__free_page(i32 %63)
  %65 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %66 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @__free_page(i32 %67)
  %69 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %70 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__free_page(i32 %71)
  %73 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %2, align 8
  %74 = call i32 @kfree(%struct.psb_mmu_pd* %73)
  %75 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %3, align 8
  %76 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %75, i32 0, i32 0
  %77 = call i32 @up_write(i32* %76)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @PSB_WSGX32(i32, i64) #1

declare dso_local i32 @psb_mmu_flush_pd_locked(%struct.psb_mmu_driver*, i32) #1

declare dso_local i32 @psb_mmu_free_pt(%struct.psb_mmu_pt*) #1

declare dso_local i32 @vfree(%struct.psb_mmu_pt**) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(%struct.psb_mmu_pd*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
