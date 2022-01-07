; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.armada_private* }
%struct.armada_private = type { i32 }
%struct.armada_gem_object = type { %struct.TYPE_6__, i64, i64, %struct.armada_gem_object*, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"release obj %p\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @armada_gem_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.armada_gem_object*, align 8
  %4 = alloca %struct.armada_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %7 = call %struct.armada_gem_object* @drm_to_armada_gem(%struct.drm_gem_object* %6)
  store %struct.armada_gem_object* %7, %struct.armada_gem_object** %3, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %9 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.armada_private*, %struct.armada_private** %11, align 8
  store %struct.armada_private* %12, %struct.armada_private** %4, align 8
  %13 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %14 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.armada_gem_object* %13)
  %15 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %16 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %15, i32 0, i32 0
  %17 = call i32 @drm_gem_free_mmap_offset(%struct.TYPE_6__* %16)
  %18 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %19 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %18, i32 0, i32 0
  %20 = call i32 @might_lock(i32* %19)
  %21 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %27 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @get_order(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %32 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @__free_pages(i64 %33, i32 %34)
  br label %67

36:                                               ; preds = %1
  %37 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %38 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %37, i32 0, i32 3
  %39 = load %struct.armada_gem_object*, %struct.armada_gem_object** %38, align 8
  %40 = icmp ne %struct.armada_gem_object* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %43 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %45, i32 0, i32 3
  %47 = load %struct.armada_gem_object*, %struct.armada_gem_object** %46, align 8
  %48 = call i32 @drm_mm_remove_node(%struct.armada_gem_object* %47)
  %49 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %50 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %53 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %52, i32 0, i32 3
  %54 = load %struct.armada_gem_object*, %struct.armada_gem_object** %53, align 8
  %55 = call i32 @kfree(%struct.armada_gem_object* %54)
  %56 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %57 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %62 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @iounmap(i64 %63)
  br label %65

65:                                               ; preds = %60, %41
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66, %25
  %68 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %69 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %75 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %80 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %84 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @DMA_TO_DEVICE, align 4
  %87 = call i32 @dma_buf_unmap_attachment(i64 %82, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %73
  %89 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %90 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %89, i32 0, i32 0
  %91 = call i32 @drm_prime_gem_destroy(%struct.TYPE_6__* %90, i32* null)
  br label %92

92:                                               ; preds = %88, %67
  %93 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %94 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %93, i32 0, i32 0
  %95 = call i32 @drm_gem_object_release(%struct.TYPE_6__* %94)
  %96 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %97 = call i32 @kfree(%struct.armada_gem_object* %96)
  ret void
}

declare dso_local %struct.armada_gem_object* @drm_to_armada_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, %struct.armada_gem_object*) #1

declare dso_local i32 @drm_gem_free_mmap_offset(%struct.TYPE_6__*) #1

declare dso_local i32 @might_lock(i32*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @__free_pages(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.armada_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.armada_gem_object*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @dma_buf_unmap_attachment(i64, i64, i32) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
