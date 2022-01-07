; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nv04_gart_manager_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nv04_gart_manager_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_place = type { i32 }
%struct.ttm_mem_reg = type { i32, i32, i32* }
%struct.nouveau_bo = type { i32, i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_mem = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PTES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)* @nv04_gart_manager_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_gart_manager_new(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_place* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_place*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_bo*, align 8
  %11 = alloca %struct.nouveau_drm*, align 8
  %12 = alloca %struct.nouveau_mem*, align 8
  %13 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_place* %2, %struct.ttm_place** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %15 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %14)
  store %struct.nouveau_bo* %15, %struct.nouveau_bo** %10, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nouveau_drm* @nouveau_bdev(i32 %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %11, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 0
  %22 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %23 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %26 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %29 = call i32 @nouveau_mem_new(i32* %21, i32 %24, i32 %27, %struct.ttm_mem_reg* %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %31 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %30)
  store %struct.nouveau_mem* %31, %struct.nouveau_mem** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %78

36:                                               ; preds = %4
  %37 = load %struct.nouveau_mem*, %struct.nouveau_mem** %12, align 8
  %38 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* @PTES, align 4
  %43 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.nouveau_mem*, %struct.nouveau_mem** %12, align 8
  %49 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = call i32 @nvif_vmm_get(i32* %41, i32 %42, i32 0, i32 12, i32 0, i32 %47, %struct.TYPE_6__* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %36
  %56 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %57 = call i32 @nouveau_mem_del(%struct.ttm_mem_reg* %56)
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %64 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  store i32 0, i32* %5, align 4
  br label %78

65:                                               ; preds = %55
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %78

67:                                               ; preds = %36
  %68 = load %struct.nouveau_mem*, %struct.nouveau_mem** %12, align 8
  %69 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %77 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %67, %65, %62, %34
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @nouveau_mem_new(i32*, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg*) #1

declare dso_local i32 @nvif_vmm_get(i32*, i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @nouveau_mem_del(%struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
