; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_gem_cma_object = type { i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_cma_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_gem_cma_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = call %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object* %4)
  store %struct.drm_gem_cma_object* %5, %struct.drm_gem_cma_object** %3, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %12 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %17 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %22 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_buf_vunmap(i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %15, %10
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %27 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %28 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %26, i32 %29)
  br label %54

31:                                               ; preds = %1
  %32 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %33 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %38 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %43 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %47 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %50 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_free_wc(i32 %41, i32 %45, i64 %48, i32 %51)
  br label %53

53:                                               ; preds = %36, %31
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %56 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %55)
  %57 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %58 = call i32 @kfree(%struct.drm_gem_cma_object* %57)
  ret void
}

declare dso_local %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_buf_vunmap(i32, i64) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @dma_free_wc(i32, i32, i64, i32) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.drm_gem_cma_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
