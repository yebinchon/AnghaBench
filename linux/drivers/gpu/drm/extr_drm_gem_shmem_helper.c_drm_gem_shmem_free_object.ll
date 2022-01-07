; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_gem_shmem_object = type { i32, i32, i32, i64, %struct.drm_gem_shmem_object*, i32, i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_shmem_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_gem_shmem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %4)
  store %struct.drm_gem_shmem_object* %5, %struct.drm_gem_shmem_object** %3, align 8
  %6 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %16 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %20 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %21 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %20, i32 0, i32 4
  %22 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %21, align 8
  %23 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %19, %struct.drm_gem_shmem_object* %22)
  %24 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %25 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @kvfree(i64 %26)
  br label %68

28:                                               ; preds = %1
  %29 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %30 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %29, i32 0, i32 4
  %31 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %30, align 8
  %32 = icmp ne %struct.drm_gem_shmem_object* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %35 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %40 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %39, i32 0, i32 4
  %41 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %40, align 8
  %42 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %45 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %44, i32 0, i32 4
  %46 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %45, align 8
  %47 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %50 = call i32 @dma_unmap_sg(i32 %38, i32 %43, i32 %48, i32 %49)
  %51 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %52 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %51, i32 0, i32 4
  %53 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %52, align 8
  %54 = call i32 @sg_free_table(%struct.drm_gem_shmem_object* %53)
  %55 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %56 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %55, i32 0, i32 4
  %57 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %56, align 8
  %58 = call i32 @kfree(%struct.drm_gem_shmem_object* %57)
  br label %59

59:                                               ; preds = %33, %28
  %60 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %61 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %66 = call i32 @drm_gem_shmem_put_pages(%struct.drm_gem_shmem_object* %65)
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %14
  %69 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %70 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @WARN_ON(i32 %71)
  %73 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %74 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %73)
  %75 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %76 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %75, i32 0, i32 1
  %77 = call i32 @mutex_destroy(i32* %76)
  %78 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %79 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %78, i32 0, i32 0
  %80 = call i32 @mutex_destroy(i32* %79)
  %81 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %82 = call i32 @kfree(%struct.drm_gem_shmem_object* %81)
  ret void
}

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, %struct.drm_gem_shmem_object*) #1

declare dso_local i32 @kvfree(i64) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.drm_gem_shmem_object*) #1

declare dso_local i32 @kfree(%struct.drm_gem_shmem_object*) #1

declare dso_local i32 @drm_gem_shmem_put_pages(%struct.drm_gem_shmem_object*) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
