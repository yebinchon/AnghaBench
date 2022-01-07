; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm = type { i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.tegra_bo = type { %struct.TYPE_11__*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of I/O virtual memory: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to map buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_drm*, %struct.tegra_bo*)* @tegra_bo_iommu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_iommu_map(%struct.tegra_drm* %0, %struct.tegra_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_drm*, align 8
  %5 = alloca %struct.tegra_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_drm* %0, %struct.tegra_drm** %4, align 8
  store %struct.tegra_bo* %1, %struct.tegra_bo** %5, align 8
  %8 = load i32, i32* @IOMMU_READ, align 4
  %9 = load i32, i32* @IOMMU_WRITE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %114

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_11__* @kzalloc(i32 4, i32 %19)
  %21 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %21, i32 0, i32 0
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %22, align 8
  %23 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %114

30:                                               ; preds = %18
  %31 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %34, i32 0, i32 3
  %36 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %40 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i32 @drm_mm_insert_node_generic(i32* %35, %struct.TYPE_11__* %38, i32 %42, i32 %43, i32 0, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %30
  %48 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %105

55:                                               ; preds = %30
  %56 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %67 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %75 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @iommu_map_sg(i32 %65, i32 %68, i32 %73, i32 %78, i32 %79)
  %81 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %84 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %55
  %88 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %89 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %100

96:                                               ; preds = %55
  %97 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  store i32 0, i32* %3, align 4
  br label %114

100:                                              ; preds = %87
  %101 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %102 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = call i32 @drm_mm_remove_node(%struct.TYPE_11__* %103)
  br label %105

105:                                              ; preds = %100, %47
  %106 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %110 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = call i32 @kfree(%struct.TYPE_11__* %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %96, %27, %15
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_11__* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_mm_insert_node_generic(i32*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @iommu_map_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
