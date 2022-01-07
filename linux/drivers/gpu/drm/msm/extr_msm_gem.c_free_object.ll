; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_object = type { i32, i32, i64, i64, i32, %struct.drm_gem_object }
%struct.drm_gem_object = type { %struct.TYPE_2__*, %struct.drm_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gem_object*)* @free_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_object(%struct.msm_gem_object* %0) #0 {
  %2 = alloca %struct.msm_gem_object*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.msm_gem_object* %0, %struct.msm_gem_object** %2, align 8
  %5 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %6 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %5, i32 0, i32 5
  store %struct.drm_gem_object* %6, %struct.drm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %18 = call i32 @is_active(%struct.msm_gem_object* %17)
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %21 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %20, i32 0, i32 4
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %24 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %27 = call i32 @put_iova(%struct.drm_gem_object* %26)
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %29 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %1
  %33 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %34 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %39 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %44 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dma_buf_vunmap(i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %37, %32
  %48 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %49 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %54 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @kvfree(i64 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %59 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %60 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %58, i32 %61)
  br label %68

63:                                               ; preds = %1
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %65 = call i32 @msm_gem_vunmap_locked(%struct.drm_gem_object* %64)
  %66 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %67 = call i32 @put_pages(%struct.drm_gem_object* %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %70 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %69)
  %71 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %72 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %75 = call i32 @kfree(%struct.msm_gem_object* %74)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @is_active(%struct.msm_gem_object*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @put_iova(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_buf_vunmap(i32, i64) #1

declare dso_local i32 @kvfree(i64) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @msm_gem_vunmap_locked(%struct.drm_gem_object*) #1

declare dso_local i32 @put_pages(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.msm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
