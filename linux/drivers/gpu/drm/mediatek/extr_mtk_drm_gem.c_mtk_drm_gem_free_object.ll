; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { i32 }
%struct.mtk_drm_gem_obj = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_drm_gem_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.mtk_drm_gem_obj*, align 8
  %4 = alloca %struct.mtk_drm_private*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %6 = call %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object* %5)
  store %struct.mtk_drm_gem_obj* %6, %struct.mtk_drm_gem_obj** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %10, align 8
  store %struct.mtk_drm_private* %11, %struct.mtk_drm_private** %4, align 8
  %12 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %18 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %17, i64 %20)
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %27 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %3, align 8
  %36 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_attrs(i32 %25, i32 %28, i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %22, %16
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %41 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %40)
  %42 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %3, align 8
  %43 = call i32 @kfree(%struct.mtk_drm_gem_obj* %42)
  ret void
}

declare dso_local %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, i64) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.mtk_drm_gem_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
