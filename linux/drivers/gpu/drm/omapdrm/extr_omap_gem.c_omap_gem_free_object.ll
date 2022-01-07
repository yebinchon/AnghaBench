; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64, i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32 }
%struct.omap_gem_object = type { i64, i32, i32, i32, i64, i32, %struct.omap_gem_object*, i32 }

@OMAP_BO_MEM_DMABUF = common dso_local global i32 0, align 4
@OMAP_BO_MEM_DMA_API = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_gem_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.omap_drm_private*, align 8
  %5 = alloca %struct.omap_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %6, i32 0, i32 2
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.omap_drm_private*, %struct.omap_drm_private** %10, align 8
  store %struct.omap_drm_private* %11, %struct.omap_drm_private** %4, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %13 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %12)
  store %struct.omap_gem_object* %13, %struct.omap_gem_object** %5, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %15 = call i32 @omap_gem_evict(%struct.drm_gem_object* %14)
  %16 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %17 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %20 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %19, i32 0, i32 7
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %23 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %26 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %29 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %35 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %34, i32 0, i32 6
  %36 = load %struct.omap_gem_object*, %struct.omap_gem_object** %35, align 8
  %37 = icmp ne %struct.omap_gem_object* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %1
  %39 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %40 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @OMAP_BO_MEM_DMABUF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %47 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %46, i32 0, i32 6
  %48 = load %struct.omap_gem_object*, %struct.omap_gem_object** %47, align 8
  %49 = call i32 @kfree(%struct.omap_gem_object* %48)
  br label %53

50:                                               ; preds = %38
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %52 = call i32 @omap_gem_detach_pages(%struct.drm_gem_object* %51)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %56 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @OMAP_BO_MEM_DMA_API, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %66 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %69 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %72 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dma_free_wc(i32 %64, i32 %67, i64 %70, i32 %73)
  br label %98

75:                                               ; preds = %54
  %76 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %77 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %82 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @vunmap(i64 %83)
  br label %97

85:                                               ; preds = %75
  %86 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %87 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %92 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %93 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  br label %97

97:                                               ; preds = %96, %80
  br label %98

98:                                               ; preds = %97, %61
  %99 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %100 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %99, i32 0, i32 2
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %103 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %102)
  %104 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %105 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %104, i32 0, i32 2
  %106 = call i32 @mutex_destroy(i32* %105)
  %107 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %108 = call i32 @kfree(%struct.omap_gem_object* %107)
  ret void
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @omap_gem_evict(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.omap_gem_object*) #1

declare dso_local i32 @omap_gem_detach_pages(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_free_wc(i32, i32, i64, i32) #1

declare dso_local i32 @vunmap(i64) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
