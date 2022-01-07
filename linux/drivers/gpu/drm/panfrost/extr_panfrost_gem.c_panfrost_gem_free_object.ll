; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.panfrost_device* }
%struct.panfrost_device = type { i32, i32 }
%struct.panfrost_gem_object = type { %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }

@SZ_2M = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*)* @panfrost_gem_free_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panfrost_gem_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.panfrost_gem_object*, align 8
  %4 = alloca %struct.panfrost_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = call %struct.panfrost_gem_object* @to_panfrost_bo(%struct.drm_gem_object* %7)
  store %struct.panfrost_gem_object* %8, %struct.panfrost_gem_object** %3, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.panfrost_device*, %struct.panfrost_device** %12, align 8
  store %struct.panfrost_device* %13, %struct.panfrost_device** %4, align 8
  %14 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %78

18:                                               ; preds = %1
  %19 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %20 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SZ_2M, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %70, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %32 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %30
  %41 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %42 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %45 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %53 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %61 = call i32 @dma_unmap_sg(i32 %43, i64 %51, i32 %59, i32 %60)
  %62 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %63 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = call i32 @sg_free_table(%struct.TYPE_9__* %67)
  br label %69

69:                                               ; preds = %40, %30
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %26

73:                                               ; preds = %26
  %74 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %75 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @kfree(%struct.TYPE_9__* %76)
  br label %78

78:                                               ; preds = %73, %1
  %79 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %80 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %83 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = call i32 @list_empty(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %78
  %88 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %89 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = call i32 @list_del(i32* %90)
  br label %92

92:                                               ; preds = %87, %78
  %93 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %94 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %97 = call i32 @drm_gem_shmem_free_object(%struct.drm_gem_object* %96)
  ret void
}

declare dso_local %struct.panfrost_gem_object* @to_panfrost_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_unmap_sg(i32, i64, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_gem_shmem_free_object(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
