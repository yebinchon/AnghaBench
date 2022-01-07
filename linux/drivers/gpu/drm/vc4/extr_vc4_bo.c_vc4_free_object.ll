; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i64, i64, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.vc4_bo = type { i64, i32, %struct.TYPE_5__, i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@VC4_MADV_DONTNEED = common dso_local global i64 0, align 8
@__VC4_MADV_NOTSUPP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@VC4_BO_TYPE_KERNEL_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_bo*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 3
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %10)
  store %struct.vc4_dev* %11, %struct.vc4_dev** %4, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %13 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %12)
  store %struct.vc4_bo* %13, %struct.vc4_bo** %5, align 8
  %14 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %15 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %14, i32 0, i32 8
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %18 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VC4_MADV_DONTNEED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %24 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %23, i32 0, i32 6
  %25 = call i32 @refcount_read(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %29 = call i32 @vc4_bo_remove_from_purgeable_pool(%struct.vc4_bo* %28)
  br label %30

30:                                               ; preds = %27, %22, %1
  %31 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %32 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %31, i32 0, i32 8
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %35 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %38 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %43 = call i32 @vc4_bo_destroy(%struct.vc4_bo* %42)
  br label %125

44:                                               ; preds = %30
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %51 = call i32 @vc4_bo_destroy(%struct.vc4_bo* %50)
  br label %125

52:                                               ; preds = %44
  %53 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %54 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %60 = call i32 @vc4_bo_destroy(%struct.vc4_bo* %59)
  br label %125

61:                                               ; preds = %52
  %62 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %63 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %64 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.list_head* @vc4_get_cache_list_for_size(%struct.drm_device* %62, i32 %65)
  store %struct.list_head* %66, %struct.list_head** %6, align 8
  %67 = load %struct.list_head*, %struct.list_head** %6, align 8
  %68 = icmp ne %struct.list_head* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %71 = call i32 @vc4_bo_destroy(%struct.vc4_bo* %70)
  br label %125

72:                                               ; preds = %61
  %73 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %74 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %73, i32 0, i32 7
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %79 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %78, i32 0, i32 7
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @kfree(%struct.TYPE_6__* %82)
  %84 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %85 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %84, i32 0, i32 7
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @kfree(%struct.TYPE_6__* %88)
  %90 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %91 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %90, i32 0, i32 7
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = call i32 @kfree(%struct.TYPE_6__* %92)
  %94 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %95 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %94, i32 0, i32 7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %95, align 8
  br label %96

96:                                               ; preds = %77, %72
  %97 = load i64, i64* @__VC4_MADV_NOTSUPP, align 8
  %98 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %99 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %101 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %100, i32 0, i32 6
  %102 = call i32 @refcount_set(i32* %101, i32 0)
  %103 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %104 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %103, i32 0, i32 1
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* @jiffies, align 4
  %106 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %107 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %109 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %108, i32 0, i32 4
  %110 = load %struct.list_head*, %struct.list_head** %6, align 8
  %111 = call i32 @list_add(i32* %109, %struct.list_head* %110)
  %112 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %113 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %112, i32 0, i32 3
  %114 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %115 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i32 @list_add(i32* %113, %struct.list_head* %116)
  %118 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %119 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* @VC4_BO_TYPE_KERNEL_CACHE, align 4
  %122 = call i32 @vc4_bo_set_label(i32* %120, i32 %121)
  %123 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %124 = call i32 @vc4_bo_cache_free_old(%struct.drm_device* %123)
  br label %125

125:                                              ; preds = %96, %69, %58, %49, %41
  %126 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %127 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @vc4_bo_remove_from_purgeable_pool(%struct.vc4_bo*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vc4_bo_destroy(%struct.vc4_bo*) #1

declare dso_local %struct.list_head* @vc4_get_cache_list_for_size(%struct.drm_device*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @vc4_bo_set_label(i32*, i32) #1

declare dso_local i32 @vc4_bo_cache_free_old(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
