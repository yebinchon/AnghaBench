; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_gem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.v3d_dev = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V3D_MAX_QUEUES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Failed to allocate page tables. Please ensure you have CMA enabled.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_gem_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.v3d_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %8)
  store %struct.v3d_dev* %9, %struct.v3d_dev** %4, align 8
  store i32 4194304, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @V3D_MAX_QUEUES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = call i32 @dma_fence_context_alloc(i32 1)
  %16 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %17 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %16, i32 0, i32 10
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %15, i32* %22, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %28 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %27, i32 0, i32 9
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %31 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %30, i32 0, i32 8
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %34 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %33, i32 0, i32 7
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %37 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %36, i32 0, i32 6
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %40 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %39, i32 0, i32 5
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %43 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %42, i32 0, i32 4
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %46 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = sub i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = call i32 @drm_mm_init(i32* %46, i32 1, i32 %51)
  %53 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %54 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %58 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %57, i32 0, i32 0
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load i32, i32* @__GFP_NOWARN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @__GFP_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = call i64 @dma_alloc_wc(i32 %55, i32 %56, i32* %58, i32 %63)
  %65 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %66 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %68 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %26
  %72 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %73 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %72, i32 0, i32 3
  %74 = call i32 @drm_mm_takedown(i32* %73)
  %75 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %76 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %106

81:                                               ; preds = %26
  %82 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %83 = call i32 @v3d_init_hw_state(%struct.v3d_dev* %82)
  %84 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %85 = call i32 @v3d_mmu_set_page_table(%struct.v3d_dev* %84)
  %86 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %87 = call i32 @v3d_sched_init(%struct.v3d_dev* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %81
  %91 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %92 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %91, i32 0, i32 3
  %93 = call i32 @drm_mm_takedown(i32* %92)
  %94 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %95 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %98 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %102 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dma_free_coherent(i32 %96, i32 4194304, i8* %100, i32 %103)
  br label %105

105:                                              ; preds = %90, %81
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %71
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i32) #1

declare dso_local i64 @dma_alloc_wc(i32, i32, i32*, i32) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @v3d_init_hw_state(%struct.v3d_dev*) #1

declare dso_local i32 @v3d_mmu_set_page_table(%struct.v3d_dev*) #1

declare dso_local i32 @v3d_sched_init(%struct.v3d_dev*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
