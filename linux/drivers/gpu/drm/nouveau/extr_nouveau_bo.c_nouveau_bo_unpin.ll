; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bo_unpin(%struct.nouveau_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %3, align 8
  %8 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_drm* @nouveau_bdev(i32 %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %4, align 8
  %13 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %13, i32 0, i32 1
  store %struct.ttm_buffer_object* %14, %struct.ttm_buffer_object** %5, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %16 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %15, i32 0, i32 0, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %72

33:                                               ; preds = %21
  %34 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %36 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %34, i32 %38, i32 0)
  %40 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %41 = call i32 @nouveau_bo_validate(%struct.nouveau_bo* %40, i32 0, i32 0)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %33
  %45 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %46 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %69 [
    i32 128, label %49
    i32 129, label %59
  ]

49:                                               ; preds = %44
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %55 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %70

59:                                               ; preds = %44
  %60 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %61 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %65 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %70

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69, %59, %49
  br label %71

71:                                               ; preds = %70, %33
  br label %72

72:                                               ; preds = %71, %32
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %74 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %19
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @nouveau_bo_validate(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
